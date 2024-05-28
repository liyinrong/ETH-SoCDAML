/*
-- Test executing of straight line code.
-- Copyright (c) 2014 Synopsys Inc.
*/



#ifdef __chess__
inline assembly void test_1() clobbers(X3,X4,X5,X10)
{
    asm_begin
    asm_text
        ori x4, x0, 10
	ori x3, x0, 20
	addi x0, x0, 0
	addi x0, x0, 0
	add x5,x4,x3
	addi x0, x0, 0
	addi x0, x0, 0
	add x5,x5,x4
	addi x0, x0, 0
	addi x0, x0, 0
	add x5,x5,x4
	addi x0, x0, 0
	addi x0, x0, 0
	add x5,x5,x4
	addi x0, x0, 0
	addi x0, x0, 0
	add x10,x5,x4
.chess_report __sint
	addi x0, x0, 0
	addi x0, x0, 0
	addi x0, x0, 0
	sub x10,x3,x10
.chess_report __sint
	addi x0, x0, 0
	addi x0, x0, 0
    asm_end
}
#else
inline void test_1() 
{
    chess_message(" // test_1");
    chess_report (70);
    chess_report (-50);
}
#endif

#ifdef __chess__
inline assembly void test_2() clobbers(X3,X4,X5,X10)
{
    asm_begin
    asm_text
        ori x4, x0, 10
	ori x3, x0, 20
	addi x0, x0, 0
	add x5,x4,x3
	addi x0, x0, 0
	add x5,x5,x4
	addi x0, x0, 0
	add x5,x5,x4
	addi x0, x0, 0
	add x5,x5,x4
	addi x0, x0, 0
	add x10,x5,x4
.chess_report __sint
	addi x0, x0, 0
	addi x0, x0, 0
	addi x0, x0, 0
	sub x10,x3,x10
.chess_report __sint
	addi x0, x0, 0
	addi x0, x0, 0
    asm_end
}
#else
inline void test_2() 
{
    chess_message(" // test_2");
    chess_report (70);
    chess_report (-50);
}
#endif

#ifdef __chess__
inline assembly void test_3() clobbers(X3,X4,X5,X10)
{
    asm_begin
    asm_text
        ori x4, x0, 10
	ori x3, x0, 20
	add x5, x4, x3
	add x5, x5, x4
	add x5, x5, x4
	add x5, x5, x4
	add x10, x5, x4
.chess_report __sint
	sub x10, x3, x10
.chess_report __sint
	addi x0, x0, 0
	addi x0, x0, 0
	addi x0, x0, 0
    asm_end
}
#else
inline void test_3() 
{
    chess_message(" // test_3");
    chess_report (70);
    chess_report (-50);
}
#endif

int main()
{
    test_1();
    test_2();
    test_3();
    chess_exit(0);
    return 0;
}
