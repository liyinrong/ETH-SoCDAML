/*
-- Test function call mechanism.
--
-- Copyright (c) 2014 Synopsys, Inc. This processor model and the associated
-- documentation are proprietary to Synopsys, Inc.  This model may only be
-- used in accordance with the terms and conditions of a written license 
-- agreement with Synopsys, Inc.  All other use, reproduction, or distribution 
-- of this model are strictly prohibited.
*/


int foo(int a, int b) { return a + b; }

int pass(int i) { return i; }


int main()
{
    chess_report( foo(11,44) );
    chess_report( pass(77) );

    chess_exit(0);
    return 0;
}

