/*
-- File : isr_init.s
-- Contents : interrupt initialisation for regression tests.
-- Copyright (c) 2014 Synopsys Inc.
*/

.undef global text counter_isr

;; the interrupt vector table with 8 interrupts, 16 words
.text global 0 _ivt
	j isr_init		;  0	-- reset
				; 
	rti			;  1    -- unused
	nop			; 
	j counter_isr		;  2    -- used for counter_isr
				; 
	rti			;  3    -- unused
	nop			; 
	rti			;  4    -- unused
	nop			; 
	rti			;  5    -- unused
	nop			; 
	rti			;  6    -- unused
	nop			; 
	rti			;  7    -- unused
	nop			; 

.text global 0 isr_init
        mvi sp, _sp_start_DM
	mvi sr,0		; to avoid don't care in RTL sim
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

