/*
-- Test conditional expressions (basic jump instructions).
--
-- Copyright (c) 2014 Synopsys, Inc. This processor model and the associated
-- documentation are proprietary to Synopsys, Inc.  This model may only be
-- used in accordance with the terms and conditions of a written license 
-- agreement with Synopsys, Inc.  All other use, reproduction, or distribution 
-- of this model are strictly prohibited.
*/



int greater(int a, int b)
{
    return a > b ? a + b : 3 * a;
}


int smaller(int a, int b)
{
    return a <= b ? a & b : a | b;
}


int main()
{
    chess_report( greater(11,44) );
    chess_report( greater(55,22) );
    chess_report( smaller(123,456) );
    chess_report( smaller(1024,255) );

    chess_exit(0);
    return 0;
}

