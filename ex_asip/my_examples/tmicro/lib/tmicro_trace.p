/*
-- File : tmicro_trace.p
--
-- Contents : PDG description of trace module in the Tmicro core.
--
-- Copyright (c) 2014-2018 Synopsys, Inc. This Synopsys processor model 
-- captures an ASIP Designer Design Technique. The model and all associated 
-- documentation are proprietary to Synopsys, Inc. and may only be used 
-- pursuant to the terms and conditions of a written license agreement with 
-- Synopsys, Inc.  All other use, reproduction, modification, or distribution 
-- of the Synopsys processor model or the associated  documentation is 
-- strictly prohibited. 
*/

#define NUM_ENTRIES 128

//--------------------------------------------------------------------
// Short description:
// This module is a (very simple) implementation of a trace buffer.
// By default it uses a register file with 128 entries, but one could
// also implement it in an (external) RAM (with higher capacity).
// The trace buffer is implemented as a ring buffer that holds the last
// NUM_ENTRIES events. The number of entries is reflected in a
// traceCount register, which holds the max. value once the buffer
// wraps around.
// It has a simple configuration register, from that currently
// just bit 0 is used as global trace enable:
// Trace config register:
// 15 14 13 12 11 10  9  8  7  6  5  4  3  2  1  0
//                                              enab
// From the SW-side, tracing is controlled and read out through
// the OCD interface. Here 3 signals are used (to be declared as
// NML-transitories), which are driven from the debug_controller
// module. This is configured in the go options by the 
// 'ocd_extra_processor_command' option, with the values
// "dbg_trace_rd" "dbg_trace_rd_cnt" "dbg_trace_cfg_wr".
// A read of the trace buffer works as follows:
// - Read the number of entries with the DBG_TRACE_RD_CNT command.
//   It returns traceCount. Value is output on ocd_data.
// - Loop that number of times reading each entry with the
//   DBG_TRACE_RD command. Value is output on ocd_data,
//   and the last event stored in the buffer is output first.
//
// Possible extentions:
// - Trace compression (store only relative PC changes, etc.) 
// - Other trace sources (watchpoints, reg changes, etc.)
//--------------------------------------------------------------------


io_interface trace_module (trace_data_valid, trace_data)
{

// local registers
    reg traceMem[NUM_ENTRIES]<word, addr>;   // <dtype,atype>
    reg traceWrPtr<addr>;      hw_init traceWrPtr = 0;
    reg traceRdPtr<addr>;      hw_init traceRdPtr = 0;
    reg traceCount<addr>;      hw_init traceCount = 0;
    reg traceCfgReg<uint16_t>; hw_init traceCfgReg = 0;
    trn trnMem_r<word>;
    trn trnMem_w<word>;


//  process functions
    void process_result() {
    }

    void process_request() {

        //------------------------------------
        // write to trace buffer:
        //------------------------------------
        if (traceCfgReg[0]) {
            // trace enabled

            if (trace_data_valid) {
                // PC trace
                traceMem[traceWrPtr] = trnMem_w = trace_data;
                // adjust write pointer
                if (traceWrPtr == (NUM_ENTRIES-1)) {
                    traceWrPtr = 0;
                } else {
                    traceWrPtr = traceWrPtr + 1;
                }
                if (traceCount < NUM_ENTRIES) {
                    // limit to NUM_ENTRIES entries
                    traceCount = traceCount + 1;
                }
            }
        }

        //------------------------------------
        // read from trace buffer:
        //------------------------------------
        if (dbg_trace_rd) {
            trnMem_r = traceMem[traceRdPtr];
            ocd_data = ocd_data_w = trnMem_r;
            // decrement RdPtr after a read
            if (traceRdPtr == 0) {
                traceRdPtr = (NUM_ENTRIES-1);
            } else {
                traceRdPtr = traceRdPtr - 1;
            }
        }
        if (dbg_trace_rd_cnt) {
            // return traceCount
            ocd_data = ocd_data_w = traceCount;
            // and adjust RdPtr to last write position
            // for first read (one below WrPtr)
            if (traceCount > 0) {
                if (traceWrPtr == 0) {
                    traceRdPtr = (NUM_ENTRIES-1);
                } else {
                    traceRdPtr = traceWrPtr - 1;
                }
            }
        }

        //------------------------------------
        // write of configuration register:
        //------------------------------------
        if (dbg_trace_cfg_wr) {
            traceCfgReg = ocd_data_r = ocd_data;
        }
    }
}

