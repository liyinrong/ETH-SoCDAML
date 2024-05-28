/*
-- Test of lmul intrinsic.
--
-- Copyright (c) 2014-2016 Synopsys, Inc. This Synopsys processor model 
-- captures an ASIP Designer Design Technique. The model and all associated 
-- documentation are proprietary to Synopsys, Inc. and may only be used 
-- pursuant to the terms and conditions of a written license agreement with 
-- Synopsys, Inc.  All other use, reproduction, modification, or distribution 
-- of the Synopsys processor model or the associated  documentation is 
-- strictly prohibited. 
*/



#define _INT_ long
#define _I_


//-----------------------------------------------------------------------------

#define X0A 0x0aaa
#define X7F 0x7fff
#define X80 0x8000


int main()
{
    short a, b;

    
    a = 2;	b = 8;		chess_report( lmul(a,b)) ;
    a = -2;	b = 8;		chess_report( lmul(a,b)) ;
    a = -2;	b = -8;		chess_report( lmul(a,b)) ;

    a = X0A;	b = 0;		chess_report( lmul(a,b)) ;
    a = X0A;	b = 1;		chess_report( lmul(a,b)) ;
    a = X0A;	b = 3;		chess_report( lmul(a,b)) ;
    a = X0A;	b = -5;		chess_report( lmul(a,b)) ;
    a = X0A;	b = 15;		chess_report( lmul(a,b)) ;


    a = -X0A;	b = 0;		chess_report( lmul(a,b)) ;
    a = -X0A;	b = 1;		chess_report( lmul(a,b)) ;
    a = -X0A;	b = 3;		chess_report( lmul(a,b)) ;
    a = -X0A;	b = 15;		chess_report( lmul(a,b)) ;

    a = X7F;	b = 0;		chess_report( lmul(a,b)) ;
    a = X7F;	b = 1;		chess_report( lmul(a,b)) ;
    a = X7F;	b = 3;		chess_report( lmul(a,b)) ;
    a = X7F;	b = 15;		chess_report( lmul(a,b)) ;

    a = -X7F;	b = 0;		chess_report( lmul(a,b)) ;
    a = -X7F;	b = 1;		chess_report( lmul(a,b)) ;
    a = -X7F;	b = 3;		chess_report( lmul(a,b)) ;
    a = -X7F;	b = 15;		chess_report( lmul(a,b)) ;

    a = X80;	b = 0;		chess_report( lmul(a,b)) ;
    a = X80;	b = 1;		chess_report( lmul(a,b)) ;
    a = X80;	b = 3;		chess_report( lmul(a,b)) ;
    a = X80;	b = 15;		chess_report( lmul(a,b)) ;

    a = 0;	b = -1;		chess_report( lmul(a,b)) ;
    a = 1;	b = -1;		chess_report( lmul(a,b)) ;
    a = -1;	b = -1;		chess_report( lmul(a,b)) ;
    a = 15;	b = -1;		chess_report( lmul(a,b)) ;
    a = X0A;	b = -1;		chess_report( lmul(a,b)) ;
    a = -X0A;	b = -1;		chess_report( lmul(a,b)) ;
    a = X7F;	b = -1;		chess_report( lmul(a,b)) ;
    a = -X7F;	b = -1;		chess_report( lmul(a,b)) ;
    a = X80;	b = -1;		chess_report( lmul(a,b)) ;

    a = 0;	b = X7F;	chess_report( lmul(a,b)) ;
    a = 1;	b = X7F;	chess_report( lmul(a,b)) ;
    a = -1;	b = X7F;	chess_report( lmul(a,b)) ;
    a = 15;	b = X7F;	chess_report( lmul(a,b)) ;
    a = X0A;	b = X7F;	chess_report( lmul(a,b)) ;
    a = -X0A;	b = X7F;	chess_report( lmul(a,b)) ;
    a = X7F;	b = X7F;	chess_report( lmul(a,b)) ;
    a = -X7F;	b = X7F;	chess_report( lmul(a,b)) ;
    a = X80;	b = X7F;	chess_report( lmul(a,b)) ;

    a = 0;	b = -X7F;	chess_report( lmul(a,b)) ;
    a = 1;	b = -X7F;	chess_report( lmul(a,b)) ;
    a = -1;	b = -X7F;	chess_report( lmul(a,b)) ;
    a = 15;	b = -X7F;	chess_report( lmul(a,b)) ;
    a = X0A;	b = -X7F;	chess_report( lmul(a,b)) ;
    a = -X0A;	b = -X7F;	chess_report( lmul(a,b)) ;
    a = X7F;	b = -X7F;	chess_report( lmul(a,b)) ;
    a = -X7F;	b = -X7F;	chess_report( lmul(a,b)) ;
    a = X80;	b = -X7F;	chess_report( lmul(a,b)) ;

    a = 0;	b = X80;	chess_report( lmul(a,b)) ;
    a = 1;	b = X80;	chess_report( lmul(a,b)) ;
    a = -1;	b = X80;	chess_report( lmul(a,b)) ;
    a = 15;	b = X80;	chess_report( lmul(a,b)) ;
    a = X0A;	b = X80;	chess_report( lmul(a,b)) ;
    a = -X0A;	b = X80;	chess_report( lmul(a,b)) ;
    a = X7F;	b = X80;	chess_report( lmul(a,b)) ;
    a = -X7F;	b = X80;	chess_report( lmul(a,b)) ;
    a = X80;	b = X80;	chess_report( lmul(a,b)) ;
    return 0;
}
