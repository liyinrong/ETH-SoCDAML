/*
-- Benchmark: heap sort
-- [based on "Doug's shootout" http://www.bagley.org/~doug]
--
-- Copyright (c) 2014 Synopsys, Inc. This processor model and the associated
-- documentation are proprietary to Synopsys, Inc.  This model may only be
-- used in accordance with the terms and conditions of a written license 
-- agreement with Synopsys, Inc.  All other use, reproduction, or distribution 
-- of this model are strictly prohibited.
*/


#define N 10

typedef int Data;
typedef Data Vector[N + 1];

Vector X = { 11, 14, 12, 10, 19, 18, 16, 13, 15, 17, 20 };

void heap_sort(Vector X)
{
    int i, j;
    int ir = N;
    int l = (N >> 1) + 1;
    Data xx;

    for (;;) {
        if (l > 1) {
            xx = X[--l];
        } else {
            xx = X[ir];
            X[ir] = X[1];
            if (--ir == 1) {
                X[1] = xx;
                return;
            }
        }
        i = l;
        j = l << 1;
        while (j <= ir) {
            if (j < ir && X[j] < X[j + 1]) ++j;
            if (xx < X[j]) {
                X[i] = X[j];
                j += (i = j);
            } else {
                j = ir + 1;
            }
        }
        X[i] = xx;
    }
}

int main()
{
    chess_message("// heap_sort");
    heap_sort(X);
    chess_message("// sorted:");
    for (int i = 0; i < N+1 ; i++) chess_report(X[i]);
    chess_exit(0);
    return 0;
}
