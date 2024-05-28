
; File: test_16_pm_watch.s -- assembly test program for testing PM watch points

.bss_segment DM 1024 8
.bss_segment PM 1024 8

.text_segment PM 0
.entry_point
        mvi  r1,1 
        mvi  r7,1024 
        nop
        st  r1,pm(r7++)    // PM[1024] = 1
        add r1,r1,r1
        st r1,pm(r7++)     // PM[1025] = 2
        add r1,r1,r1
        st r1,pm(r7++)     // PM[1026] = 4
        add r1,r1,r1
        st r1,pm(r7++)     // PM[1027] = 8
        add r1,r1,r1
        st r1,pm(r7++)     // PM[1028] = 16
        add r1,r1,r1
        st r1,pm(r7++)     // PM[1029] = 32
        add r1,r1,r1
        nop
        mvi  r1,1 
        mvi  r7,1024 
        doi 8,La
        add r1,r1,r1
La:     st r1,pm(r7)    
        nop
        nop
        nop


