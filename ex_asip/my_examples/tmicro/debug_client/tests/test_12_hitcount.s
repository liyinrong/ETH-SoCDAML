
; File: test_4b_hitcount.s -- assembly program for breakpoints with hit count

.text_segment PM 0
.entry_point
        mvib r0,0
        mvib r1,1
        mvib r2,2
        mvib r3,3
        mvib r6,5
        mvib r7,0
L:      add  r7,r7,r1
	add  r7,r7,r2
	add  r7,r7,r3 ; 6, 12, 18, 24, 30
	sub  r6,r6,r1
        ne   r6,r0
	jcr L
        nop
        nop
        nop
        nop
