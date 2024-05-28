.direct_eval >>,&,(,)

// initialisation before entering the main function.
.text global 0 _main_init
	lui x2, (_sp_start_DMb>>12)	
	ori x2, x2, (_sp_start_DMb&0xfff)
	addi x0, x0, 0                           
.undef global data _sp_start_DMb

; area to load main(argc,char* argv[]) arguments 
.bss global 0 _main_argv_area DMb 256
