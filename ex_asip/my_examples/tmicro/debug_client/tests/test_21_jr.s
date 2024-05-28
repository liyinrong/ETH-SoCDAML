
; File: test_7b_jr.s -- test jr instruction

.text_segment PM 0
.entry_point
        mvib r0,10 
        mvib r1,1 
        mvib r2,2 
        mvib r3,3 
        mvib r4,4 
        mvi r7,1024 
        nop
        nop
        add r0,r0,r1
        st r0,dm(r7++)    // DM[1024] = 11
        jr La
        add r0,r0,r1   
        add r0,r0,r3
La:     add r0,r0,r4
        st r0,dm(r7++)    // DM[1024] = 15
        nop
        nop
        nop
        nop


