// File generated by checkers version 08R1 6.1.9, Thu Jan 15 09:54:53 2009
// Copyright(c) 1996-2011 Target Compiler Technologies N.V.
// All rights reserved.
// checkers -B -I../lib -I../lib/isg -M -ctmicro_ia.ccf tmicro

// Processor: tmicro

#ifndef __tmicro_iapcu_user_c__
#define __tmicro_iapcu_user_c__

#include "checkers_enum.h"
#include "Mdl_tmicro.h"

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

inline void tmicro_user_next_pc(tmicro* mdl, unsigned next_pc, unsigned nw, Checkers_next_pc_type npt)
{
    /* User code here */
    mdl->PC = next_pc;
}

// Because Checkers can analyze the program to be simulated, it can
// identify the last instructions in a hardware do-loop and call the
// end-of-loop check only when needed. It allows for a fast way to
// implement hardware do-loops because otherwise the end-of-loop check must
// be done each cycle in the next-pc function.
// 
// This function has the following signature: 
// 
// inline unsigned <processor>_loop_end(<processor>* mdl, unsigned nw);
// 
// 'mdl' is a pointer to the processor model. 'nw' is the number of words
// of the instruction being executed and can be used to calculate the
// program counter value when the loop ends. 
// 
// The function must return the next value of the program counter.
// 
// An end-of-loop check functions is optional. It must be enabled by
// checking the 'Use specific end-of-loop function' check-box on the
// 'Retargeting -> IA mode' tab in Checkers_cfg.
// 
inline unsigned tmicro_loop_end(tmicro* mdl, unsigned nw)
{
    int lf = mdl->LF.value();
    if (lf != 3) {
        if (mdl->LC[lf].value() != 1) {  // jump back
            mdl->LC[lf] = mdl->LC[lf].value() - 1;
            return mdl->LS[lf].value();
        }
        else { // exit loop
            mdl->LF = lf - 1;
        }
    }
    return mdl->PC.to_unsigned() + nw;
}

// This function has the following signature for absolute jumps:
// 
// inline unsigned <processor>_<jump-name>(<processor>* mdl, unsigned nw);
// 
// and this signature for relative jumps:
// 
// inline unsigned <processor>_<jump-name>(<processor>* mdl, unsigned nw,
//                                         int pc_offset);
// 
// 'mdl' is a pointer to the processor model. 'nw' is the number of words
// of the instruction being executed and can be used to calculate the
// program counter value on the increment path. 'pc_offset' if the
// 'chess_pc_offset' value as specified in the nML.
// 
// The function must return the next value of the program counter.
// 
inline unsigned tmicro_vd_halt_ID(tmicro* mdl, unsigned nw)
{
    /* User code here */
    return mdl->PC.to_unsigned(); // keep looping on sleep instruction
}

#endif

