/*
-- Test call and return instructions.
-- Copyright (c) 2014-2016 Synopsys, Inc. This Synopsys processor model 
-- captures an ASIP Designer Design Technique. The model and all associated 
-- documentation are proprietary to Synopsys, Inc. and may only be used 
-- pursuant to the terms and conditions of a written license agreement with 
-- Synopsys, Inc.  All other use, reproduction, modification, or distribution 
-- of the Synopsys processor model or the associated  documentation is 
-- strictly prohibited. 
*/




#ifdef __chess__
inline assembly void test_call_return() clobbers_not(LR)
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
	add r0,r0,r2
.chess_report __sint  // 15
        mvi r5,Fa
	clid r5
	add r0,r0,r1  // delay slot
	add r0,r0,r2  // delay slot
	add r0,r0,r3
	add r0,r0,r4
.chess_report __sint  // 27
	nop
	nop
	cl Fb
	add r0,r0,r2
.chess_report __sint  // 38
	nop
        mvi r5,Fb
	clid r5
	add r0,r0,r1  // delay slot
	add r0,r0,r2  // delay slot
	add r0,r0,r3
	add r0,r0,r4
.chess_report __sint  // 57
	nop
	j Done
	nop
	nop

Fa:	add r0,r0,r2
.chess_report __sint  // 13, 20
	rt
        add r0,r0,r1
	nop

Fb:	add r0,r0,r2
.chess_report __sint  // 29, 43
        add r0,r0,r3  // delay slot
	rtd
        add r0,r0,r4  // delay slot
	nop
        add r0,r0,r1    
	nop

Done:   nop
        mv lr,r7      // restore LR
	nop
	nop
    asm_end
}
#else
inline void test_call_return() 
{
	chess_report(13);
	chess_report(15);
	chess_report(20);
	chess_report(27);
	chess_report(29);
	chess_report(38);
	chess_report(43);
	chess_report(57);
}

#endif

int main()
{
    test_call_return();
    return 0;
}
