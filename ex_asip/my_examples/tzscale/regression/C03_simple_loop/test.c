/*
-- Test simple loop with constant or variable count.
--
-- Copyright (c) 2014 Synopsys, Inc. This processor model and the associated
-- documentation are proprietary to Synopsys, Inc.  This model may only be
-- used in accordance with the terms and conditions of a written license 
-- agreement with Synopsys, Inc.  All other use, reproduction, or distribution 
-- of this model are strictly prohibited.
*/



int do_5(int in)
{
    chess_message( "// do_5(" << in << ')');

    for (int i = 0; i < 5; i++)
	in += 3;
    return in;
}


int do_n(int n)
{
    chess_message( "// do_n(" << n << ')' );

    int in = 10;
    for (int i = 0; i < n; i++)
	in += 10;
    return in;
}


int do_x(int in, int x)
{
    chess_message( "// do_x(" << in << ')');

    for (int i = 0; i < 5; i++)
	in += (x + 3);
    return in;
}



int main()
{
    int x = 0;
    for (int n = 0; n < 5; n++)
	chess_report( x += do_5(n) );

    chess_report( do_n(4) );
    chess_report( do_n(8) );
    chess_report( do_n(255) );
    chess_report( do_n(260) );
    chess_report( do_n(0) );

    chess_report( do_x(100,5) );

    chess_exit(0);
    return 0;
}

