; File: test_60_int.s
;     one counter is incremented in an ISR,
;     another counter is incremented in loop of main

.text_segment PM 0
_ivt:
        j _init ;  reset

        rti     ;  interrupt 0
	nop
        j _isr  ;  interrupt 1

        rti     ;  interrupt 2
	nop
        rti     ;  interrupt 3
	nop
        rti     ;  interrupt 4
	nop
        rti     ;  interrupt 5
	nop
        rti     ;  interrupt 6
	nop
        rti     ;  interrupt 7
	nop

_main:
        mvi r0,10
        mvi r0,11
        mvi r0,12
        mvi r0,13
        mvi r0,14
        mvi r0,15
        mvi r0,16
        mvi r0,17
        mvi r0,18
        mvi r0,19

        mvi r0, _counter_main
        doi 4, _loop_end
        ld r1,dm(r0)
        nop 
        ld r2,dm(r1++)
        st r1,dm(r0)
_loop_end:
        nop 

        mvi r0,10
        mvi r0,11
        mvi r0,12
        mvi r0,13
        mvi r0,14
        mvi r0,15
        mvi r0,16
        mvi r0,17
        mvi r0,18
        mvi r0,19

_init:
        mvi sp, _sp_start_DM
	mvi sr,0
	mvi r0,0
	mvi r1,0
	mvi r2,0
	mvi r3,0
	mvi r4,0
	mvi r5,0
	mvi r6,0
	mvi r7,0
	mvi im,255
	ei
	j _main

_isr:
        addb sp, 3
        st r6,dm(sp-1)
        st r7,dm(sp-2)
        mvi r6, _counter_isr
        ld r7,dm(r6)
        st r5,dm(sp-3)
        nop 
        ld r5,dm(r7++)
        st r7,dm(r6)
        nop 
        ld r6,dm(sp-1)
        ld r7,dm(sp-2)
        ld r5,dm(sp-3)
        addb sp, -3
        rti

.data_segment DM 2            ; DM 0 2 reserved by OCD
_counter_isr:
        0x0
_counter_main:	
	0x0

.stack DM 1024 4096

