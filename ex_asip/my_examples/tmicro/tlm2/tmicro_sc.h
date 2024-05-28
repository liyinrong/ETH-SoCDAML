#ifndef __tlm2_example_tmicro_sc__
#define __tlm2_example_tmicro_sc__

#define SC_INCLUDE_DYNAMIC_PROCESSES

#include "systemc"

#include "tlm.h"
#include "tlm_utils/simple_initiator_socket.h"
#include "tlm_utils/simple_target_socket.h"

#include "checkers_tui.h"
#include "checkers_api.h"

#include "memory.h"

#define DO_WAIT 1
#define SINGLE_STEP 1
#define STEPS 2000
#ifndef USE_DMI
#define USE_DMI 1
#endif

SC_MODULE(tmicro_sc)
{
    tlm_utils::simple_initiator_socket<tmicro_sc> socket;
    tlm::tlm_generic_payload ld;
    tlm::tlm_generic_payload st;
    int data;
    Checkers_uicore* uicore;
    std::string prog;
    int* mem;

    SC_HAS_PROCESS(tmicro_sc);
    tmicro_sc(sc_core::sc_module_name instname, std::string iprog) :
	socket("socket"), data(0), uicore(0), prog(iprog), mem(0) {
	SC_THREAD(thread_process);
	ld.set_command(tlm::TLM_READ_COMMAND);
	ld.set_data_ptr(reinterpret_cast<unsigned char*>(&data));
	ld.set_data_length(4);
	ld.set_dmi_allowed(true);
	st.set_command(tlm::TLM_WRITE_COMMAND);
	st.set_data_ptr(reinterpret_cast<unsigned char*>(&data));
	st.set_data_length(4);
	st.set_dmi_allowed(true);
    }

    void load_program(std::string prog) {
	chkapi_errorsp->reset();
	chkapi_l_program_load(uicore, prog, 1);
	if (chkapi_errorsp->state() != chkapi_OK)
	    std::cerr << *chkapi_errorsp << std::endl;
    }

    void show_result(std::ostream& os) {
	for(int i = 0; i < 10; i++) {
	    int ival;
	    dbg_access(8192+i, ival, 1);
	    os << "some_array[" << i << "] = " << ival << std::endl;
	}
    }

    // Querying DMI pointer may fail
    // DMI pointer can be invalidated upstream
    void get_dmi_ptr() {
	tlm::tlm_dmi dmi_properties;
	if (socket->get_direct_mem_ptr(st, dmi_properties))
	    mem = (int*)dmi_properties.get_dmi_ptr();
    }

    void dbg_access(unsigned addr, int& val, bool read) {
	if (read) {
	    ld.set_address(addr);
	    ld.set_response_status(tlm::TLM_INCOMPLETE_RESPONSE);
	    socket->transport_dbg(ld);
	    val = data;
	}
	else {
	    data = val;
	    st.set_address(addr);
	    st.set_response_status(tlm::TLM_INCOMPLETE_RESPONSE);
	    socket->transport_dbg(st);
	}
    }

    void store(unsigned addr, int val) {
	sc_core::sc_time delay = sc_core::sc_time(10, sc_core::SC_NS);
#if USE_DMI
	if (!mem)
	    get_dmi_ptr();
	mem[addr] = val;
#else
	data = val;
	st.set_address(addr);
	st.set_response_status(tlm::TLM_INCOMPLETE_RESPONSE);
	socket->b_transport(st, delay);
#endif
	// Check status
#if DO_WAIT
	wait(delay);
#endif
    }

    int load(unsigned addr) {
	sc_core::sc_time delay = sc_core::sc_time(10, sc_core::SC_NS);
#if USE_DMI
	if (!mem)
	    get_dmi_ptr();
	data = mem[addr];
#else
	ld.set_address(addr);
	ld.set_response_status(tlm::TLM_INCOMPLETE_RESPONSE);
	socket->b_transport(ld, delay);
#endif
	// Check status
#if DO_WAIT
	wait(delay);
#endif
	return data;
    }

    void thread_process() {
	load_program(prog);
	show_result(std::cout);
#if SINGLE_STEP
	for(int i = 0; i < STEPS; i++) {
	    chkapi_errorsp->reset();
	    chkapi_l_program_step_master(uicore, 1);
	    if (chkapi_errorsp->state() != chkapi_OK) {
		std::cerr << *chkapi_errorsp << std::endl;
		break;
	    }
	}
#else
	chkapi_errorsp->reset();
	chkapi_l_program_step_master(uicore, STEPS, 0x7fffffff, ssmd_mic, 0, 0);
	if (chkapi_errorsp->state() != chkapi_OK)
	    std::cerr << *chkapi_errorsp << std::endl;
#endif
	long long cycle_count = 0;
	chkapi_l_program_query_sys_cyclecount(uicore, cycle_count);
	std::cout << "cc = " << cycle_count << std::endl;
	show_result(std::cout);
	std::ofstream os("result.dat");
	show_result(os);
	os.close();
    }
};

#endif
