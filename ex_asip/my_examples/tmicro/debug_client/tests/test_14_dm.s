
; File: test_6_dm.s -- assembly test program for testing DM access

.text_segment PM 0
.entry_point
        mvi  r0,1000 
        mvi  r1,1 
        mvi  r2,500 
        mvi  r7,1024 
        nop
        nop
        st  r0,dm(r7++)    // DM[1024] = 1000
        add r0,r0,r1
        st r0,dm(r7++)     // DM[1025] = 1001
        add r0,r0,r2    
        st r0,dm(r7++)     // DM[1026] = 1501
        nop
        nop
        nop


