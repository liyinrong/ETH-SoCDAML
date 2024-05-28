
; File: test_4a_breakpoints.s -- assembly program for breakpoints

.text_segment PM 0
.entry_point
        mvib r0,127
        mvib r1,1
        mvib r2,2
        mvib r3,3
        mvib r4,4
        mvib r5,5
        mvib r6,6
        mvi  r7,1024
        nop
        nop
