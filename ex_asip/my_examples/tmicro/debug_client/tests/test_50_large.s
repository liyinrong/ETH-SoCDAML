
; File: test_8_large.s -- program with large PM and DM sections


.text_segment PM 0
.entry_point
	mvib r3,0
	mvib r2,2
	mvib r1,1
	j L2
	nop
.repeat 256
	mvib r3,0
L1:     add r3,r3,r2
	add r3,r3,r2
	mvi r4,D1
	nop
	ld r5,dm(r4++)
	ld r6,dm(r4++)
	add r5,r5,r6
	ld r6,dm(r4++)
	add r5,r5,r6
	mvi r4,D2
	ld r6,dm(r4)
	nop 
	nop 
	nop 
.text_segment PM 512
L2:     add r3,r3,r1
        add r3,r3,r2
        add r3,r3,r2
        j L1
	nop

.data_segment DM 128
D1:     10
	21
	32
        43
	54
	65
	76
	87
	98
        10
        10
        10
        10
	21
	32
	43
	54
	65
	76
	87
	98
	21
	32
	43
	54
	65
	76
	87
	98
	21
	32
	43
	54
        10
	21
	32
	43
	54
	65
	76
	87
	98
        10
        10
        10
        10
	21
	32
	43
	54
	65
	76
	87
	98
	21
	32
	43
	54
	65
	76
	87
	98
	21
	32
	43
   	54
	65
	76
	87
	98
	21
	32
	43
	54
	65
	76
	87
	98
        10
   	21
	32
	43
	54
	65
	76
D2:	87
	98


