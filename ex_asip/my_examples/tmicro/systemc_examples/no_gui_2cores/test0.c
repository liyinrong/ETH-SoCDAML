//  file: sort.c

// Called function:  (locate maximum value in array)

#include "stdio.h"

const int WORD_MAX = 0x7fff;

int find_min_location(int A[], int start, int len)
{
    int U = WORD_MAX;
    int loc = -1;
    for (int i = start; i < len; i++) chess_loop_range(2,) {
	if (A[i] < U) {
	    U = A[i];
	    loc = i;
	}
    }
    return loc;
}

// Called function:  (sort array)

void sort(int A[], int len)
{
    for (int i = 0 ; i < len-1; i++) {
	int loc = find_min_location(A,i,len);
	int temp = A[i];
	A[i] = A[loc];
	A[loc] = temp;
    }
}

// Driver :

#define N 10

int some_array[N] = {-15, -20, 30, 40, 60, -300, 35, 45, 285, 80};


void main()
{
    printf("Unsorted values:");
    for (int i = 0; i < N; i++) printf(" %d", some_array[i]);
    printf("\n");

    long cycles_before = chess_cycle_count();

    sort(some_array, N);

    long cycles_after = chess_cycle_count();

    printf("Sorted values:");
    for (int i = 0; i < N; i++) printf(" %d", some_array[i]);
    printf("\n");

    printf("Execution time for sort function on core 0 is %ld cycles\n",cycles_after - cycles_before);
}
