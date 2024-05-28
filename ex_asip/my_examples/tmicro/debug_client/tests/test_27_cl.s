
; File: test_7h_cl.s -- test cl and rt instruction

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
        st r0,dm(r7++)    // DM[1024] = 11
        cl F1
        add r0,r0,r3
        st r0,dm(r7++)    // DM[1025] = 16
        nop
        nop
        nop
        nop

F1: 	add r0,r0,r2
        st r0,dm(r7++)    // DM[1024] = 13
	rt

