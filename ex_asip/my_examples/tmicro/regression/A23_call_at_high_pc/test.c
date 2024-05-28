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
assembly void test_call_return() chess_storage(PM:0xffcc)
{
    asm_begin
    asm_text
        mv   r6,lr      // save link address
	mvib r0,10 
	mvib r1,1 
	mvib r2,2 
	mvib r3,3 
	mvib r4,4 
	nop
	nop
	add r0,r0,r1
	cl Fa
	add r0,r0,r2
.chess_report __sint    // 15
	nop
        mvi r5,Fa
	clid r5
	add r0,r0,r1    // delay slot
	add r0,r0,r2    // delay slot
	add r0,r0,r3
	add r0,r0,r4
.chess_report __sint    // 27
	nop
	cl Fb
	add r0,r0,r2
.chess_report __sint    // 38
	nop
        mvi r5,Fb
	clid r5
	add r0,r0,r1    // delay slot
	add r0,r0,r2    // delay slot
	add r0,r0,r3
	add r0,r0,r4
.chess_report __sint    // 57
	nop
        mv lr,r6        // restore link address
	rt 

Fa:	add r0,r0,r2
.chess_report __sint    // 13, 20
	nop
	rt
        add r0,r0,r1
	nop

Fb:	add r0,r0,r2
.chess_report __sint    // 29, 43
	nop
        add r0,r0,r3    
	rtd
        add r0,r0,r4    // delay slot
        nop             // delay slot
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
