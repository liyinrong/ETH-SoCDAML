#include "Mdl_tmicro.h"

class DMA_controller {

    tmicro* core;
    unsigned dma_from_address;
    unsigned dma_to_address;
    unsigned dma_count;
    int dma_busy;
    int dma_reset;

public:

    void transfer() {
	if (dma_reset)
	    core->dma_ready = 0;
	if (dma_busy) {
	    if (dma_count) {
		core->DM[dma_to_address++] = core->DM[dma_from_address++];
		dma_count--;
	    }
	    if (dma_count == 0) {
		dma_busy = 0;
		core->dma_ready = 1;
	    }
	}
    }

    void decode() {
	// Read DMA command on port 'dma_cmd'
	switch(core->dma_cmd.value()) {
	case 0:
	    dma_reset = 1;
	    break;
	case 1:
	    if (!dma_busy)
		dma_from_address = core->dma_data.to_unsigned();
	    break;
	case 2:
	    if (!dma_busy)
		dma_to_address = core->dma_data.to_unsigned();
	    break;
	case 3:
	    if (!dma_busy && dma_reset) {
		dma_count = core->dma_data.to_unsigned();
		dma_busy = 1;
		dma_reset = 0;
	    }
	    break;
	}
    }

    DMA_controller(tmicro* icore) :
	core(icore), dma_from_address(0), dma_to_address(0),
	dma_count(0), dma_busy(0), dma_reset(1) {}
};

static DMA_controller* dma;

int dma_init(tmicro* core)
{
    dma = new DMA_controller(core);
    return chkapi_OK;
}

int dma_pre(tmicro* core)
{
    dma->transfer();
    return chkapi_OK;
}

int dma_post(tmicro* core)
{
    dma->decode();
    return chkapi_OK;
}

int dma_fini(tmicro* core)
{
    delete dma;
    return chkapi_OK;
}
