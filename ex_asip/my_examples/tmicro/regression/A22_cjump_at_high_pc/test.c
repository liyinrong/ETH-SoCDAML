/*
-- Test conditional jump instructions at high PC values.
-- Copyright (c) 2014-2016 Synopsys, Inc. This Synopsys processor model 
-- captures an ASIP Designer Design Technique. The model and all associated 
-- documentation are proprietary to Synopsys, Inc. and may only be used 
-- pursuant to the terms and conditions of a written license agreement with 
-- Synopsys, Inc.  All other use, reproduction, modification, or distribution 
-- of the Synopsys processor model or the associated  documentation is 
-- strictly prohibited. 
*/




#ifdef __chess__
assembly void test_jumps() chess_storage(PM:0xffd8)
{
    asm_begin
    asm_text
	mvib r0,24 
	mvib r1,1 
	mvib r2,2 
	mvib r3,3 
	mvib r4,4 
	mvib r4,4 
	nop
	ne r0,r0
	jcr Ld
	add r0,r0,r1
	add r0,r0,r2
	add r0,r0,r3
Ld:	add r0,r0,r4
.chess_report __sint    // 34
	nop
	eq r0,r0
	jcr Le
	add r0,r0,r1
	add r0,r0,r2
	add r0,r0,r3
Le:	add r0,r0,r4
.chess_report __sint    // 38
	nop
	ne r0,r0
	jc Lf
	add r0,r0,r1
	add r0,r0,r2
	add r0,r0,r3
Lf:	add r0,r0,r4
.chess_report __sint    // 48
	nop
	eq r0,r0
	jc Lg
	add r0,r0,r1
	add r0,r0,r2
	add r0,r0,r3
Lg:	add r0,r0,r4
.chess_report __sint    // 52
	nop
        rt
    asm_end
}
#else
inline void test_jumps() 
{
	chess_report(34);
	chess_report(38);
	chess_report(48);
	chess_report(52);
}
#endif

int main()
{
    test_jumps();
    return 0;
}
