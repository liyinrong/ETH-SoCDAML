/*
-- Test executing of report_ssing function.
-- Copyright (c) 2014-2016 Synopsys, Inc. This Synopsys processor model 
-- captures an ASIP Designer Design Technique. The model and all associated 
-- documentation are proprietary to Synopsys, Inc. and may only be used 
-- pursuant to the terms and conditions of a written license agreement with 
-- Synopsys, Inc.  All other use, reproduction, modification, or distribution 
-- of the Synopsys processor model or the associated  documentation is 
-- strictly prohibited. 
*/




#ifdef __chess__
inline assembly void asm_report_ss() clobbers_not(LR)
{
    asm_begin
    asm_text
	mvib r1, 10 
	mvib r2, 20 
	add  r0,r1,r2
.chess_report __sint
	nop
	nop
	nop
    asm_end
}
#else
inline void asm_report_ss() 
{
    chess_report (30);
}
#endif

int main()
{
    chess_report(101);
    asm_report_ss();
    return 0;
}
