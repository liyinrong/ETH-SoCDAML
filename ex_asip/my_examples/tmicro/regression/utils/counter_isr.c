/*
-- File : isr_init.s
-- Contents : Interrupt service routine that increments a static counter.
-- Copyright (c) 2014-2016 Synopsys, Inc. This Synopsys processor model 
-- captures an ASIP Designer Design Technique. The model and all associated 
-- documentation are proprietary to Synopsys, Inc. and may only be used 
-- pursuant to the terms and conditions of a written license agreement with 
-- Synopsys, Inc.  All other use, reproduction, modification, or distribution 
-- of the Synopsys processor model or the associated  documentation is 
-- strictly prohibited. 
*/




#include "counter_isr.h"

static unsigned isr_count = 0;

extern "C" void counter_isr() property(isr) 
{ 
    isr_count++; 
}


