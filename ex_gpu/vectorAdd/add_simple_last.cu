#include <stdio.h>
#include <math.h>

#define N (128*256)
#define THREAD_PER_BLOCK 256

__global__ void add(int *a, int *b, int *c) {
  int index = threadIdx.x + blockIdx.x*blockDim.x;
  //if(index < N) {
    c[index] = a[index] + b[index];
    //}
}

void random_ints(int *p, int n) {
  int i;
	for(i = 0; i < n; i++) {
		p[i] = 5;//rand() % 128;
	}
}

int main( void ) {
  int *a, *b, *c, *d;               // host copies of a, b, c
  int *dev_a, *dev_b, *dev_c;   // device copies of a, b, c
  int size = N*sizeof(int); // we need space for N   									// integers
  int i;

  // allocate device copies of a, b, c
  cudaMalloc((void**)&dev_a, size);
  cudaMalloc((void**)&dev_b, size);
  cudaMalloc((void**)&dev_c, size);

  a = (int*)malloc(size); 
  b = (int*)malloc(size);
  c = (int*)malloc(size);
  d = (int*)malloc(size);

  random_ints(a, N); 
  random_ints(b, N);
  
  // copy inputs to device
  cudaMemcpy(dev_a, a, size, cudaMemcpyHostToDevice);
  cudaMemcpy(dev_b, b, size, cudaMemcpyHostToDevice);

  // launch an add() kernel with N threads
  add<<<N/THREAD_PER_BLOCK, THREAD_PER_BLOCK>>>(dev_a, dev_b, dev_c);

  // copy device result back to host copy of c
  cudaMemcpy(c, dev_c, size, cudaMemcpyDeviceToHost);

  for(i=0; i<N; i++) {
    d[i] = a[i] + b[i];
    if(d[i] != c[i]) {
      printf("error: expected %d, got %d at index %d!\n", d[i], c[i], i);
      break;
    }
  }
  if(i == N) {
    printf("correct!\n");
  }    

  free( a ); 
  free( b ); 
  free( c );
  free( d );
  cudaFree( dev_a );
  cudaFree( dev_b );
  cudaFree( dev_c );
  return 0;
}
