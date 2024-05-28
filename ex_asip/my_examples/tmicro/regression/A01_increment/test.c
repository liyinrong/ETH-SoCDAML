/*
-- Test executing of straight line code.
-- Copyright (c) 2014-2016 Synopsys, Inc. This Synopsys processor model 
-- captures an ASIP Designer Design Technique. The model and all associated 
-- documentation are proprietary to Synopsys, Inc. and may only be used 
-- pursuant to the terms and conditions of a written license agreement with 
-- Synopsys, Inc.  All other use, reproduction, modification, or distribution 
-- of the Synopsys processor model or the associated  documentation is 
-- strictly prohibited. 
*/




#ifdef __chess__
inline assembly void test_straight_line_code() clobbers_not(LR)
{
    asm_begin
    asm_text
        mvib r0,10 
	mvib r1,3 
	add r0,r0,r1
.chess_report __sint
	sub r0,r1,r0
.chess_report __sint
	add r0,r0,r1
	add r0,r0,r1
	add r0,r0,r1
	add r0,r0,r1
.chess_report __sint
	nop
	nop
	nop
    asm_end
}
#else
inline void test_straight_line_code() 
{
    chess_report (13);
    chess_report (-10);
    chess_report (2);
}
#endif

int main()
{
    test_straight_line_code();
    return 0;
}
