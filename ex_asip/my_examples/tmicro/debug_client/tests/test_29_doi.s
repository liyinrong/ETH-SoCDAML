
; File: test_7j_doi.s -- test doi instruction

.text_segment PM 0
.entry_point
	mvib r0,10
	mvib r1,1
	mvib r2,2
	mvib r3,3
	mvi r7,1024
	nop
	nop
	add r0,r0,r1
	doi 3,La
	add r0,r0,r2
	add r0,r0,r3
La:	st r0,dm(r7++)    // DM[2048] = 16, 21, 26
	add r0,r0,r1
	nop
        st r0,dm(r7++)    // DM[2048] = 27
	nop
	nop
	nop
	add r0,r0,r3
	doi 3,Lb
Lb:	add r0,r0,r2
	nop
        st r0,dm(r7++)    // DM[2049] = 35
	nop
	nop
	nop
	rt


