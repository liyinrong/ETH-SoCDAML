#include "stdio.h"


int dotproduct(short A[], short B[], int len)
{
    int s = 0;
    for (int i = 0 ; i < len; i++) {
        s = s + A[i]*B[i];
    }
    return s;
}

int dotproduc_vect(v2short A[], v2short B[], int len)
{
    int s = 0;
    v2short a,b;
    for (int i = 0 ; i < len; i++) {
        s = s + A[i]*B[i];
    }
    return s;
}

#define N 10

short    my_array[N]        = {-15, -20, 30, 40, 60, -100, 35, 45, 105, 80};
v2short* vec_ptr;

void main()
{
  long cycles_before = chess_cycle_count();
  vec_ptr = (v2short *)&my_array[0];
  int sumdotp = dotproduc_vect(vec_ptr, vec_ptr, N>>1);
  long cycles_after = chess_cycle_count();
  printf("The result is %d\nCycle executed: %ld\n", sumdotp, cycles_after - cycles_before);
}