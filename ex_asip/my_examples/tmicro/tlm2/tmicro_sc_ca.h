#ifndef __tmicro_testbench_h__
#define __tmicro_testbench_h__

#include "Mdl_tmicro.h"
#include "Mdl_tmicro_uicore.h"

struct tmicro_sc_ca;

struct tmicro_testbench {
    tmicro* mdl;
    // TLM helpers
    tmicro_sc_ca* initiator;
    // backdoor access
    virtual void dbg_access_DM(unsigned a, tmicro_primitive::word& v, bool read = true);
    // process functions
    virtual void update_process();
    virtual void combinatorial_process() {}
    // constructor
    tmicro_testbench() {
	initiator = 0;
    }
    virtual ~tmicro_testbench() {}
    void set_core(tmicro* imdl) { mdl = imdl; }
private:
};
#endif
