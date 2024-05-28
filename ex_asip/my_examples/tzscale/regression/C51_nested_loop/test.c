/*
-- Test nested loops.
-- [based on "Doug's shootout" http://www.bagley.org/~doug]
--
-- Copyright (c) 2014 Synopsys, Inc. This processor model and the associated
-- documentation are proprietary to Synopsys, Inc.  This model may only be
-- used in accordance with the terms and conditions of a written license 
-- agreement with Synopsys, Inc.  All other use, reproduction, or distribution 
-- of this model are strictly prohibited.
*/


#define N 4

int nested_loop(int n)
{
    chess_message("// nested_loop(" << n << ')');
    int a, b, c, d, e, f, x = 1000;
    for (a = 0; a < n; a++)
        for (b = 0; b < n; b++)
            for (c = 0; c < n; c++)
                for (d = 0; d < n; d++)
                    for (e = 0; e < n; e++)
                        for (f = 0; f < n; f++)
                            x++;
    return x;
}

int main()
{
    for (int n = 0; n <= N; n++)
        chess_report(nested_loop(n));
    chess_exit(0);
    return 0;
}
