/*
-- File : tmicro_chess.h
--
-- Contents : Chess specific header-file for the Tmicro core.
--
-- Copyright (c) 2014-2016 Synopsys, Inc. This Synopsys processor model 
-- captures an ASIP Designer Design Technique. The model and all associated 
-- documentation are proprietary to Synopsys, Inc. and may only be used 
-- pursuant to the terms and conditions of a written license agreement with 
-- Synopsys, Inc.  All other use, reproduction, modification, or distribution 
-- of the Synopsys processor model or the associated  documentation is 
-- strictly prohibited. 
*/




#ifndef _tmicro_chess_h
#define _tmicro_chess_h

#include "tmicro.h"

chess_properties {

 // default memory
    default_memory     : DM;

 // stack properties
    stack_pointer      : SP;
    sp_location        : free;

 // spill properties
    spill_memory       : DM;
    sp_offset_type     : nint9;

 // special purpose registers
    link_register      : LR;
    status_register    : CND, CB;
    reserved           : SRa, SRb;
    reserved           : IE, IM; // , IREQ;
    reserved           : LF, LS, LE, LC;
    saved_on_interrupt : SR;
    isr_link_register  : ILR;
    reserved           : ISR;

 // stop when instruction enters this stage
    breakpoint_focus_stage : E1;

 // avoid 2 cycle loads as side effect
    no_redundant_loads : PM;

 // number of hardware loop levels exposed to compiler
    loop_levels        : 2;

 // threshold for automatic rewriting of conditions. 
    small_select_threshold : 3;

 // type promotions
    promotion word  : strong { addr, iword };
    promotion addr  : strong { word, iword };

 // argument passing registers, reserve R7 for indirect calls
    allow_callee_saved_inputs;
    argument_registers  : R0, R1, R2, R3, R4, R5, R6;

 // bit fields
    bitfield_underlying_type : int;

 // complementary tests
    complements : bool lts(word,word), bool ges (word,word);
    complements : bool ltu(word,word), bool geu (word,word);
    complements : bool gts(word,word), bool les (word,word);
    complements : bool gtu(word,word), bool leu (word,word);
    complements : bool eq (word,word), bool ne  (word,word);
}


#include "tmicro_int.h"
#include "tmicro_long.h"
#include "tmicro_longlong.h"
#include "tmicro_bitfield.h"
#include "tmicro_rewrite.h"

#include "tmicro_interrupt.h"

inline void chess_memory_copy(volatile void* dst,
                              const volatile void* src,
                              const int sz,
                              const int algn)
{
    int* pd = (int*)dst;
    int* ps = (int*)src;
    int ss = sz / sizeof(int);
    if  (ss < 5) {
        if (ss >= 1) *pd++ = *ps++;
        if (ss >= 2) *pd++ = *ps++;
        if (ss >= 3) *pd++ = *ps++;
        if (ss >= 4) *pd = *ps;
    }
    else 
        for (int ii = 0; ii < ss; ii++) chess_loop_range(1,) pd[ii] = ps[ii];
}

#endif /* _tmicro_chess_h */
