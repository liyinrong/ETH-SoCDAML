/*
-- Benchmark: Fibonacci function (deep/recurrent recursion)
-- [based on "Doug's shootout" http://www.bagley.org/~doug]
--
-- Copyright (c) 2014 Synopsys, Inc. This processor model and the associated
-- documentation are proprietary to Synopsys, Inc.  This model may only be
-- used in accordance with the terms and conditions of a written license 
-- agreement with Synopsys, Inc.  All other use, reproduction, or distribution 
-- of this model are strictly prohibited.
*/


#define N 10

#ifndef DISABLE_RECURSION
// recursive version
int fib_rec(int n)
{
    return n < 2 ? 1 : fib_rec(n - 2) + fib_rec(n - 1);
}
#endif

// iterative version
int fib_it(int n)
{
    int f1 = 1;
    int f2 = 0;
    for (int k = 1; k <= n; ++k) {
        int t = f1;
        f1 = f1 + f2;
        f2 = t;
    }
    return f1;
}

int main()
{
    for (int n = 0; n <= N; ++n) {
        chess_message("// fib(" << n << ')');
#ifndef DISABLE_RECURSION
        chess_report(fib_rec(n));
#endif
        chess_report(fib_it (n));
    }
    chess_exit(0);
    return 0;
}
