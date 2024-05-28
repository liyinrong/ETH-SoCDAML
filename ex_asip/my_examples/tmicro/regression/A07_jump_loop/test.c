/*
-- Test jump instructions at the end of a hardware loop.
-- Copyright (c) 2014-2016 Synopsys, Inc. This Synopsys processor model 
-- captures an ASIP Designer Design Technique. The model and all associated 
-- documentation are proprietary to Synopsys, Inc. and may only be used 
-- pursuant to the terms and conditions of a written license agreement with 
-- Synopsys, Inc.  All other use, reproduction, modification, or distribution 
-- of the Synopsys processor model or the associated  documentation is 
-- strictly prohibited. 
*/




#ifdef __chess__
inline assembly void test_jr_doi() clobbers_not(LR)
{
    asm_begin
    asm_text
	mvib r0,10 
	mvib r1,1 
	mvib r2,2 
	mvib r3,3 
	mvib r4,4 
	nop
	nop
        // loop of size 2 with count of 3
	doi 3,La
	add r0,r0,r2
.chess_report __sint    // 12
       	nop
        jr Ta
.eol
La:	add r0,r0,r4    // not executed
	add r0,r0,r3
Ta:     add r0,r0,r1
.chess_report __sint    // 13 
       	nop
        dlf             // decrement loop flag after jump out of loop
	nop
    asm_end
}
#else
inline void test_jr_doi() 
{
        chess_message( "// test_jr_doi()" );
	chess_report(12);
	chess_report(13);
}
#endif


#ifdef __chess__
inline assembly void test_j_doi() clobbers_not(LR)
{
    asm_begin
    asm_text
	mvib r0,20 
	mvib r1,1 
	mvib r2,2 
	mvib r3,3 
	mvib r4,4 
	nop
	nop
        // loop of size 2 with count of 3
	doi 3,La
	add r0,r0,r2
.chess_report __sint    // 22
       	nop
        j Ta
.eol
La:	add r0,r0,r4    // not executed
	add r0,r0,r3
Ta:     add r0,r0,r1
.chess_report __sint    // 23
       	nop
        dlf             // decrement loop flag after jump out of loop
	nop
    asm_end
}
#else
inline void test_j_doi() 
{
        chess_message( "// test_j_doi()" );
	chess_report(22);
	chess_report(23);
}
#endif


#ifdef __chess__
inline assembly void test_jcr_doi() clobbers_not(LR)
{
    asm_begin
    asm_text
	mvib r0,30 
	mvib r1,1 
	mvib r2,2 
	mvib r3,3 
	mvib r4,4 
	nop
	nop
        // loop of size 2 with count of 3
	doi 3,La
	add r0,r0,r2
.chess_report __sint    // 32
       	nop
        eq r0,r0
        jcr Ta
	add r0,r0,r3
.eol
La:	add r0,r0,r4    // not executed
	add r0,r0,r3
Ta:     add r0,r0,r1
.chess_report __sint    // 33
       	nop
        dlf             // decrement loop flag after jump out of loop
	nop
    asm_end
}
#else
inline void test_jcr_doi() 
{
        chess_message( "// test_jcr_doi()" );
	chess_report(32);
	chess_report(33);
}
#endif

#ifdef __chess__
inline assembly void test_cl_doi() clobbers_not(LR)
{
    asm_begin
    asm_text
	mvib r0,40 
	mvib r1,1 
	mvib r2,2 
	mvib r3,3 
	mvib r4,4 
	mv r7,lr        // save PR
	nop
	nop
        // loop of size 2 with count of 3
	doi 3,La
	add r0,r0,r2
.chess_report __sint    // 42, 46, 50
       	nop
        cl Fa
.eol
La:	nop
.chess_report __sint    // 52
	add r0,r0,r3
        nop
        j Done
        
Fa:     add r0,r0,r1
.chess_report __sint    // 43, 47, 51
       	nop
        add r0,r0,r1
        rt
	add r0,r0,r1

Done:   nop
	mv lr,r7        // restore LR
	nop
	nop
    asm_end
}
#else
inline void test_cl_doi() 
{
        chess_message( "// test_cl_doi()" );
	chess_report(42);
	chess_report(43);
	chess_report(46);
	chess_report(47);
	chess_report(50);
	chess_report(51);
	chess_report(52);
}
#endif

int main()
{
    test_jr_doi();
    test_j_doi();
    test_jcr_doi();
    test_cl_doi();
    return 0;
}
