#include "Mdl_tmicro.h"
#include "Mdl_tmicro_uicore.h"
#include "Mdl_tmicro_convert.h"
#include "tmicro_sc_ca.h"
#include "checkers_tui.h"
#include "checkers_api.h"

// Needed for the simple_target_socket
#define SC_INCLUDE_DYNAMIC_PROCESSES

#include "systemc"

#include "tlm.h"
#include "tlm_utils/simple_initiator_socket.h"
#include "tlm_utils/simple_target_socket.h"

#include "memory.h"
#include "tmicro_sc.h"
#include "top.h"

struct tmicro_sc_ca : public tmicro_sc
{
    SC_HAS_PROCESS(tmicro_sc_ca);
    tmicro_sc_ca(sc_core::sc_module_name instname, std::string iprog) : tmicro_sc(instname, iprog) {
	uicore = new tmicro_uicore(0,0,0);
	((tmicro*)uicore->core())->testbench->initiator = this;
    }
};

int sc_main(int argc, char** argv)
{
    if (argc != 2) {
	std::cerr << "Usage: tmicro_sc_ca <program>" << std::endl;
	return 1;
    }
    Top<tmicro_sc_ca, 65536> top("top", argv[1]);
    sc_core::sc_start();
    return 0;
}

void tmicro_testbench::dbg_access_DM(unsigned a, tmicro_primitive::word& v, bool read) {
    int val = v.value();
    initiator->dbg_access(a, val, read);
    if (read)
	v.value(val);
}

void tmicro_testbench::update_process() {
    if (mdl->dm_st)
	initiator->store(mdl->dm_addr.to_unsigned(), mdl->dm_write.value());
    if (mdl->dm_ld)
	mdl->dm_read = initiator->load(mdl->dm_addr.to_unsigned());
}
