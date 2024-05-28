#include <cassert>
#include <cmath>
#include <unistd.h>
#include <sys/time.h>
#include <opencv2/opencv.hpp>
#include <opencv2/core.hpp>
#include <opencv2/photo.hpp>
#include <opencv2/cudaarithm.hpp>
//#include <opencv2/gpu/gpu.hpp>
#include "profiling.h"

using namespace std;
using namespace cv;
using namespace cuda; //for opencv3, was 'gpu' in opencv2

const int numCh = 3;
void computeDistanceH(float *dHoriz, float *im, int h, int w, float sigma_s, float sigma_r);
void computeMagnitude(Mat &img, Mat &mag);
int main(int argc, char **argv);

// active implemementation
//#include "DTfilt_CPU.cu" // CPU-only version
//#include "DTfilt_GPU_v01.cu" // GPU baseline version
//#include "DTfilt_GPU_v02.cu" // with texture caches, channels parallelization
#include "DTfilt_GPU_v03.cu" // with improved memory layout
//#include "DTfilt_GPU_v04.cu" // your own ideas...

void computeDistanceH(float *dHoriz, float *im, int h, int w, float sigma_s, float sigma_r) {
  //access pattern of cv::Mat.data is: im[y][x][c] = im[(y*w + x)*numCh + c];

  // domain transform RF (recursive filtering)
  for(int y = 0; y < h; y++) {
    for(int x = 0; x < w-1; x++) {
      // compute L1 norm of horizontal derivative (1 pixel short in x direction)
      float v = 0;
      for(int c = 0; c < numCh; c++) {
        v += fabs(im[(y*w + x+1)*numCh + c] - im[(y*w + x)*numCh + c]);
      }
      // compute derivatives of domain transform
      v = v*sigma_s/sigma_r + 1;
      //v *= 0.01; //for visualization only(!)
      dHoriz[y*(w-1) + x] = v;
      // we do not compute integral, since the recursive filter uses directly the derivatives
    }
  }
}

void computeMagnitude(Mat &img, Mat &mag) {
  int h = img.rows;
  int w = img.cols;

  vector<Mat> planes;
  split(img, planes);

  Mat magXR = Mat(h, w, CV_32FC1);
  Mat magYR = Mat(h, w, CV_32FC1);

  Mat magXG = Mat(h, w, CV_32FC1);
  Mat magYG = Mat(h, w, CV_32FC1);

  Mat magXB = Mat(h, w, CV_32FC1);
  Mat magYB = Mat(h, w, CV_32FC1);

  Sobel(planes[0], magXR, CV_32FC1, 1, 0, numCh);
  Sobel(planes[0], magYR, CV_32FC1, 0, 1, numCh);

  Sobel(planes[1], magXG, CV_32FC1, 1, 0, numCh);
  Sobel(planes[1], magYG, CV_32FC1, 0, 1, numCh);

  Sobel(planes[2], magXB, CV_32FC1, 1, 0, numCh);
  Sobel(planes[2], magYB, CV_32FC1, 0, 1, numCh);

  Mat mag1 = Mat(h,w,CV_32FC1);
  Mat mag2 = Mat(h,w,CV_32FC1);
  Mat mag3 = Mat(h,w,CV_32FC1);

  cv::magnitude(magXR,magYR,mag1);
  cv::magnitude(magXG,magYG,mag2);
  cv::magnitude(magXB,magYB,mag3);

  mag = mag1 + mag2 + mag3;
  mag = 1.0f - mag;
}

int main(int argc, char **argv) {
  
  // parse arguments
  bool useCam = true;
  //bool showOutput = true, showInput = true, showDetailEnh = true, showStylized = true;
  bool showOutput = false, showInput = false, showDetailEnh = false, showStylized = true;
  bool benchmark = false;
  char *filename;
  if (argc < 2) {
    printf("missing argument: must specify mode (cam, image [path], imageNoShow [path], benchmark [path])\n");     
    exit(-1);
  }
  if(strcmp(argv[1],"cam") == 0) {
    useCam = true;
  } else if (strcmp(argv[1], "image") == 0) {
    useCam = false;
    assert(argc == 3);
    filename = argv[2];
  } else if (strcmp(argv[1], "imageNoShow") == 0) {
    useCam = false;
    showOutput = showInput = showDetailEnh = showStylized = false;
    assert(argc == 3);
    filename = argv[2];
  } else if (strcmp(argv[1], "benchmark") == 0) {
    useCam = false;
    showOutput = showInput = showDetailEnh = showStylized = false;
    assert(argc == 3);
    filename = argv[2];
    benchmark = true;
  } else {
    printf("invalid mode specified\n");
    exit(-1);
  }
  
  // get video cam
  VideoCapture *cap;
  if(useCam) {
#ifdef TX1
    cap = new VideoCapture("nvcamerasrc ! video/x-raw(memory:NVMM), width=(int)1280, height=(int)720,format=(string)I420, framerate=(fraction)24/1 ! nvvidconv flip-method=2 ! video/x-raw, format=(string)BGRx ! videoconvert ! video/x-raw, format=(string)BGR ! appsink"); //open the default camera
#else
    cap = new VideoCapture(0);
#endif
  }
  if(useCam && !cap->isOpened()) { // check if we succeeded
    cerr << "Fail to open camera" << endl;
    return -1;
  } else if (useCam) {
    cout << "opened camera" << endl;
  }

  while(true) {

    const float sigma_s = 60;
    const float sigma_r = 0.4;
    const int numIter = 10;

    // get image from camera or file
    Mat img;
    if(useCam) {
      *cap >> img; // get a new frame from camera
    } else {
      img = imread(filename);
    }
    img.convertTo(img, CV_32FC3, 1.0/255);
    Size s = img.size();
    
    // show input image
    if(showInput) {
      imshow("input", img);
    }

    // process image
    Mat imRes = img.clone();
    test_timer_t domainTransformTimer;
    const int numBenchmarkIter = benchmark ? 10 : 0;
    for(int i = 0; i < numBenchmarkIter+1; i++) {
      if(!benchmark || (benchmark && i == 1)) {
	timer_start(&domainTransformTimer);
      }
      computeDomainTransformFiltering(img, imRes, sigma_s, sigma_r, numIter);
    }
    timer_end(&domainTransformTimer);
    if(benchmark) {
      printf("execution time (domain transform filtering): %ld us\n", timer_delta(&domainTransformTimer)/numBenchmarkIter);    
    } else {
      printf("execution time (domain transform filtering): %ld us\n", timer_delta(&domainTransformTimer));
    }

    // show result image
    if(showOutput) {
      imshow("result image", imRes);
    }

    //detail enhancement
    if(showDetailEnh) {
      const float detailEnhancementFactor = 4.0f;
      Mat imDetailEnh((img-imRes)*detailEnhancementFactor + imRes);
      imshow("detail enhancement", imDetailEnh);
    }

    // stylization
    if(showStylized) {
      test_timer_t stylizationTimer;
      timer_start(&stylizationTimer);
      Mat magnitude = Mat(s.height, s.width, CV_32FC1);
      computeMagnitude(imRes,magnitude);
      Mat stylized = Mat(s.height, s.width, CV_32FC3);
      vector <Mat> temp;
      split(imRes,temp);
      for(int c = 0; c < numCh; c++) {
	cv::multiply(temp[c],magnitude,temp[c]);
      }
      merge(temp,stylized);
      timer_end(&stylizationTimer);
      printf("execution time (stylization): %ld us\n", timer_delta(&stylizationTimer));

      test_timer_t stylizationDisplayTimer;
      timer_start(&stylizationDisplayTimer);
      imshow("stylized", stylized);      
      timer_end(&stylizationDisplayTimer);
      printf("display time (stylization): %ld us\n", timer_delta(&stylizationDisplayTimer));

    }

    if(showOutput || showInput || showDetailEnh || showStylized) {
      if(!useCam) {
        waitKey();
        break;
      } else {
	test_timer_t waitKeyTimer;
	timer_start(&waitKeyTimer);
	int key = waitKey(10);
        if(key > 0 && key != 255) 
          break;
	//waitKey(100);
	timer_end(&waitKeyTimer);
	printf("display time (waitKey): %ld us\n", timer_delta(&waitKeyTimer));
      }
    } else {
      break;
    }
  } // end of main loop

  // the camera will be deinitialized automatically in VideoCapture destructor
  if(useCam) {
    cap->release();
    delete cap;
  }

  return 0;
}



