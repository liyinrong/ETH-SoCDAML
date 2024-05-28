/*
-- Test load/stores of byte/short/int/long/longlong
--
-- Copyright (c) 2014 Synopsys, Inc. This processor model and the associated
-- documentation are proprietary to Synopsys, Inc.  This model may only be
-- used in accordance with the terms and conditions of a written license 
-- agreement with Synopsys, Inc.  All other use, reproduction, or distribution 
-- of this model are strictly prohibited.
*/


#define INT_SVAL(A)      INT_SE(INT_##A)
#define INT_UVAL(A)      INT_ZE(INT_##A)

int A[] = { 0,1,-1,4,10,-25,-122,53,
              INT_SVAL(XCDEF), -INT_SVAL(XCDEF),
              INT_SVAL(X3210), -INT_SVAL(X3210),
              INT_SVAL(X0AAA), -INT_SVAL(X0AAA), 
              INT_SVAL(X7FFF), -INT_SVAL(X7FFF), 
              INT_SVAL(X8000),  INT_SVAL(X7FFF)-1,
              INT_SVAL(XFFFF),  INT_SVAL(XFFFF-1) };

int            T_int[32];
unsigned       T_uint[32];


int main()
{
    int A_N = sizeof(A)/sizeof(int);
    
    chess_message("// load int");
    for (int i=0; i<A_N; i++) {
        chess_report(A[i]);
    }

    chess_message("// store int (and load back)");
    for (int i=0; i<A_N; i++) {
        T_int[i] = A[i];
    }
    for (int i=0; i<A_N; i++) {
        chess_report(T_int[i]);
    }

    chess_exit(0);
    return 0;
}

