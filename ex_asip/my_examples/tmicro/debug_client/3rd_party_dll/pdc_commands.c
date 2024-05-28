/*
-- File : pdc_commands.c
--
-- Contents : Implementation of PDC command class,
--            interfacing with 3rd party DLL.
--
-- Copyright (c) 2014-2018 Synopsys, Inc. This Synopsys processor model 
-- captures an ASIP Designer Design Technique. The model and all associated 
-- documentation are proprietary to Synopsys, Inc. and may only be used 
-- pursuant to the terms and conditions of a written license agreement with 
-- Synopsys, Inc.  All other use, reproduction, modification, or distribution 
-- of the Synopsys processor model or the associated  documentation is 
-- strictly prohibited. 
*/

#include "pdc_commands.h"

//  initialization

string pdc_commands::pc_name = "pc";   // lower case for use in register cache
string pdc_commands::pmem_name = "PM";

pdc_commands::pdc_commands(int coreid, string server, int port)
{
    verb = 0;
}

pdc_commands::~pdc_commands() { }

//  access of special registers

void pdc_commands::get_status(Core_status* cs)
{
    *cs = Core_status();   // initialise "cs" to running.
    // TBD define members hw_break, external_break, hw_break_nr
}

AddressType pdc_commands::get_program_counter()
{
    return 0;  // TBD
}

int pdc_commands::put_program_counter(AddressType)
{
    return Checkers_debugger::failed;  // optional functionality
}

//  start/stop/reset

void pdc_commands::step(bool)
{
    flush_buffer();
    // TBD step
}

void pdc_commands::resume(bool)
{
    flush_buffer();
    // TBD resume
}

void pdc_commands::request(bool)
{
    // TBD
}

void pdc_commands::reset_core(bool)
{
    flush_buffer();
    // TBD reset
}

//  breakpoints

int pdc_commands::watch_supported(string) const
{
    return 0;  // change to true when watchpoints can be set
}

void pdc_commands::enable_hw_break(int nr, const Breakpoint_settings*)
{
    // TBD
}

void pdc_commands::enable_hw_break(const std::vector<int>&,
                                   const Watchpoint_settings*)
{
    // TBD if watchpoints are supported
}

void pdc_commands::disable_hw_break(const std::vector<int>&)
{
    // TBD
}

pdc_commands::instr_type pdc_commands::sw_break_instr(bool, instr_type)
{
   // TBD
    return 0;
}

//  (scalar) register access

int pdc_commands::get_register(string name, DataType& value)
{
   // TBD
   return Checkers_debugger::failed;  // change failed to ok
}

int pdc_commands::put_register(string name, const DataType& value)
{
   // TBD
    return Checkers_debugger::failed;  // change failed to ok
}

// (scalar) memory access

void pdc_commands::put_memory_block_at(string, pdc_caches::arange,
                                       const std::vector<DataType>&)
{
    // TBD
}

void pdc_commands::get_memory_block_at(string, pdc_caches::arange, std::vector<DataType>&)
{
    // TBD
}

//  vector register and vector memory access (empty implementation)

int pdc_commands::get_register(string, pdc_caches::range)
{
    return Checkers_debugger::failed;
}
int pdc_commands::get_memory_at(string, AddressType, pdc_caches::range)
{
    return Checkers_debugger::failed;
}
void pdc_commands::received_next(string, pdc_caches::range,
                                 std::vector<DataType>&)
{
}
int pdc_commands::put_register(string, pdc_caches::range,
                               const std::vector<DataType>&)
{
    return Checkers_debugger::failed;
}
int pdc_commands::put_memory_at(string, AddressType, pdc_caches::range,
                                const std::vector<DataType>&)
{
    return Checkers_debugger::failed;
}
std::vector<string> pdc_commands::common_vec_regs(unsigned)
{
    return std::vector<string>();
}
