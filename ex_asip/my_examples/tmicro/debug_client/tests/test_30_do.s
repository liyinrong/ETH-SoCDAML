
; File: test_7k_do.s -- test do instruction

.text_segment PM 0
.entry_point
	mvib r0,10 
	mvib r1,1 
	mvib r2,2 
	mvib r3,3 
	mvi r7,1024 
	mvib r5,3
	nop
	nop
	add r0,r0,r1    // del slot
	do r5,La
	add r0,r0,r2    // del slot
	add r0,r0,r3
La:	st r0,dm(r7++)    // DM[2048] = 16, 19, 22
	add r0,r0,r1
	nop
        st r0,dm(r7++)    // DM[2048] = 23
	nop
	nop
	nop
	add r0,r0,r1    // del slot
	do r5,Lb
	add r0,r0,r2    // del slot
Lb:	add r0,r0,r3
	nop
        st r0,dm(r7++)    // DM[2049] = 35
	nop
	nop
	nop
	rt


