/*
-- File : pdc_commands.h
--
-- Contents : Declaration of PDC command class, interfacing with 3rd party DLL.
--
-- Copyright (c) 2014-2018 Synopsys, Inc. This Synopsys processor model 
-- captures an ASIP Designer Design Technique. The model and all associated 
-- documentation are proprietary to Synopsys, Inc. and may only be used 
-- pursuant to the terms and conditions of a written license agreement with 
-- Synopsys, Inc.  All other use, reproduction, modification, or distribution 
-- of the Synopsys processor model or the associated  documentation is 
-- strictly prohibited. 
*/

#ifndef _pdc_commands_h
#define _pdc_commands_h

#include "checkers_debugger.h"
#include "pdc_caches.h"

#include <deque>
#include <iostream>

using std::string;
using std::cerr;
using pdc_caches::range;

//  intercepting consecutive memory reads/writes to do block-based memory
//  access:

struct blocked_access_buffer {
    string name;
    std::vector<DataType> values;
    pdc_caches::arange addresses;

    void clear() {
        name.clear();
        addresses.clear();
        values.clear();
    }
    bool add(string nm, AddressType addr) {
        if (addresses.empty()) {
            name = nm;
            addresses = pdc_caches::arange(addr);
            return true;
        }
        else if (addresses.last+1 == addr && name == nm) {
            addresses.last++;
            return true;
        }
        else
            return false;
    }
    bool add(string nm, AddressType addr, const DataType& val) {
        bool b = add(nm,addr);
        if (b) values.push_back(val);
        return b;
    }
};

//  pdc_commands class

class pdc_commands {
public:
    typedef Checkers_debugger::Core_status Core_status;
    typedef Checkers_debugger::Breakpoint_settings Breakpoint_settings;
    typedef Checkers_debugger::Watchpoint_settings Watchpoint_settings;

    enum {
        max_core_id = 30,
        nr_breakpoints = 4,
        interleaved_contexts = 0
    };

    pdc_commands(int coreid, string server, int port);
    ~pdc_commands();

 // access of special registers :
    void get_status(Core_status*);
    AddressType get_program_counter();
    int put_program_counter(AddressType);
    static string pc_name;

 // refresh :
    void refresh();

 // start/stop/reset :
    void step(bool sync);
    void step_dis_int(bool sync);
    void resume(bool sync);
    void request(bool sync);
    void reset_core(bool sync);

 // hardware breakpoints/watchpoints :
    int watch_supported(string) const;
    void enable_hw_break(int nr, const Breakpoint_settings*);
    void enable_hw_break(const std::vector<int>&, const Watchpoint_settings*);
    void disable_hw_break(const std::vector<int>&);

 // software breakpoint info :
    enum {
        sw_break_enabled = 0,
        sw_break_decrements_pc = 0
    };
    typedef long long instr_type;
    static string pmem_name;
    instr_type sw_break_instr(bool export_, instr_type orig_instr);

 // buffered write access to storages (flush happpens on step/resume) :
    int put_register(string name, const DataType& value);
    int put_memory_at(string name, AddressType address, const DataType& value);
    void check_buffer_overflow();
    void flush_buffer();

 // blocked based read access of storages :
    int get_register(string name);
    int get_memory_at(string name, AddressType address);
    void send_and_receive();
    DataType received_next_mem(string);
    DataType received_next_reg(string);
    unsigned address_step(string);

 // common registers loaded in single send-receive call :
    std::vector<string> common_regs();
    std::vector<string> common_vec_regs(unsigned vec_size);

 // direct read access of storages :
    int get_register(string name, DataType& value);
    int get_memory_at(string name, AddressType address, DataType& value);

 // vectorised access to registers and memories :
    unsigned vector_size(string name);
    int get_register(string name, range elems);
    int get_memory_at(string name, AddressType address, range elems);
    void received_next(string name, range, std::vector<DataType>& vals);
    int put_register(string name, range elems,
                     const std::vector<DataType>& vals);
    int put_memory_at(string name, AddressType address, range elems,
                      const std::vector<DataType>& vals);
    
 // access to ocd_context_register (only when interleaved_contexts is true) :
    int put_context(int val);
    int get_context();
    int get_break_context();

 // verbosity :
    void verbose(int lvl);

private:
    bool verb;
    std::deque<DataType> read_fifo; // queue to store values read from memory
    blocked_access_buffer wr_buf, rd_buf;

    DataType received_next();
    void flush_read_buf();
    void flush_write_buf();

    void put_memory_block_at(string, pdc_caches::arange, const std::vector<DataType>&);
    void get_memory_block_at(string, pdc_caches::arange, std::vector<DataType>&);
};


//  useful default implementation of members

inline void pdc_commands::refresh()                { flush_buffer(); }
inline void pdc_commands::step_dis_int(bool sync)  { step(sync); }
inline void pdc_commands::check_buffer_overflow()  { }
inline void pdc_commands::flush_buffer()           { flush_write_buf(); }

inline void pdc_commands::send_and_receive()       { flush_read_buf(); }
inline DataType pdc_commands::received_next_mem(string)
                                                   { return received_next(); }
inline DataType pdc_commands::received_next_reg(string)
                                                   { return received_next(); }

inline unsigned pdc_commands::address_step(string) { return 1; }

inline unsigned pdc_commands::vector_size(string name) // disable vector access
                                                   { return 0; }

inline void pdc_commands::verbose(int lvl)         { verb = lvl != 0; }

inline std::vector<string> pdc_commands::common_regs()
{
    return std::vector<string>();  // disable send-receive for registers
}

inline int pdc_commands::get_register(string)
{
    return Checkers_debugger::failed; // unused when common_regs() returns empty
}

//  translate memory element access to bock-based access

inline int pdc_commands::put_memory_at(string nm, AddressType addr, const DataType& val)
{
    if (!wr_buf.add(nm,addr,val)) {
        flush_write_buf();
        wr_buf.add(nm,addr,val);
    }
    return Checkers_debugger::ok;
}

inline int pdc_commands::get_memory_at(string nm, AddressType addr)
{
    if (!rd_buf.add(nm,addr)) {
        flush_read_buf();
        rd_buf.add(nm,addr);
    }
    return Checkers_debugger::ok;
}

inline void pdc_commands::flush_write_buf()
{
    if (!wr_buf.addresses.empty()) {
        put_memory_block_at(wr_buf.name,wr_buf.addresses,wr_buf.values);
        wr_buf.clear();
    }
}

inline void pdc_commands::flush_read_buf()
{
    if (int len = rd_buf.addresses.length()) {
        std::vector<DataType> vals(len);
        get_memory_block_at(rd_buf.name,rd_buf.addresses,vals);
        std::copy(vals.begin(),vals.end(),back_inserter(read_fifo));
        rd_buf.clear();
    }
}

inline DataType pdc_commands::received_next()
{
    if (read_fifo.empty()) {
        std::cerr << "pdc_commands read-fifo empty\n";
        exit(1);
    }
    DataType v = read_fifo.front();
    read_fifo.pop_front();
    return v;
}

inline int pdc_commands::get_memory_at(string nm, AddressType addr, DataType& val)
{
    if (get_memory_at(nm,addr) == Checkers_debugger::ok) {
        send_and_receive();
        val = received_next_mem(nm);
        return Checkers_debugger::ok;
    }
    return Checkers_debugger::failed;
}

inline int pdc_commands::get_context()
{
    return -1;
}

inline int pdc_commands::get_break_context()
{
    return -1;
}

inline int pdc_commands::put_context(int)
{
    return Checkers_debugger::failed;    
}

#endif
