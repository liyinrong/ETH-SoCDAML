#include "stdio.h"

const int WORD_MAX = 0x7fff;

int sum_abs_diff(int A[], int B[], int len)
{

    int i, diff, absdiff, acc;
    acc = 0;
    for(i=0;i<len;i++){
        diff    = A[i] - B[i];
        if(diff < 0)
            absdiff = 0 - diff;
        else
            absdiff = diff;

        acc+=absdiff;
    }
    return acc;
}


// Driver :

#define N 10

int arrayA[N]  = {-15, -20, 30, 40, 60, -300, 35, 45, 285, 80};
int arrayB[N]  = {-14, -21, 31, 39, 59, -299, 36, 46, 286, 81};
int gold_val   = N;


int main()
{

    long cycles_before = chess_cycle_count();

    int res = sum_abs_diff(arrayA, arrayB, N);

    long cycles_after = chess_cycle_count();

    printf("Execution time for sum_abs_diff function is %ld cycles\n",cycles_after - cycles_before);

    return 0;
}