
; File generated by darts version O-2018.09#f5599cac26#190121, Tue May 28 10:41:50 2024
; Copyright 2014-2018 Synopsys, Inc. All rights reserved.
; darts -B -I.. +p -d -h -I../runtime/include -D__tct_patch__=300 +Ihex lib/Release/rand.o tmicro

; Release: ipd O-2018.09-SP3
.data_segment_name
.data local 1 __rand_next DM
	0x1
	0x0

.undef local data __rand_next

.undef local data __rand_next

.text_segment_name
.text global 0 rand
	/*      0 0x2410 */    mvi r0,__rand_next
	/*      1 0x0000 */    /* MW */
	/*      2 0x4001 */    ld r1,dm(r0)
	/*      3 0x2412 */    mvi r2,20077
	/*      4 0x4e6d */    /* MW */
	/*      5 0x184a */    muluu (r6,r7),r1,r2
	/*      6 0x2413 */    mvi r3,12345
	/*      7 0x3039 */    /* MW */
	/*      8 0x00de */    add r3,r3,r6
	/*      9 0x4213 */    st r3,dm(r0++)
	/*     10 0x2413 */    mvi r3,16838
	/*     11 0x41c6 */    /* MW */
	/*     12 0x4004 */    ld r4,dm(r0)
	/*     13 0x18e2 */    macl (r7),r4,r2
	/*     14 0x18cb */    macl (r7),r1,r3
	/*     15 0x3001 */    mvib r1,0
	/*     16 0x024f */    addc r1,r1,r7
	/*     17 0x4201 */    st r1,dm(r0)
	/*     18 0x2410 */    mvi r0,32767
	/*     19 0x7fff */    /* MW */
	/*     20 0x2ec0 */    rtd 
	/*     21 0x2e00 */    nop 
.label rand__end
	/*     22 0x0801 */    and r0,r0,r1

.text_segment_name
.text global 0 srand
	/*      0 0x2411 */    mvi r1,__rand_next
	/*      1 0x0000 */    /* MW */
	/*      2 0x4250 */    st r0,dm(r1++)
	/*      3 0x3000 */    mvib r0,0
	/*      4 0x2ec0 */    rtd 
	/*      5 0x4240 */    st r0,dm(r1)
.label srand__end
	/*      6 0x2e00 */    nop 

