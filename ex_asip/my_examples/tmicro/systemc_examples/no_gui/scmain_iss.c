// File generated by checkers version 12.2.5, Thu Nov 15 18:23:39 2012
// Copyright(c) 1996-2012 Target Compiler Technologies NV
// All rights reserved.
// checkers -B -v -M -ctmicro_ca_work/LNa64/tmicro_ca.ccf tmicro

// Processor: tmicro
#include "Mdl_tmicro.h"

#include "Mdl_tmicro_systemc.h"

#include "Mdl_tmicro_uicore.h"
#include "Mdl_tmicro_convert.h"
#include "Mdl_tmicro_testbench.h"

#include "checkers_sc_time_gater.h"

Tcl_Interp* sc_interp = 0;

SC_MODULE(Memory)
{
private:
    int ram[65536];     // integers up to 32-bit
public:
    sc_in_clk                clock;
    sc_in<bool>              ld, st;
    sc_in<sc_uint<16> >      a;
    sc_in<sc_uint<16> >      d;
    sc_out<sc_uint<16> >     q;

    void prc_memory() {
 	unsigned ar = a.read();
 	if (ld.read() && ar < 65536)
 	    q.write(ram[ar]);
 	else if (st.read() && ar < 65536)
 	    ram[ar] = d.read();
    }

    SC_CTOR(Memory) {
	SC_METHOD(prc_memory);
	sensitive << clock.pos();
    }

    void dbg_access(AddressType addr, sc_uint<16>& val, int read)
    {
	if (read) val = ram[addr]; else ram[addr] = val;
    }
};

struct tmicro_testbench_sc_DM_PM : public tmicro_testbench_sc {

    Memory* dmp;
    Memory* pmp;

    tmicro_testbench_sc_DM_PM(Memory* idmp, Memory* ipmp) : dmp(idmp), pmp(ipmp) {}

    void dbg_access_PM(AddressType a, sc_uint<16>& v, bool read) { pmp->dbg_access(a, v, read); }

    void dbg_access_DM(AddressType a, sc_uint<16>& v, bool read) { dmp->dbg_access(a, v, read); }
};

int sc_main(int argc, char* argv[])
{
    if (argc != 2) {
	std::cerr << "Usage: tmicro_ca_sc_mi <program>" << std::endl;
	exit(5);
    }

    Memory dm("DM");
    Memory pm("PM");
    tmicro_testbench_sc_DM_PM sctb(&dm, &pm);
    tmicro_load_program_args_sc pl_args(argv[1]);
    pl_args.cycle_count_breakpoints = 1;

    tmicro_sc iss("iss", &sctb, pl_args);

    // Signals
    sc_clock clock;
    sc_signal<bool> reset;
    sc_signal<sc_uint<16> > pm_read;
    sc_signal<sc_uint<16> > pm_addr;
    sc_signal<bool> pm_ld;
    sc_signal<sc_uint<16> > pm_write;
    sc_signal<bool> pm_st;
    sc_signal<sc_uint<16> > dm_read;
    sc_signal<sc_uint<16> > dm_addr;
    sc_signal<bool> dm_ld;
    sc_signal<sc_uint<16> > dm_write;
    sc_signal<bool> dm_st;
    sc_signal<sc_uint<8> > ireq_inp;
    sc_signal<sc_uint<8> > iack_out;
    sc_signal<sc_uint<1> > halted_out;
    sc_signal<sc_uint<1> > debug_out;
    sc_signal<sc_uint<1> > dma_ready;

    // Connections
    iss.clock(clock);
    iss.reset(reset);
    iss.pm_read(pm_read);
    iss.pm_addr(pm_addr);
    iss.pm_ld(pm_ld);
    iss.pm_write(pm_write);
    iss.pm_st(pm_st);
    iss.dm_read(dm_read);
    iss.dm_addr(dm_addr);
    iss.dm_ld(dm_ld);
    iss.dm_write(dm_write);
    iss.dm_st(dm_st);
    iss.iack_out(iack_out);
    iss.halted_out(halted_out);
    iss.debug_out(debug_out);
    iss.dma_ready(dma_ready);

    dm.clock(clock);
    dm.ld(dm_ld);
    dm.st(dm_st);
    dm.a(dm_addr);
    dm.d(dm_write);
    dm.q(dm_read);

    pm.clock(clock);
    pm.ld(pm_ld);
    pm.st(pm_st);
    pm.a(pm_addr);
    pm.d(pm_write);
    pm.q(pm_read);

    reset = 1;
    sc_start(sc_time(100, SC_NS));
    reset = 0;
    sc_start(sc_time(100000, SC_NS));
    return 0;
}
