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

#ifdef HAS_CHAR
char           T_char[32];
unsigned char  T_uchar[32];
#endif

#ifdef HAS_SHORT
short T_shrt[32];
short T_ushrt[32];
#endif

#ifdef HAS_LONG
long   T_long[32];
long   T_ulong[32];
#endif

#ifdef HAS_LONG_LONG
long long   T_llong[32];
long long   T_ullong[32];
#endif


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

    chess_message("// store unsigned (and load back)");
    for (int i=0; i<A_N; i++) {
        T_uint[i] = A[i];
    }
    for (int i=0; i<A_N; i++) {
        chess_report(T_uint[i]);
    }

#ifdef HAS_CHAR
    chess_message("// store char (and load back)");
    for (int i=0; i<A_N; i++) {
        T_char[i] = A[i];
    }
    for (int i=0; i<A_N; i++) {
        chess_report(T_char[i]);
    }

    chess_message("// store uchar (and load back)");
    for (int i=0; i<A_N; i++) {
        T_uchar[i] = A[i];
    }
    for (int i=0; i<A_N; i++) {
        chess_report(T_uchar[i]);
    }
#endif
    
#ifdef HAS_SHORT
    chess_message("// store short (and load back)");
    for (int i=0; i<A_N; i++) {
        T_shrt[i] = A[i];
    }
    for (int i=0; i<A_N; i++) {
        chess_report(T_shrt[i]);
    }

    chess_message("// store ushort (and load back)");
    for (int i=0; i<A_N; i++) {
        T_ushrt[i] = A[i];
    }
    for (int i=0; i<A_N; i++) {
        chess_report(T_ushrt[i]);
    }
#endif
    
#ifdef HAS_LONG
    chess_message("// store long (and load back)");
    for (int i=0; i<A_N; i++) {
        T_long[i] = A[i];
    }
    for (int i=0; i<A_N; i++) {
        chess_report(T_long[i]);
    }

    chess_message("// store ulong (and load back)");
    for (int i=0; i<A_N; i++) {
        T_ulong[i] = A[i];
    }
    for (int i=0; i<A_N; i++) {
        chess_report(T_ulong[i]);
    }
#endif

#ifdef HAS_LONG_LONG
    chess_message("// store llong (and load back)");
    for (int i=0; i<A_N; i++) {
        T_llong[i] = A[i];
    }
    for (int i=0; i<A_N; i++) {
        chess_report(T_llong[i]);
    }

    chess_message("// store ullong (and load back)");
    for (int i=0; i<A_N; i++) {
        T_ullong[i] = A[i];
    }
    for (int i=0; i<A_N; i++) {
        chess_report(T_ullong[i]);
    }
#endif

    chess_exit(0);
    return 0;
}

