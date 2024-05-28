// include libraries
#include <stdlib.h>
#include <sys/resource.h>
#include <stdio.h>
#include <math.h>
#include <unistd.h>
#include "cuda_runtime_api.h"

__global__ void matmatmulgpu( double *a, double *b, double *c, int lda )
{

  unsigned int tid = blockIdx.x*blockDim.x + threadIdx.x;

  // assign one thread per output - row major over whole matrix
  int row = /* WHAT INDEX? */ ;
  int col = /* WHAT INDEX? */ ;
  double sum = 0.0;
  for ( int k=0; k<lda; k++ ) {
    sum += a[row*lda+k] * b[k*lda+col];
  }
  c[tid] = sum;
  return;
  
}

int main () {

  // banner
  printf (  "\n     Matrix-Matrix Multiplication\n");
  printf (    "     CPU code Ported to GPU \n");

  // define parameters 
  int n = 1024;  // matrix dimension
  
  // allocate arrays
  double *a = (double *) malloc ( n*n*sizeof(double) );
  double *b = (double *) malloc ( n*n*sizeof(double) );
  double *c = (double *) malloc ( n*n*sizeof(double) );
  
  // initialize data
  for ( int row = 0; row<n; row++ ) {
    for ( int col = 0; col<n; col++ ) {
      // data is in row-major format
      a[row*n+col] = sin( 0.01*col ) + cos( 0.013*row );
      b[row*n+col] = sin( 0.017*col ) + cos( 0.03*row );
    }
  }
	  
  // record start time - use cuda events, accurate
  cudaEvent_t t_start;
  cudaEvent_t t_end;
  cudaEventCreate (&t_start);
  cudaEventCreate (&t_end);
  cudaEventRecord (t_start,0);

  // PERFORM MULTIPLICATION
  {
  // allocate space on device;
  double * d_a;
  double * d_b;
  double * d_c;
  cudaMalloc ( &d_a, n*n*sizeof(double ));
  cudaMalloc ( &d_b, n*n*sizeof(double ));
  cudaMalloc ( &d_c, n*n*sizeof(double ));

  // copy intput data to device
  cudaMemcpy ( d_a, a, n*n*sizeof(double), cudaMemcpyHostToDevice );
  cudaMemcpy ( d_b, b, n*n*sizeof(double), cudaMemcpyHostToDevice );

  // define grid and block sizes
  unsigned int kgrid = n;
  unsigned int kblock = n;    

  // call kernel
  matmatmulgpu <<<kgrid, kblock>>> ( d_a, d_b, d_c, n );

  // copy the result back to the host
  cudaMemcpy ( c, d_c, n*n*sizeof(double), cudaMemcpyDeviceToHost );

  }

  // record end time
  cudaEventRecord (t_end,0);
  cudaEventSynchronize(t_end);
  float et;
  cudaEventElapsedTime (&et, t_start, t_end);

  // report results
  printf(  "     elapsedTime         = %4.4f seconds\n", (double)et/1000.);  // cudaEventElapsedTime is in milliseconds
  printf(  "     gigaflops achieved  = %4.4f Gflops/s\n\n\n", 2.0e-6*n*n*n/et); // 2( * and + ) *n (inner dimension)*n^2(result size)/(time in ms.)

}
