/*
-- File : pdc_commands.c
--
-- Contents : Implementation of PDC command class.
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
#include <stdlib.h>

string pdc_commands::pc_name = "pc";   // lower case for use in register cache
string pdc_commands::pmem_name = "PM";

pdc_commands::pdc_commands(int coreid, string server, int port)
    : cbl(coreid,server, port)
{
    verb = 0;
    ocd_address_set = false;
    ocd_current_context = -1;
    init_pdc_codes(coreid);
    init_reg_move_codes();

    if (cbl.open() != 0) {
        cerr << "Cannot establish connection with server " << server << '\n';
        exit(1);
    }
}

pdc_commands::~pdc_commands()
{
    flush_buffer();
    cbl.close();
}

// PDC op codes have following format: iiiiixxxxxxxxxxx
//     iiiii       is a 5 bit core ID
//     xxxxxxxxxxx is the 11 bit opcode

void pdc_commands::init_pdc_codes(int core_id)
{
    if (core_id > max_core_id) {
        cerr << "invalid core_id (maximum coreid = " << max_core_id << "): "
             << core_id << '\n';
        exit(1);
    }

    // core ID
    int cid = core_id << 11;

    // instruction opcodes
    request_instr  = cid | DBG_REQUEST_INSTR;
    resume_instr   = cid | DBG_RESUME_INSTR;
    reset_instr    = cid | DBG_RESET_INSTR;
    step_instr     = cid | DBG_STEP_INSTR;
    stepdi_instr   = cid | DBG_STEPDI_INSTR;
    execute_instr  = cid | DBG_EXECUTE_INSTR;

    trace_rd_cnt_instr  = cid | DBG_TRACE_RD_CNT_INSTR;
    trace_rd_instr      = cid | DBG_TRACE_RD_INSTR;
    trace_cfg_instr     = cid | DBG_TRACE_CFG_WR_INSTR;

    // breakpoint instruction codes: 000001bbbii
    bp_enable_instr [0] = cid | DBG_BP0_ENABLE_INSTR;
    bp_export_instr [0] = cid | DBG_BP0_EXPORT_INSTR;
    bp_disable_instr[0] = cid | DBG_BP0_DISABLE_INSTR;

    bp_enable_instr [1] = cid | DBG_BP1_ENABLE_INSTR;
    bp_export_instr [1] = cid | DBG_BP1_EXPORT_INSTR;
    bp_disable_instr[1] = cid | DBG_BP1_DISABLE_INSTR;

    bp_enable_instr [2] = cid | DBG_BP2_ENABLE_INSTR;
    bp_export_instr [2] = cid | DBG_BP2_EXPORT_INSTR;
    bp_disable_instr[2] = cid | DBG_BP2_DISABLE_INSTR;

    bp_enable_instr [3] = cid | DBG_BP3_ENABLE_INSTR;
    bp_export_instr [3] = cid | DBG_BP3_EXPORT_INSTR;
    bp_disable_instr[3] = cid | DBG_BP3_DISABLE_INSTR;

    // load/store instruction codes: 000010mmmmi
    mem_instr["DM"]  = pdc_mem_instr(cid | DBG_DM_LOAD_INSTR,
                                     cid | DBG_DM_STORE_INSTR,false);
    mem_instr["PM"]  = pdc_mem_instr(cid | DBG_PM_LOAD_INSTR,
                                     cid | DBG_PM_STORE_INSTR, true);

    // watchpoint instruction opcodes: 0001bbbmmmm
    bp_watch_store_instr["DM"][0] = cid | DBG_WP0_ST_DM_ENABLE_INSTR;
    bp_watch_store_instr["DM"][1] = cid | DBG_WP1_ST_DM_ENABLE_INSTR;
    bp_watch_store_instr["DM"][2] = cid | DBG_WP2_ST_DM_ENABLE_INSTR;
    bp_watch_store_instr["DM"][3] = cid | DBG_WP3_ST_DM_ENABLE_INSTR;
    bp_watch_store_instr["PM"][0] = cid | DBG_WP0_ST_PM_ENABLE_INSTR;
    bp_watch_store_instr["PM"][1] = cid | DBG_WP1_ST_PM_ENABLE_INSTR;
    bp_watch_store_instr["PM"][2] = cid | DBG_WP2_ST_PM_ENABLE_INSTR;
    bp_watch_store_instr["PM"][3] = cid | DBG_WP3_ST_PM_ENABLE_INSTR;
}

// status reg bits
//    8   7    6    5    4    3    2    1    0
//    SWB BO   BI   HIT  BP3  BP2  BP1  BP0  MODE

inline int debug_mode(int sreg) { return sreg & (1<<DBG_MODE_INDX); }
inline int hit_set   (int sreg) { return sreg & (1<<DBG_BP_HIT_INDX); }
inline int bi_set    (int sreg) { return sreg & (1<<DBG_BREAKIN_INDX); }
inline int swb_set   (int sreg) { return sreg & (1<<DBG_SWBREAK_INDX); }

void pdc_commands::get_status(Core_status* cs)
{
    long long val;
    if (verb) cerr << "PDC get status register ...";
    cbl.add_dread(ocd_cable::stat);
    send_and_receive();
    cbl.get_next_data(val);

    if (verb) cerr << " read: " << val << '\n';
    int sreg = (int)val;
    *cs = Core_status();   // initialise "cs" to running.
    if (debug_mode(sreg))
        cs->running = false;
    if (hit_set(sreg)) {
        cs->hw_break = true;
        int mask = 1 << (DBG_MODE_INDX + 1);
        for (int i = 0; i < nr_breakpoints; i++, mask<<=1)
            if (sreg & mask)
                cs->hw_break_nr.push_back(i);
    }
    if (bi_set(sreg))
        cs->external_break = true;
    if (swb_set(sreg))
        cs->sw_break = true;
}

std::vector<string> pdc_commands::common_regs()
{
    std::vector<string> nms(reg_get_code.size());
    std::map<string,long long>::const_iterator mi = reg_get_code.begin();
    for (unsigned i = 0; i < nms.size(); i++, mi++)
        nms[i] = mi->first;
    return nms;
}

// memory and register access

int pdc_commands::put_memory_at(string nm, AddressType address,
                                const DataType& value)
{
    std::map<string,pdc_mem_instr>::iterator p = mem_instr.find(nm);
    if (p == mem_instr.end())
        return Checkers_debugger::failed;
    if (verb) cerr << "PDC put memory: " << nm << ", " << address
                   << ", " << value << '\n';
    put_address_register(address);
    if (p->second.via_inst_reg)
        cbl.add_dwrite(ocd_cable::inst,value);
    else
        cbl.add_dwrite(ocd_cable::data,value);
    execute_ldst_instr(p->second.st_instr);
    return Checkers_debugger::ok;
}

int pdc_commands::get_memory_at(string nm, AddressType address)
{
    std::map<string,pdc_mem_instr>::iterator p = mem_instr.find(nm);
    if (p == mem_instr.end())
        return Checkers_debugger::failed;
    if (verb) cerr << "PDC get memory: " << nm << ", " << address << '\n';
    put_address_register(address);
    execute_ldst_instr(p->second.ld_instr);
    if (p->second.via_inst_reg)
        cbl.add_dread(ocd_cable::inst);
    else
        cbl.add_dread(ocd_cable::data);
    return Checkers_debugger::ok;
}

int pdc_commands::put_register(string name, const DataType& value)
{
    if (!reg_put_code.count(name))
        return Checkers_debugger::failed;

    if (verb) cerr << "PDC put_register: " << name << ", " << value << '\n';
    // put value in data register
    cbl.add_dwrite(ocd_cable::data,value);
    // load register move instruction in instruction register
    cbl.add_dwrite(ocd_cable::inst,reg_put_code[name]);
    // execute move instruction (from data to argument register)
    cbl.add_iwrite(execute_instr);
    return Checkers_debugger::ok;
}

int pdc_commands::get_register(string name)
{
    if (!reg_get_code.count(name))
        return Checkers_debugger::failed;

    if (verb) cerr << "PDC get_register: " << name << '\n';
    // load register move instruction in instruction register
    cbl.add_dwrite(ocd_cable::inst,reg_get_code[name]);
    // execute move instruction (from argument to data register)
    cbl.add_iwrite(execute_instr);
    // get value from data register
    cbl.add_dread (ocd_cable::data);
    return Checkers_debugger::ok;
}

int pdc_commands::put_program_counter(AddressType a)
{
 // backup r0 and write new pc value to it
    get_register("r0");
    put_register("r0",a);
 // load "goto r0" in instruction register, and execute instruction
    cbl.add_dwrite(ocd_cable::inst,goto_r0_code);
    cbl.add_iwrite(execute_instr);
    send_and_receive();
 // restore r0
    put_register("r0",received_next_reg("r0"));
    if (verb) cerr << "PDC put PC: " << a << '\n';
    return Checkers_debugger::ok;
}

//  vector register and memory access (empty implementation)

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

void pdc_commands::get_trace(std::vector<Trace_entry>& buf)
{
    long long count;
    long long val;

    if (verb) cerr << "PDC get_trace ...\n";
    // get trace count
    cbl.add_iwrite(trace_rd_cnt_instr);
    cbl.add_dread (ocd_cable::data);
    send_and_receive();
    cbl.get_next_data(count);
    if (verb) cerr << "  trace count = " << std::dec << count << "\n";
    buf.clear(); // clear vector
    // and get the traces
    for (long long i=0; i<count; i++) {
        cbl.add_iwrite(trace_rd_instr);
        cbl.add_dread (ocd_cable::data);
        send_and_receive();
        cbl.get_next_data(val);
        Trace_entry entry;
        entry.traceType = Checkers_debugger::pc_increment;
        entry.traceData.push_back((val >> 24) & 0xFF);
        entry.traceData.push_back((val >> 16) & 0xFF);
        entry.traceData.push_back((val >> 8) & 0xFF);
        entry.traceData.push_back(val & 0xFF);
        buf.push_back(entry);
        if (verb) cerr << "  trace = 0x" << std::hex << val << std::dec << "\n";
    }
}

void pdc_commands::config_trace(long long value)
{
    cbl.add_dwrite(ocd_cable::data,value);
    cbl.add_iwrite(trace_cfg_instr);
    send_and_receive();
}

