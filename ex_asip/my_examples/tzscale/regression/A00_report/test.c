/*
-- Test executing of reporting function.
-- Copyright (c) 2014 Synopsys Inc.
*/

#include <stdlib.h>
#ifdef __chess__
inline assembly void asm_report() clobbers(X3,X4,X13)
{
    asm_begin
    asm_text
	ori x3, x0, 10 
	ori x4, x0, 20 
	addi x0, x0, 0
	addi x0, x0, 0
	addi x0, x0, 0
	add  x10,x3,x4
.chess_report __sint
	addi x0, x0, 0
	addi x0, x0, 0
	addi x0, x0, 0
    asm_end
}
#else
inline void asm_report() 
{
    chess_report (30);
}
#endif

int * a;
int main()
{
    
    a = (int *)malloc(4);
    chess_message( "// First test message" );
    chess_report(101);
    asm_report();
    chess_exit(0);
    return 0;
}
