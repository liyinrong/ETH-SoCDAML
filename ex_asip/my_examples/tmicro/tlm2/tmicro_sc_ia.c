
#ifndef __checkers_ia_dll__
#include "Mdl_tmicro.h"
#include "Mdl_tmicro_uicore.h"
#include "Mdl_tmicro_convert.h"
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

struct tmicro_sc_ia : public tmicro_sc
{
    SC_HAS_PROCESS(tmicro_sc_ia);
    tmicro_sc_ia(sc_core::sc_module_name instname, std::string iprog) : tmicro_sc(instname, iprog) {
	uicore = new tmicro_uicore();
	((tmicro*)uicore->core())->initiator = this;
    }
};

int sc_main(int argc, char** argv)
{
    if (argc != 2) {
	std::cerr << "Usage: tmicro_sc_ia <program>" << std::endl;
	return 1;
    }
    Top<tmicro_sc_ia, 65536> top("top", argv[1]);
    sc_core::sc_start();
    return 0;
}

void tmicro::async_put_DM(AddressType addr, const tmicro_primitive::word& val)
{
    ((tmicro_sc*)initiator)->store(addr, val.value());
}

tmicro_primitive::word tmicro::async_get_DM(AddressType addr) const
{
    return ((tmicro_sc*)initiator)->load(addr);
}

#endif
