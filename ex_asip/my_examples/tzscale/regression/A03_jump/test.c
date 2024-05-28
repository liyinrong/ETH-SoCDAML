/*
-- Test executing of straight line code.
-- Copyright (c) 2014 Synopsys Inc.
*/

#include "../../lib/tzscale_define.h"

#ifdef __chess__
inline assembly void test_j() clobbers()
{
    asm_begin
    asm_text
        ori x4, x0, 100
	ori x5, x0, 1
	ori x6, x0, 2
	ori x7, x0, 3
	ori x8, x0, 4
	ori x9, x0, 5
	ori x10, x0, 6
	add x4,x4,x5
	jal x0, La
	add x4,x4,x6
	add x4,x4,x7
	add x4,x4,x8
La: 	add x4,x4,x9
	add x10,x4,x10
.chess_report __sint
	addi x0, x0, 0
	addi x0, x0, 0
    asm_end
}
#else
inline void test_j() 
{
    chess_message(" // test_j");
    chess_report (112);
}
#endif

#ifdef __chess__
inline assembly void test_jr() clobbers()
{
    asm_begin
    asm_text
        ori x4, x0, 200


#ifdef ISA_COMPRESSED
.rela 16 Lb 0
#else
.rela 4 Lb 0
#endif
	lui x13, 0
#ifdef ISA_COMPRESSED
.rela 19 Lb 0
#else
.rela 10 Lb 0
#endif




	ori x13, x0, 0
	addi x0, x0, 0
	ori x5, x0, 1
	ori x6, x0, 2
	ori x7, x0, 3
	ori x8, x0, 4
	ori x9, x0, 5
	ori x10, x0, 6
	add x4,x4,x5
	jalr x0, x13, 0
	add x4,x4,x6
	add x4,x4,x7
	add x4,x4,x8
Lb: 	add x4,x4,x9
	add x10,x4,x10
.chess_report __sint
	addi x0, x0, 0
	addi x0, x0, 0
    asm_end
}
#else
inline void test_jr() 
{
    chess_message(" // test_jr");
    chess_report (212);
}
#endif

int main()
{
    test_j();
    test_jr();
    chess_exit(0);
    return 0;
}
