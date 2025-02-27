// File generated by checkers version 09R1 6.2.6, Tue Aug 18 09:25:04 2009
// Copyright(c) 1996-2009 Target Compiler Technologies NV
// All rights reserved.
// checkers -B -M -ctzscale_ia.ccf tzscale

// Processor: tzscale

#ifndef __Mdl_tzscale_iapcu_user_c__
#define __Mdl_tzscale_iapcu_user_c__

#include "checkers_enum.h"
#include "Mdl_tzscale.h"

// This functions is called at the end of simulating an instruction and
// must set the program counter to the value for the next step. It has the
// following signature:
// 
// inline void <processor>_user_next_pc(<processor>* mdl, unsigned next_pc,
//                                      unsigned nw,
//                                      Checkers_next_pc_type npt);
// 
// 'mdl' is a pointer to the processor model. 'next_pc' is the next program
// counter value as calculated during simulation of the current
// instruction. 'nw' is the number of words of the instruction being
// executed. 'npt' is an enum indicating how the 'next_pc' value was
// calculated. Possible values are:
// 
// npt_increment : 'next_pc' is the address of the next instruction on the
//     increment path.
// 
// npt_jump : 'next_pc' is the target address of a (un)conditional
//     jump. For conditional jumps this can be the actual target address or
//     the address of the next instruction on the increment path.
// 
// npt_loop_end : 'next_pc' is the result of the 'end-of-loop' functions
//     and can be address of the first instruction in the loop or of the
//     first instruction after the loop.
// 
// npt_cntrl : 'next_pc' is the result of another controller instruction
//     (type 4 above).
// 
// npt_delay_slot : 'next_pc' is the address of the next instruction in the
//     delay slots of an instruction. 'npt' is set to 'npt_delay_slot' for
//     all but the last delay-slot instruction. For this last delay-slot
//     instruction 'npt' is set according to the type of the instruction
//     having the delay slots. (e.g. to npt_jump for a jump with delay
//     slots). 

inline void tzscale_user_next_pc(tzscale* mdl, unsigned next_pc, unsigned nw, Checkers_next_pc_type npt)
{
    /* User code here */
    mdl->PC = next_pc;
}

#endif

