/*
-- Test executing of straight line code.
-- Copyright (c) 2014 Synopsys Inc.
*/


#ifdef __chess__
inline assembly void test_br_taken() clobbers()
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
        addi x0, x0, 0
	add x4,x4,x5
	beq x4,x4, La
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
inline void test_br_taken() 
{
    chess_message(" // test_br_taken");
    chess_report (112);
}
#endif

#ifdef __chess__
inline assembly void test_br_untaken() clobbers()
{
    asm_begin
    asm_text
        ori x4, x0, 200
	ori x5, x0, 1
	ori x6, x0, 2
	ori x7, x0, 3
	ori x8, x0, 4
	ori x9, x0, 5
	ori x10, x0, 6
        addi x0, x0, 0
	add x4,x4,x5
	bne x4,x4, Lb
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
inline void test_br_untaken() 
{
    chess_message(" // test_br_untaken");
    chess_report (221);
}
#endif

int main()
{
    test_br_taken();
    test_br_untaken();
    chess_exit(0);
    return 0;
}
