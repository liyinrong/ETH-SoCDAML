
; File: test_15_dm_watch.s -- assembly test program for testing DM watch points

.bss_segment DM 1024 8

.text_segment PM 0
.entry_point
        mvi  r1,1 
        mvi  r7,1024 
        nop
        st  r1,dm(r7++)    // DM[1024] = 1
        add r1,r1,r1
        st r1,dm(r7++)     // DM[1025] = 2
        add r1,r1,r1
        st r1,dm(r7++)     // DM[1026] = 4
        add r1,r1,r1
        st r1,dm(r7++)     // DM[1027] = 8
        add r1,r1,r1
        st r1,dm(r7++)     // DM[1028] = 16
        add r1,r1,r1
        st r1,dm(r7++)     // DM[1029] = 32
        add r1,r1,r1
        st r1,dm(r7++)     // DM[1030] = 64
        nop
        mvi  r1,1 
        mvi  r7,1024 
        doi 8,La
        add r1,r1,r1
La:     st r1,dm(r7)    
        nop
        nop
        nop


