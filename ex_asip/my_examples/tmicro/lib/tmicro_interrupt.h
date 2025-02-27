/*
-- File : tmicro_interrupt.h
--
-- Contents : Functions used to control interrupts.
--
-- Copyright (c) 2014-2016 Synopsys, Inc. This Synopsys processor model 
-- captures an ASIP Designer Design Technique. The model and all associated 
-- documentation are proprietary to Synopsys, Inc. and may only be used 
-- pursuant to the terms and conditions of a written license agreement with 
-- Synopsys, Inc.  All other use, reproduction, modification, or distribution 
-- of the Synopsys processor model or the associated  documentation is 
-- strictly prohibited. 
*/





#ifndef _tmicro_interrupt_h
#define _tmicro_interrupt_h

inline assembly void interrupt_mask(int chess_storage() msk)
       properties(loop_free functional)
{
     asm_begin
         mvi im,msk
     asm_end
}

inline assembly void enable_interrupts()  properties(loop_free functional)
{
    asm_begin
        ei
    asm_end
}

inline assembly void disable_interrupts()  properties(loop_free functional)
{
    asm_begin
        di
    asm_end
}

#endif /* _tmicro_interrupt_h */
