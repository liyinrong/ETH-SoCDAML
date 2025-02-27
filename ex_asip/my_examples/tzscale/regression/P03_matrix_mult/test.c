/*
-- Test matrix multiplication.
-- [based on "Doug's shootout" http://www.bagley.org/~doug]
--
-- Copyright (c) 2014 Synopsys, Inc. This processor model and the associated
-- documentation are proprietary to Synopsys, Inc.  This model may only be
-- used in accordance with the terms and conditions of a written license 
-- agreement with Synopsys, Inc.  All other use, reproduction, or distribution 
-- of this model are strictly prohibited.
*/


#define N 5

typedef int Matrix[N][N];
Matrix X, Y, Z;

void matrix_init(Matrix X)
{
    int i, j, x = 1;
    for (int i = 0; i < N; i++)
        for (int j = 0; j < N; j++)
            X[i][j] = x++;
}

void matrix_mult(Matrix X, Matrix Y, Matrix Z)
{
    chess_message("// matrix_mult Z = Y * X");
    for (int i = 0; i < N; i++) {
        for (int j = 0; j < N; j++) {
            int val = 0;
            for (int k = 0; k < N; k++) {
                val += X[i][k] * Y[k][j];
            }
            chess_message("// Z[" << i << "][" << j << ']');
            chess_report(val);
            Z[i][j] = val;
        }
    }
}

int main()
{
    matrix_init(X); chess_report(X[N - 1][N - 1]);
    matrix_init(Y); chess_report(Y[N - 1][N - 1]);

    matrix_mult(X, Y, Z);
    chess_report(Z[N - 1][N - 1]);
    chess_exit(0);
    return 0;
}
