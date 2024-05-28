/*
-- Test executing of straight line code.
-- Copyright (c) 2014 Synopsys Inc.
*/

#include "../../lib/tzscale_define.h"

#ifdef ISA_COMPRESSED
    #define nopx nop
#else
    #define nopx addi x0, x0, 0
#endif

#ifdef __chess__
inline assembly void test_nodep() clobbers(X3,X4,X5,X10)
{
    asm_begin
    asm_text
        ori x3,x0,10
	ori x4,x0,5
	nopx
	nopx
	div x5,x3,x4
	nopx
	nopx
	nopx
	nopx
	nopx
	nopx
	nopx
	ori x10,x5,0   // no hazard
.chess_report __sint
	nopx
	nopx
	nopx
    asm_end
}
#else
inline void test_nodep() 
{
    chess_message( "// test_nodep()" );
    chess_report (10/5);
}
#endif


#ifdef __chess__
inline assembly void test_raw() clobbers(X3,X4,X5,X10)
{
    asm_begin
    asm_text
        ori x3,x0,15
	ori x4,x0,5
	nopx
	nopx
	div x5,x3,x4
	ori x10,x5,0   // raw hazard
.chess_report __sint
	nopx
	nopx
	nopx
    asm_end
}
#else
inline void test_raw() 
{
    chess_message( "// test_raw()" );
    chess_report (15/5);
}
#endif

#ifdef __chess__
inline assembly void test_waw() clobbers(X3,X4,X5,X10)
{
    asm_begin
    asm_text
        ori x3,x0,15
	ori x4,x0,5
	nopx
	nopx
	div x10,x6,x7
	nopx
	ori x10,x0,123   // overwrite destination register
.chess_report __sint
	nopx
	nopx
	nopx	
    asm_end
}
#else
inline void test_waw() 
{
    chess_message( "// test_waw()" );
    chess_report (123);
}
#endif

#ifdef __chess__
inline assembly void test_indep() clobbers(X3,X4,X5,X10,X12)
{
    asm_begin
    asm_text
        ori x3,x0,10
	ori x4,x0,5
	nopx
	nopx
	div x12,x3,x4
	addi x4,x4,10  // indep
	addi x4,x4,20  // indep
	ori x10,x12,0   // raw hazard
.chess_report __sint
	nopx
        ori x10,x4,0   // report x4
.chess_report __sint
	nopx
	nopx
    asm_end
}
#else
inline void test_indep() 
{
    chess_message( "// test_indep()" );
    chess_report (10/5);
    chess_report (5+10+20);
}
#endif

#ifdef __chess__
inline assembly void test_wport() clobbers(X3,X4,X5,X6,X10)
{
    asm_begin
    asm_text
        ori x3,x0,7
	ori x4,x0,2
	ori x6,x0,10
	nopx
	nopx
	div x5,x3,x4
	addi x6,x6,1
	nopx
	nopx
	nopx
	nopx
	nopx
	nopx
	nopx
	nopx
	nopx
	div x5,x3,x4
	addi x6,x6,2
	addi x6,x6,3
	addi x6,x6,4
	addi x6,x6,5
	addi x6,x6,6
        addi x6,x6,7
        addi x6,x6,8
	ori x10,x5,0   // dependent instr before chess_report
.chess_report __sint
	ori x10,x6,0   
.chess_report __sint
	nopx
	nopx
	nopx
    asm_end
}
#else
inline void test_wport() 
{
    chess_message( "// test_wport()" );
    chess_report (7/2);
    chess_report (10+1+2+3+4+5+6+7+8);
}
#endif

#ifdef __chess__
inline assembly void test_raw2(int chess_storage(X12) a, int chess_storage(X13) b) 
                     clobbers(X5,X10)
{
    asm_begin
    asm_text
	nopx
	nopx
	nopx
	div x5,x12,x13
	ori x10,x5,0   // raw hazard
.chess_report __sint
	nopx
	nopx
	nopx	
    asm_end
}
#else
inline void test_raw2(int a, int b) 
{
    chess_message( "// test_raw2(" << a << ',' << b << ')' );
    chess_report (a/b);
}
#endif

#ifdef __chess__
inline assembly void test_waw2(int chess_storage(X13) a, int chess_storage(X14) b) 
                     
{
    asm_begin
    asm_text
	nopx
	nopx
	nopx
	div x10,x13,x14
	or x10,x0,x13 // wait for div to write
.chess_report __sint
	nopx
	nopx
	nopx
	nopx
	rem x10,x13,x14
	or x10,x0,x13 // wait for rem to write
.chess_report __sint
	nopx
	nopx
	nopx	
    asm_end
}
#else
inline void test_waw2(int a, int b) 
{
    chess_message( "// test_waw2(" << a << ',' << b << ')' );
    chess_report (a);
    chess_report (a);
}
#endif

#ifdef __chess__
inline assembly void test_2xdiv(int chess_storage(X13) a, 
                                int chess_storage(X14) b,
                                int chess_storage(X15) c) 
                     clobbers(X5,X8,X9,X10,X12)
{
    asm_begin
    asm_text
	nopx
	nopx
	nopx
	div x10,x13,x14
	div x8,x13,x15 // wait for first div to complete
	ori x10,x10,0 
.chess_report __sint
	ori x10,x8,0 
.chess_report __sint
	nopx
	nopx
	nopx
	nopx
	rem x10,x13,x14
	rem x8,x13,x15 // wait for first div to complete
	ori x10,x10,0 
.chess_report __sint
	ori x10,x8,0 
.chess_report __sint
	nopx
	nopx
	nopx	
    asm_end
}
#else
inline void test_2xdiv(int a, int b, int c)
{
    chess_message( "// test_2xdiv(" << a << ',' << b << ',' << c << ')' );
    chess_report (a/b);
    chess_report (a/c);
    chess_report (a%b);
    chess_report (a%c);
}
#endif

int A[] = {0x85, 0x14, 0x09, 0x05, 0x03, 0x01, 0x00 };

int main()
{
    test_nodep();
    test_raw();
    test_waw();
    test_indep();
        
    test_wport();
    
    int ii = 0;
    do {
        test_raw2(A[ii],10);
        test_waw2(A[ii],10);
        test_2xdiv(A[ii],10,3);
    } while (A[ii++] != 0);


    chess_exit(0);
    return 0;
}



