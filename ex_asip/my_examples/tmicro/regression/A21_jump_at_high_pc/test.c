/*
-- Test unconditional jump instructions at high PC values.
-- Copyright (c) 2014-2016 Synopsys, Inc. This Synopsys processor model 
-- captures an ASIP Designer Design Technique. The model and all associated 
-- documentation are proprietary to Synopsys, Inc. and may only be used 
-- pursuant to the terms and conditions of a written license agreement with 
-- Synopsys, Inc.  All other use, reproduction, modification, or distribution 
-- of the Synopsys processor model or the associated  documentation is 
-- strictly prohibited. 
*/




#ifdef __chess__
assembly void test_jumps() chess_storage(PM:0xffe2)
{
    asm_begin
    asm_text
	mvib r0,10 
	mvib r1,1 
	mvib r2,2 
	mvib r3,3 
	mvib r4,4 
	nop
	add r0,r0,r1
.chess_report __sint    // 11
	nop
	jrd La
	add r0,r0,r1
	add r0,r0,r2
	add r0,r0,r3
La:	add r0,r0,r4
.chess_report __sint    // 16 
	nop
	jr Lb
	add r0,r0,r1
	add r0,r0,r2
	add r0,r0,r3
Lb:	add r0,r0,r4
.chess_report __sint    // 20
	nop
	j Lc
	add r0,r0,r1
	add r0,r0,r2
	add r0,r0,r3
Lc:	add r0,r0,r4
.chess_report __sint    // 24
	nop
        rt
    asm_end
}
#else
inline void test_jumps() 
{
	chess_report(11);
	chess_report(16);
	chess_report(20);
	chess_report(24);
}
#endif

int main()
{
    test_jumps();
    return 0;
}
