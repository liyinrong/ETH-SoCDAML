/*
-- File : tmicro_init.s
-- Contents : - initialisation of stack pointer
--            - symbol for main() arguments.
-- Copyright (c) 2014 Synopsys Inc.
*/

; initialize SP
.text global 0 tmicro_init
	mvi sp, _sp_start_DM

; area to load main(argc,char* argv[]) arguments 
.bss global 0 _main_argv_area DM 256

