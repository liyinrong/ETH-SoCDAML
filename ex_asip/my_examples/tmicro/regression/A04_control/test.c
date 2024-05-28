/*
-- Test mix of control flow instructions.
-- Copyright (c) 2014-2016 Synopsys, Inc. This Synopsys processor model 
-- captures an ASIP Designer Design Technique. The model and all associated 
-- documentation are proprietary to Synopsys, Inc. and may only be used 
-- pursuant to the terms and conditions of a written license agreement with 
-- Synopsys, Inc.  All other use, reproduction, modification, or distribution 
-- of the Synopsys processor model or the associated  documentation is 
-- strictly prohibited. 
*/




#ifdef __chess__
inline assembly void test_control() clobbers_not(LR)
{
    asm_begin
    asm_text
	mvib r0,10 
	mvib r1,1 
	mvib r2,2 
	mvib r3,3 
	mvib r4,4 
	mv r7,lr      // save LR
	nop
	nop
	add r0,r0,r1
	cl Fa
	cl Fa
	cl Fa
	add r0,r0,r4
.chess_report __sint  // 21
        mvi r5,Fa
	clid r5
	add r0,r0,r1  // delay slot
	add r0,r0,r2  // delay slot
	clid r5
	add r0,r0,r1  // delay slot
	add r0,r0,r2  // delay slot
	add r0,r0,r4
.chess_report __sint  // 35
	nop
	nop
	mvib r0,100 
	j Laa
	nop
	nop

Fa:	add r0,r0,r2
.chess_report __sint  // 13, 15, 17,  26, 31
	rt
        add r0,r0,r1
	nop

Laa:	add r0,r0,r2
.chess_report __sint  // 102
	j Lab
        add r0,r0,r3
Lab:	j Lac
        add r0,r0,r3
Lac:    add r0,r0,r1
.chess_report __sint  // 103
	nop
	nop

	mvib r0,110 
Lba:	add r0,r0,r2
.chess_report __sint  // 112
	jr Lbb
        add r0,r0,r3
Lbb:	jr Lbc
        add r0,r0,r3
Lbc:    add r0,r0,r1
.chess_report __sint  // 113
	nop
	nop

Done:   nop
	mv lr,r7      // restore LR
	nop
	nop
    asm_end
}
#else
inline void test_control() 
{
	chess_report(13);
	chess_report(15);
	chess_report(17);
	chess_report(21);
	chess_report(26);
	chess_report(31);
	chess_report(35);

	chess_report(102);
	chess_report(103);

	chess_report(112);
	chess_report(113);
}
#endif

int main()
{
    test_control();
    return 0;
}
