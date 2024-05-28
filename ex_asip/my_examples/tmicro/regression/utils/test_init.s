/*
-- File : test_init.s
-- Contents : - initialisation of stack pointer
--            - symbol for main() arguments.
-- Copyright (c) 2014 Synopsys Inc.
*/

; initialize SP
.text global 0 test_init
	mvi sp, _sp_start_DM
	mvi r4, 0 ; reset for HDL simulation
	mvi r5, 0 ;
	mvi r6, 0 ;
	mvi r7, 0 ;
	mvi sr, 0 ;
	mvi ilr, 0 ;
	mvi isr, 0 ;

; area to load main(argc,char* argv[]) arguments 
.bss global 0 _main_argv_area DM 256

