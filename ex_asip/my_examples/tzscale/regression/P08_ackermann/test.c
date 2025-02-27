/*
-- Benchmark: Ackermann function (deep/non-primitive recursion)
-- [based on "Doug's shootout" http://www.bagley.org/~doug]
--
-- Copyright (c) 2014 Synopsys, Inc. This processor model and the associated
-- documentation are proprietary to Synopsys, Inc.  This model may only be
-- used in accordance with the terms and conditions of a written license 
-- agreement with Synopsys, Inc.  All other use, reproduction, or distribution 
-- of this model are strictly prohibited.
*/


//#define NEED_ENVELOPE   // for pDSP2

#ifndef M
#define M 3
#endif
#ifndef N
#define N 4
#endif

int ack(int m, int n)
	property(loop_free)
#ifdef NEED_ENVELOPE
	property(envelope)
#endif
{
    return m ? ack(m - 1, n ? ack(m, n - 1)
                            : 1)
             : n + 1;
}

int main()
{
    for (int m = 0; m <= M; ++m) {
        for (int n = 0; n <= N; ++n) {
            chess_message("// ack(" << m << ", " << n << ')');
            chess_report(ack(m, n));
        }
    }
    chess_exit(0);
    return 0;
}
