/*
-- Benchmark: Test (hardware) loop with nothing but a call
--
-- Copyright (c) 2014 Synopsys, Inc. This processor model and the associated
-- documentation are proprietary to Synopsys, Inc.  This model may only be
-- used in accordance with the terms and conditions of a written license 
-- agreement with Synopsys, Inc.  All other use, reproduction, or distribution 
-- of this model are strictly prohibited.
*/


#ifdef __chess__

// default: the callee changes no registers, but specific cores
//   may override this
#ifndef CLOBBERS
#define CLOBBERS clobbers()
#endif

#else

// native: do nothing
#undef CLOBBERS
#define CLOBBERS

#endif

#define N 10

void foo() property(loop_free functional volatile) CLOBBERS
{
    static int dummy = 0;
    chess_report(dummy++);
}

int main()
{
    chess_message("// start");
    init_regs(); // Avoid that uninitialized regs are spilled as this gives ISS vs. RTL diffs

    for (int n = 0; n < N; ++n)  { foo();        }
    for (int n = 0; n < N; ++n)  { foo(); foo(); }

    chess_message("// done");
    chess_report(99);

    chess_exit(0);
    return 0;
}
