/*
-- Test executing of straight line code.
-- Copyright (c) 2014 Synopsys Inc.
*/

#include "../../lib/tzscale_define.h"

#ifdef __chess__
inline assembly void test_jal() clobbers()
{
    asm_begin
    asm_text
        ori x4, x0, 100
	ori x5, x0, 1
	ori x6, x0, 2
	ori x7, x0, 3
	ori x8, x0, 4
	add x4, x4, x5   // 101
	jal x1, Fa
	add x4, x10, x6
	add x10, x4, x7
.chess_report __sint
	addi x0, x0, 0
	jal x0, Da
	addi x0, x0, 0
	addi x0, x0, 0
Fa: 	add x10, x4, x8   // 105
.chess_report __sint     
	addi x0, x0, 0
.rts
        jalr x0, x1, 0
	add x4, x12, x5
	addi x0, x0, 0
Da:
	lui x1, 0    // clear LR
	addi x0, x0, 0
    asm_end
}
#else
inline void test_jal() 
{
    chess_message(" // test_jal");
    chess_report (105);
    chess_report (110);
}
#endif

#ifdef __chess__
inline assembly void test_jalr() clobbers()
{
    asm_begin
    asm_text
        ori x4, x0, 200

#ifdef ISA_COMPRESSED
.rela 16 La 0
#else
.rela 4 La 0
#endif
	lui x13, 0
#ifdef ISA_COMPRESSED
.rela 17 La 0
#else
.rela 8 La 0
#endif

	ori x13, x0, 0
	addi x0, x0, 0
	ori x5, x0, 1
	ori x6, x0, 2
	ori x7, x0, 3
	ori x8, x0, 4
	ori x9, x0, 5
	ori x11, x0, 6
	add x4, x4, x5
	jalr x15, x13, 0
	add x4, x10, x6
	add x4, x4, x7
	add x10, x4, x8
.chess_report __sint
	addi x0, x0, 0
	jal x0, Db
La: 	add x4, x4, x9
	add x10, x4, x11
.chess_report __sint
	addi x0, x0, 0
.rts
        jalr x0, x15, 0
	addi x0, x0, 0
	addi x0, x0, 0
Db:
	addi x0, x0, 0
	lui x1, 0    // clear LR
    asm_end
}
#else
inline void test_jalr() 
{
    chess_message(" // test_jalr");
    chess_report (212);
    chess_report (221);
}
#endif

int main()
{
    test_jal();
    test_jalr();
    chess_exit(0);
    chess_exit(0);
    return 0;
}
