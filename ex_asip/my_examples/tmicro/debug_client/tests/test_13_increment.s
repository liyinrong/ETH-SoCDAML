
; File: test_5_increment.s -- simple assembly program 

.text_segment PM 0
.entry_point
	mvib r3,0
	mvib r1,1
	add r3,r3,r1
	add r3,r3,r1
	add r3,r3,r1
	add r3,r3,r1
	nop 
	add r3,r3,r1
	nop 
	add r3,r3,r1
	nop 
	add r3,r3,r1
	nop 
	add r3,r3,r1
	nop 

