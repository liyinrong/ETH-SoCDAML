
; File: test_7i_clid.s -- test clid and rtd instruction

.text_segment PM 0
.entry_point
        mvib r0,10
        mvib r1,1
        mvib r2,2
        mvib r3,3
        mvib r4,4
        mvib r5,5
	mvi r6, F1
        mvi r7,1024
        nop
        nop
        add r0,r0,r1
        st r0,dm(r7++)    // DM[1024] = 11
        clid r6
        add r0,r0,r1      // ds
        add r0,r0,r2      // ds
        add r0,r0,r3
        add r0,r0,r4
        add r0,r0,r5
        st r0,dm(r7++)    // DM[1025] = 35
        nop
        nop
        nop
        nop

F1: 	nop
        nop
        st r0,dm(r7++)    // DM[1024] = 14
	add r0,r0,r4
        st r0,dm(r7++)    // DM[1024] = 18
        nop
	rtd
	add r0,r0,r3
	add r0,r0,r2

