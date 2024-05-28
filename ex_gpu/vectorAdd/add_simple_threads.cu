#include <stdio.h>
#include <math.h>

#define N  512

__global__ void add( int *a, int *b, int *c ) {
       c[threadIdx.x] = a[threadIdx.x]+b[threadIdx.x];
}

void random_ints(int *p, int n) {
	int i;
	for(i=0; i<n; i++) {
		p[i]=rand();
	}
}

int main( void ) {
    int *a, *b, *c, *d;               // host copies of a, b, c
    int *dev_a, *dev_b, *dev_c;   // device copies of a, b, c
    int size = N * sizeof( int ); // we need space for 512   									// integers
    int i;

    // allocate device copies of a, b, c
    cudaMalloc( (void**)&dev_a, size );
    cudaMalloc( (void**)&dev_b, size );
    cudaMalloc( (void**)&dev_c, size );

    a = (int*)malloc( size ); 
    b = (int*)malloc( size );
    c = (int*)malloc( size );
    d = (int*)malloc( size );

    random_ints( a, N ); 
    random_ints( b, N );

    // copy inputs to device
    cudaMemcpy( dev_a, a, size, cudaMemcpyHostToDevice );
    cudaMemcpy( dev_b, b, size, cudaMemcpyHostToDevice );

    // launch an add() kernel with N threads
    add<<< 1, N >>>( dev_a, dev_b, dev_c );

    // copy device result back to host copy of c
    cudaMemcpy( c, dev_c, size,   cudaMemcpyDeviceToHost );

    for(i=0; i<N; i++) {
      d[i]=a[i]+b[i];
      if(d[i]!=c[i]) {
        printf("error: expected %d, got %d!\n",c[i], d[i]);
        break;
      }
    }
    if(i==N) {
      printf("correct!\n");
    }    

 
    free( a ); free( b ); free( c );
    cudaFree( dev_a );
    cudaFree( dev_b );
    cudaFree( dev_c );
    return 0;
}
