#ifndef __tlm2_example_top__
#define __tlm2_example_top__

template <typename T, unsigned sz>
SC_MODULE(Top)
{
    T* initiator;
    Memory<sz>* memory;

    SC_HAS_PROCESS(Top);
    Top(sc_core::sc_module_name instname, std::string iprog)
    {
	initiator = new T("initiator", iprog);
	memory = new Memory<sz>("memory");

	initiator->socket.bind(memory->socket);
    }
};

#endif
