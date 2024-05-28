#include "stdio.h"


int dotproduct(short A[], short B[], int len)
{
    int s = 0;
    for (int i = 0 ; i < len; i++) {
        s = s + A[i]*B[i];
    }
    return s;
}


#define N 10

short    my_array[N]        = {-15, -20, 30, 40, 60, -100, 35, 45, 105, 80};

void main()
{
  long cycles_before = chess_cycle_count();
  int sumdotp = dotproduct(my_array, my_array, N);
  long cycles_after = chess_cycle_count();
  
  printf("The result is %d\nCycle executed: %ld\n", sumdotp, cycles_after - cycles_before);

}