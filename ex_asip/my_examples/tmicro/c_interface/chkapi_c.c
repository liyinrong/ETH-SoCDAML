/*
-- Author : Jos Decoster
-- 
-- Copyright (c) 2014-2016 Synopsys, Inc. This Synopsys processor model 
-- captures an ASIP Designer Design Technique. The model and all associated 
-- documentation are proprietary to Synopsys, Inc. and may only be used 
-- pursuant to the terms and conditions of a written license agreement with 
-- Synopsys, Inc.  All other use, reproduction, modification, or distribution 
-- of the Synopsys processor model or the associated  documentation is 
-- strictly prohibited. 
*/


#include "chkapi_c.h"
#include "checkers_api_l_funcs.h"
#include "checkers_api_l_structs.h"
#include "checkers_api.h"
#include "Mdl_tmicro_uicore.h"

void* chkapi_c_engine_init(unsigned *error)
{
    chkapi_errorsp->reset();
    *error = 0;

    #ifdef __checkers_ia__
    tmicro_uicore* uicore = new tmicro_uicore(0); 
    #else
    tmicro_uicore* uicore = new tmicro_uicore(0,0,0);
    #endif
    if (chkapi_errorsp->err_cnt) {
	if (uicore) {
	    delete uicore;
 	    *error = (unsigned) chkapi_errorsp->err_cnt;
	}
	return 0;
    }
    return (void*)uicore;
}

int chkapi_c_model_reset(void* core)
{
    if (core) {
	tmicro_uicore* uicore = (tmicro_uicore*)core;
	chkapi_errorsp->reset();
	chkapi_model_reset((Checkers_uicore*)core);
	return 1;    
    }
    else
	return -1;
} 

int chkapi_c_model_close(void* core)
{
    chkapi_errorsp->reset();
    return chkapi_model_close((Checkers_uicore*)core);
}

void chkapi_c_print_error()
{
    std::cerr << *chkapi_errorsp << std::endl;
}

int chkapi_c_load_prog(
    void*       core,
    const char* program)
{
    chkapi_errorsp->reset();
    Checkers_uicore* uicore = (Checkers_uicore*)core;
    int dwarf2 = 1;
    if (uicore) {
	return chkapi_program_load( uicore, 
			            program, 
				    dwarf2, 
				    1,  // disassemble
				    "", // nml_path
				    "", // disassemble_opt
				    "", // extradisassemble_opt
				    std::vector<std::string>(), // source_path
				    0,  // no_disassembly_time_check
		                    std::vector<Checkers_load_spec>(), // allowed_list
				    std::vector<Checkers_load_spec>(), // forbidden_list
				    0,  // symbols_only
				    0,  // do_not_set_entry_pc
				    0,  // do_not_load_sp
				    0,  // load_main_argv_strings
		                    std::vector<std::string>(),  // main_argv_strings
				    0,  // skip_bss
				    0,  // rw_init
				    0,  // full_pm_check
				    1,  // end_of_main_breakpoints				  
				    0,  // profile_breakponts
				    0,  // cycle_count_breakpoints
				    1   // dont_warn_overwritten		    				    
				    );
    }
    else
	return -1;
}

int chkapi_c_step(
    void* core,
    int   count,
    int&  cycles_simulated)
{
    int srt=-1;
    Checkers_uicore_runinfo runinfo;
   
    chkapi_errorsp->reset();
    Checkers_uicore* uicore = (Checkers_uicore*)core;
    if (count == -1) {
        // set watch point
    }
    if (uicore) {
	srt = chkapi_l_program_step_master(uicore, count, count, ssmd_mic, false, &runinfo);
        cycles_simulated = runinfo.cycles_simulated;
    }
    else
        cycles_simulated = 0;

    return srt;
}

int chkapi_c_get(
    void*               core,
    const char*         storage_name,
    unsigned            address,
    chkapi_c_long_long& val)
{
    chkapi_errorsp->reset();
    Checkers_uicore* uicore = (Checkers_uicore*)core;
    Checkers_storinfo sti;
    Checkers_typeinfo typ;
    Checkers_stor_addr sta(storage_name, address, 1, at_fld);
    if (uicore) {
        sti.storage_name = storage_name;
        chkapi_l_storinfo_query(uicore,sti);
	typ.name = sti.data_type;
        chkapi_l_typeinfo_query(uicore,typ);
        VBitWrapper vb(typ.width,typ.sign_type == st_2s_complement,-1);
	int ret = chkapi_l_storage_get_vbit (uicore, sta, vb);
        val = vb.to_longlong();
        return ret;	
    }
    else
        return 0;
}

int chkapi_c_put(
    void*               core,
    const char*         storage_name,
    unsigned            address,
    chkapi_c_long_long& val)
{
    chkapi_errorsp->reset();
    Checkers_uicore* uicore = (Checkers_uicore*)core;
    Checkers_storinfo sti;
    Checkers_typeinfo typ;
    Checkers_stor_addr sta(storage_name, address, 1, at_fld);
    if (uicore) {
        sti.storage_name = storage_name;
        chkapi_l_storinfo_query(uicore,sti);
	typ.name = sti.data_type;
        chkapi_l_typeinfo_query(uicore,typ);
        VBitWrapper vb(typ.width,typ.sign_type == st_2s_complement,val);
	return chkapi_l_storage_put_vbit (uicore, sta, vb);
    }
    else
        return 0;
}

int chkapi_c_breakpoint_set(
    void*    core,
    unsigned address)
{
    if (core)
        return chkapi_breakpoint_set((Checkers_uicore*)core, address);
    else
	return -1;
}

int chkapi_c_breakpoint_clear(
    void*    core,
    unsigned address)
{
    if (core)
	return chkapi_breakpoint_clear((Checkers_uicore*)core, address);
    else
	return -1;
}

int chkapi_c_watch_eop_set(void* core)
{
    if (core) {
	Checkers_uicore* uicore = (Checkers_uicore*)core;
	Checkers_watchpoint_opn wpo(wopnd_e,1); // test if one is written
	std::vector<Checkers_watchpoint_opn> wp_opns;
	wp_opns.push_back(wpo);
	return chkapi_watchpoint_set(uicore,
				   /*storage_name*/       "r_detected_end_pgm",
				   /*address*/             0,
				   /*address_set*/         1,
				   /*address_type*/        at_addr,
				   /*nbr_fields*/          1,
				   /*nbr_fields_set*/      0,
				   /*hitcount*/            1,
				   /*hitcount_set*/        1,
				   /*watch_read*/          0,
				   /*watch_read_set*/      0,
				   /*watch_write*/         1,
				   /*watch_write_set*/     1,
				   /*operations*/          wp_opns,
				   /*operations_set*/      1,
				   /*expression*/          "",
				   /*expression_set*/      0,
				   /*verbose*/             1,
				   /*verbose_set*/         1,
				   /*remove_when_hit*/     0,
				   /*remove_when_hit_set*/ 0); 
    }
    else
        return -1;
}

int chkapi_c_watchpoint_set(void* core,char *reg_name,int value)
{
    if (core) {
	Checkers_uicore* uicore = (Checkers_uicore*)core;
	Checkers_watchpoint_opn wpo(wopnd_e,value); // test if one is written
	std::vector<Checkers_watchpoint_opn> wp_opns;
	wp_opns.push_back(wpo);
	return chkapi_watchpoint_set(uicore,
				   /*storage_name*/       reg_name,
				   /*address*/             0,
				   /*address_set*/         1,
				   /*address_type*/        at_addr,
				   /*nbr_fields*/          1,
				   /*nbr_fields_set*/      0,
				   /*hitcount*/            1,
				   /*hitcount_set*/        1,
				   /*watch_read*/          0,
				   /*watch_read_set*/      0,
				   /*watch_write*/         1,
				   /*watch_write_set*/     1,
				   /*operations*/          wp_opns,
				   /*operations_set*/      1,
				   /*expression*/          "",
				   /*expression_set*/      0,
				   /*verbose*/             1,
				   /*verbose_set*/         1,
				   /*remove_when_hit*/     0,
				   /*remove_when_hit_set*/ 0); 
    }
    else
        return -1;
}

int chkapi_c_model_decoder_reset(void *core)
{
    if (core)
    {
	Checkers_uicore* uicore = (Checkers_uicore*)core;
	uicore->core()->controller()->decoder()->reset();
	return 0;
    }
    else
	return -1;
}

