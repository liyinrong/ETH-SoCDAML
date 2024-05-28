
void recursiveFiltH(const float *dHoriz, float *imData, int h, int w, float sigma) {
  float a = exp(-sqrt(2.0f) / sigma); // feedback coefficient
  for(int y = 0; y < h; y++) { 
    //filter left to right
    for(int x = 0; x < w-1; x++) {
      float coef = pow(a,dHoriz[y*(w-1) + x]);
      for(int c = 0; c < numCh; c++) {
        imData[(y*w + x+1)*numCh + c] += coef * (imData[(y*w + x)*numCh + c] - imData[(y*w + x+1)*numCh + c]);
      }
    }
    //filter right to left
    for(int x = w-2; x >= 0; x--) {
      float coef = pow(a,dHoriz[y*(w-1) + x]);
      for(int c = 0; c < numCh; c++) {
        imData[(y*w + x)*numCh + c] += coef * (imData[(y*w + x+1)*numCh + c] - imData[(y*w + x)*numCh + c]);
      }
    }
  }
}

void computeDomainTransformFiltering(Mat &img, Mat &imRes, float sigma_s, float sigma_r, int numIter) {

  // 1) generate distance images
  Size s = img.size();
  Mat distH(s.height, s.width-1, CV_32FC3), distVT(s.width, s.height-1, CV_32FC3);
  Mat imgT(img.t());
  computeDistanceH((float*)distH.data, (float*)img.data, s.height, s.width, sigma_s, sigma_r);
  computeDistanceH((float*)distVT.data, (float*)imgT.data, s.width, s.height, sigma_s, sigma_r);
  
  // 2) iterate filter
  for(int i = 0; i < numIter; i++) {
    // determine sigma (eq. 14)
    float sigma_H_i = sigma_s * sqrt(3) * pow(2, numIter - (i + 1)) / sqrt(pow(4, numIter) - 1);
    // filter horizontal
    recursiveFiltH((float*)distH.data, (float *)imRes.data, s.height, s.width, sigma_H_i);
    // filter vertical
    imRes = Mat(imRes.t());
    recursiveFiltH((float *)distVT.data, (float *)imRes.data, s.width, s.height, sigma_H_i);
    imRes = Mat(imRes.t());
  }
}




