/*
-- Test: chess_unroll and chess_flatten pragmas
--
-- Copyright (c) 2014 Synopsys, Inc. This processor model and the associated
-- documentation are proprietary to Synopsys, Inc.  This model may only be
-- used in accordance with the terms and conditions of a written license 
-- agreement with Synopsys, Inc.  All other use, reproduction, or distribution 
-- of this model are strictly prohibited.
*/


#define M 11
#define N 5

int test_chess_nounroll(int n)
{
    chess_message("// test_chess_nounroll(" << n << ')');
    int x = 0;
    for (int i = 0; i < n; i++)
        for (int j = 0; j < M; j++) // no unroll
            x += j;
    return x;
}

int test_chess_unroll(int n)
{
    chess_message("// test_chess_unroll(" << n << ')');
    int x = 0;
    for (int i = 0; i < n; i++)
        for (int j = 0; j < M; j++) chess_unroll_loop(3) chess_unroll_loop_preamble  // preamble of M%3=2
            x += j;
    return x;
}

int test_chess_unroll_2(int n2)
{
    chess_message("// test_chess_unroll_2(" << n2 << ')');
    int x = 0;
    for (int j = 0; j < n2; j++) chess_unroll_loop(2)  // no preamble - ! n%2
        x += j;
    return x;
}

int test_chess_flatten(int n)
{
    chess_message("// test_chess_flatten(" << n << ')');
    int x = 0;
    for (int i = 0; i < n; i++)
        for (int j = 0; j < N; j++) chess_flatten_loop
            x += j;
    return x;
}

int main()
{
    for (int n = 0; n <= N; n++) {
        chess_report(test_chess_nounroll(n));
        chess_report(test_chess_unroll(n));
        chess_report(test_chess_unroll_2(n * 2));
        chess_report(test_chess_flatten(n));
    }
    chess_exit(0);
    return 0;
}
