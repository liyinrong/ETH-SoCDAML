/*
-- Purpose: Test register moves.
-- Comment: A number of registers are reserved, and will not be used by the C
--          compiler. In this test, inlined assembly code is used to test
--          all register move, load and store instructions, including those
--          to reserved registers.
-- Copyright (c) 2014-2016 Synopsys, Inc. This Synopsys processor model 
-- captures an ASIP Designer Design Technique. The model and all associated 
-- documentation are proprietary to Synopsys, Inc. and may only be used 
-- pursuant to the terms and conditions of a written license agreement with 
-- Synopsys, Inc.  All other use, reproduction, modification, or distribution 
-- of the Synopsys processor model or the associated  documentation is 
-- strictly prohibited. 
*/





#define TEST_ADDR  0x900
#define ADDR_A  0x904
#define ADDR_B  0x914

int A[] = { 12, -34, 56, -79 };
int B[] = { 123, 234, 345, 456 };
int C[4];
int D[] = { 0xaa00, 0xff00, 0xe0e0, 0x1200 };

enum wregs { /*r0, r1, r2, r3,*/ r4, r5, r6, r7, sp, lr, sr, ilr, isr };

#ifdef __chess__
inline assembly void mv_wreg(wregs chess_storage() rr,
                               int chess_storage() v1,
			       int chess_storage() v2,
			       int chess_storage() v3) clobbers_not(LR)
{
    /* register usage:
        r0 -- value
	r1 -- scratch reg used to save rr
	r2 -- addres where rr is stored in memory
    */
    asm_begin
    asm_text
	mvi r2,TEST_ADDR
	mv r1,rr        // save old value
	// move to rr + store of rr
	mvi r0,v1
	mv rr,r0
	mv r0,rr
.chess_report __sint    // v1
	nop
	// move from rr
	mvib r0,0
.chess_report __sint    // 0
	nop
	mv r0,rr
.chess_report __sint    // v1
	nop
	// move immediate to rr
	mvi rr,v2
	mv r0,rr
.chess_report __sint    // v2
	nop
	// load of rr
	mvi r0,v3
	st r0,dm(r2)
	nop
	ld rr,dm(r2)
	mv r0,rr
.chess_report __sint    // c3
	nop
	nop
	mv rr,r1        // restore old value
	nop
	nop
    asm_end
}
#else
void mv_wreg(wregs rr, int v1, int v2, int v3)
{
    chess_message( "// mv_wreg(" << v1 << ',' << v2 <<  ',' << v3 << ')' );
    chess_report (v1);
    chess_report (0);
    chess_report (v1);
    chess_report (v2);
    chess_report (v3);
}
#endif

#ifdef __chess__
inline assembly void ld_wreg(wregs chess_storage() rr,
                              int* chess_storage() aa) clobbers_not(LR)
{
    /* register usage:
        r0 -- value
	r1 -- scratch reg used to save rr
	r2 -- addres where rr is stored in memory
    */
    asm_begin
    asm_text
	mvi r2,aa
	mv r1,rr        // save old value
	// load to rr + store of rr
	ld rr,dm(r2)
	mv r0,rr
.chess_report __sint    // 12
	nop
	mvib rr,0
	ld rr,dm(r2++)
	mv r0,rr
.chess_report __sint    // 12
	nop
	ld rr,dm(r2++)
	mv r0,rr
.chess_report __sint    // -34
	nop
	ld rr,dm(r2--)
	mv r0,rr
.chess_report __sint    // 56
	nop
	ld rr,dm(r2)
	mv r0,rr
.chess_report __sint    // -34
	nop
	nop
	nop
	mv rr,r1        // restore old value
	nop
	nop
    asm_end
}
#else
void ld_wreg(wregs rr, int* p)
{
    chess_message( "// ld_wreg()" );
    chess_report (p[0]);
    chess_report (p[0]);
    chess_report (p[1]);
    chess_report (p[2]);
    chess_report (p[1]);
}
#endif


#ifdef __chess__
inline assembly void st_wreg(wregs chess_storage() rr,
                              int* chess_storage() aa,
			       int chess_storage() v1,
			       int chess_storage() v2) clobbers_not(LR)
{
    /* register usage:
        r0 -- value
	r1 -- scratch reg used to save rr
	r2 -- addres where rr is stored in memory
    */
    asm_begin
    asm_text
	mvi r2,aa
	mv r1,rr        // save old value
	//  test1: indirect store
	mvi rr, v1
	st rr,dm(r2)
	nop
	ld r0,dm(r2)
.chess_report __sint    // v1
	nop
	nop
	//  test2: indirect store with postmodification
	mvi rr, v2
	st rr,dm(r2++)
	mvi rr, 0
	st rr,dm(r2)
	nop
	ld r0,dm(r2--)
.chess_report __sint    // 0
	nop
	ld r0,dm(r2)
.chess_report __sint    // v2
	nop
	nop
	mv rr,r1        // restore old value
	nop
	nop
    asm_end
}
#else
void st_wreg(wregs rr, int* p, int v1, int v2)
{
    chess_message( "// st_wreg()" );
    chess_report (v1);
    chess_report (0);
    chess_report (v2);
}
#endif

#ifdef __chess__
inline assembly void ldst_wreg_sp(wregs chess_storage() rr,
                                    int chess_storage() v1,
                                    int chess_storage() v2) clobbers_not(LR)
{
    /* register usage:
        r0 -- value
	r1 -- scratch reg used to save rr
    */
    asm_begin
    asm_text
	addb sp,10
	mv r1,rr        // save old value
	// store of rr, followed by load
	mvi rr,v1
	st rr,dm(sp-1)
	mvi rr,v2
	st rr,dm(sp-2)
	nop
	ld rr,dm(sp-1)
	mv r0,rr
.chess_report __sint    // v1
	nop
	ld rr,dm(sp-2)
   	mv r0,rr
.chess_report __sint    // v2
	nop
	nop
	addb sp,-10
	mv rr,r1        // restore old value
	nop
	nop
    asm_end
}
#else
void ldst_wreg_sp(wregs rr, int v1, int v2)
{
    chess_message( "// ldst_wreg_sp()" );
    chess_report (v1);
    chess_report (v2);
}
#endif



int main()
{
    init_regs();

    mv_wreg(r4,10,30,-70);
    mv_wreg(r6,11,31,-71);
    mv_wreg(sp,14,34,74);
 // mv_wreg(lr,15,35,-75);
    mv_wreg(sr,32,36,0xaa00);  // avoid to set IE bit
#ifndef IRQ_TEST
    mv_wreg(ilr,17,37,-77);
    mv_wreg(isr,18,38,-78); 
#endif

    ld_wreg(r4,A);
    ld_wreg(r6,A);
    ld_wreg(sp,B);  // avoid values out of stack range
 // ld_wreg(lr,A);
    ld_wreg(sr,D);
#ifndef IRQ_TEST
    ld_wreg(ilr,A);
    ld_wreg(isr,D);
#endif

    st_wreg(r4,C,121,-166);
    st_wreg(r4,C,232,-277);
    st_wreg(r6,C,343,-388);
    st_wreg(sp,C,333,555);  // avoid values out of stack range
 // st_wreg(lr,C,676,-622);
    st_wreg(sr,C,0xab00,0x1200); // avoid to set IE bit
#ifndef IRQ_TEST
    st_wreg(ilr,C,898,-844);
    st_wreg(isr,C,909,-955);
#endif

    ldst_wreg_sp(r4,45,-76);
    ldst_wreg_sp(r4,21,-166);
    ldst_wreg_sp(r4,32,-277);
    ldst_wreg_sp(r6,43,-388);
    // ldst_wreg_sp(sp,33,555);
 // ldst_wreg_sp(lr,76,-622);
    ldst_wreg_sp(sr,0xbc00,0x8e00); // avoid to set IE bit
#ifndef IRQ_TEST
    ldst_wreg_sp(ilr,98,-844);
    ldst_wreg_sp(isr,91,-955);
#endif
    return 0;
}
