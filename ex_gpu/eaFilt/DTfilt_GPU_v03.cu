__global__
void transposeKernel(float * __restrict__ inp, float * __restrict__ outp, int inH, int inW) {
  int y = blockIdx.y * blockDim.y + threadIdx.y;
  if(y >= inH) 
    return;
  int c = threadIdx.x;
  if(c >= numCh) 
    return;
  //for(int y = 0; y < inH; y++) {
  for(int x = 0; x < inW; x++) {
    //for(int c = 0; c < numCh; c++) {
      outp[(x*inH + y)*numCh + c] = inp[(y*inW + x)*numCh + c];
    //}
  }
  //}
}

void transpose(float *inp, float *outp, int inH, int inW) {
  dim3 threads(numCh, 128);
  dim3 grid(1, (inH-1)/threads.y + 1);
  transposeKernel<<<grid, threads>>>(inp, outp, inH, inW);
}

__global__
void recursiveFiltHKernel(const float * __restrict__ dHoriz, float * __restrict__ imData, int h, int w, float sigma) {
  float a = exp(-sqrt(2.0f) / sigma); // feedback coefficient
  
  int x = blockIdx.y * blockDim.y + threadIdx.y;
  if(x >= w)
    return;
  int c = threadIdx.x;
  if(c >= numCh)
    return;

  //filter top to down
  for(int y = 0; y < h-1; y++) {
    float coef = pow(a,dHoriz[x*(h-1) + y]);
    //for(int c = 0; c < numCh; c++) {
      imData[((y+1)*w + x)*numCh + c] += coef * (imData[(y*w + x)*numCh + c] - imData[((y+1)*w + x)*numCh + c]); 
    //}
  }
  //filter down to top
  for(int y = h-2; y >= 0; y--) {
    float coef = pow(a,dHoriz[x*(h-1) + y]);
    //for(int c = 0; c < numCh; c++) {
      imData[(y*w + x)*numCh + c] += coef * (imData[((y+1)*w + x)*numCh + c] - imData[(y*w + x)*numCh + c]);
    //}
  }
}

void recursiveFiltH(const float * dHoriz, float * imData, int h, int w, float sigma) {
  dim3 threads(numCh, 128); 
  dim3 grid(1, (w-1)/threads.y + 1);
  recursiveFiltHKernel<<<grid, threads>>>(dHoriz, imData, h, w, sigma);
}


GpuMat *distH_d = 0, *distVT_d = 0, *img_d = 0, *imRes_d = 0, *imResT_d = 0;

void computeDomainTransformFiltering(Mat &img, Mat &imRes, float sigma_s, float sigma_r, int numIter) {

  Size s = img.size();
  Mat imgT(img.t());
  Mat distH(s.height, s.width-1, CV_32FC3);
  Mat distVT(s.width, s.height-1, CV_32FC3);

  //allocate memory on GPU
  if(distH_d == 0) {
	//allocate memory on first run
    distH_d = new GpuMat();
    distVT_d = new GpuMat();
    img_d = new GpuMat();
    imRes_d = new GpuMat();
    imResT_d = new GpuMat();
    createContinuous(distH.size(), CV_32FC3, *distH_d);
    createContinuous(distVT.size(), CV_32FC3, *distVT_d);
    createContinuous(img.size(), CV_32FC3, *img_d);
    createContinuous(imRes.size(), CV_32FC3, *imRes_d);
    createContinuous(imRes.t().size(), CV_32FC3, *imResT_d);
  }

  // 1)  generate distance images
  computeDistanceH((float*)distH.data, (float*)img.data, s.height, s.width, sigma_s, sigma_r);
  computeDistanceH((float*)distVT.data, (float*)imgT.data, s.width, s.height, sigma_s, sigma_r);

  //copy data to GPU
  distH_d->upload(distH);
  distVT_d->upload(distVT);
  img_d->upload(img);
  imRes_d->upload(imRes);

  // 2) iterate filter
  for(int i = 0; i < numIter; i++) {
    // determine sigma (eq. 14)
    float sigma_H_i = sigma_s * sqrt(3) * pow(2, numIter - (i + 1)) / sqrt(pow(4, numIter) - 1);

    // filter horizontal
    transpose((float *)imRes_d->data, (float *)imResT_d->data, s.height, s.width);
    recursiveFiltH((float*)distH_d->data, (float *)imResT_d->data, s.width, s.height, sigma_H_i);
    // filter vertical
    transpose((float *)imResT_d->data, (float *)imRes_d->data, s.width, s.height);
    recursiveFiltH((float *)distVT_d->data, (float *)imRes_d->data, s.height, s.width, sigma_H_i);
  }
  cudaDeviceSynchronize();
  imRes_d->download(imRes);
}
