/*
-- File : tzscale_pdc_interface.c
--
-- Contents : Specialisation of Checkers_pdc_interface for TZSCALE
--
-- Copyright (c) 2014-2016 Synopsys, Inc. This Synopsys processor model 
-- captures an ASIP Designer Design Technique. The model and all associated 
-- documentation are proprietary to Synopsys, Inc. and may only be used 
-- pursuant to the terms and conditions of a written license agreement with 
-- Synopsys, Inc.  All other use, reproduction, modification, or distribution 
-- of the Synopsys processor model or the associated  documentation is 
-- strictly prohibited. 
*/



#include "tzscale_pdc_interface.h"

bool tzscale_pdc_interface::expand_into_root_locations(const Checkers_storinfo* s)
{
    return true;  // always expand   
}

pdc_commands::instr_type tzscale_pdc_interface::get_instruction_at(unsigned pc)
{
    long long instr0, instr1;
    get_memory_at(cmd.pmem_name,pc+0,instr0);
    get_memory_at(cmd.pmem_name,pc+1,instr1);
    long long instr = (instr1 <<8) | instr0;
    return instr;
}

void tzscale_pdc_interface::put_instruction_at(unsigned pc,
                                           pdc_commands::instr_type instr)
{
    put_memory_at(cmd.pmem_name,pc+0,(instr >>0) & 0xff);
    put_memory_at(cmd.pmem_name,pc+1,(instr >>8) & 0xff);
}

unsigned tzscale_pdc_interface::next_instruction(unsigned pc) { return pc+2; }
unsigned tzscale_pdc_interface::prev_instruction(unsigned pc) { return pc-2; }
