/*
-- File : tzscale_pcu.p
--
-- Contents : Definition of the tzscale controller in PDG.
--
-- Copyright (c) 2015-2016 Synopsys, Inc. This Synopsys processor model 
-- captures an ASIP Designer Design Technique. The model and all associated 
-- documentation are proprietary to Synopsys, Inc. and may only be used 
-- pursuant to the terms and conditions of a written license agreement with 
-- Synopsys, Inc.  All other use, reproduction, modification, or distribution 
-- of the Synopsys processor model or the associated  documentation is 
-- strictly prohibited. 
*/

#include "tzscale_define.h"

pcu_storages {
  reg reg_booting<bool>;
  trn pc_step<uint3_t>;

#ifdef HAS_OCD
  trn debug_mode<bool>;      // set when debug request is accepted
  reg reg_debug_mode<bool>;  // delayed debug_mode signal
#endif

}

hw_init reg_booting = 1;

void tzscale::user_issue()
{
    pcr = PC;
    lnk = pcr;

    bool cjump_taken = jump_of21_cd_sig;

    bool issue_ins = issue_sig() && !hw_stall_sig() && !cjump_taken;
    bool interruptible = issue_ins;

    pc_step = 0;

#ifdef HAS_OCD
    debug_mode = ocd_req && interruptible;
    bool no_issue = reg_booting || debug_mode || reg_debug_mode;

    if (ocd_exe) {
        ocd_instr_r = ocd_instr;
        issue_instr(0,0,ocd_instr_r[7:0],ocd_instr_r[15:8],ocd_instr_r[23:16],ocd_instr_r[31:24]);
    }
    else 
#else
    bool no_issue = reg_booting ;
#endif

    if (issue_ins && !no_issue) {
        iword ii =  pm_rd;

#ifdef ISA_COMPRESSED        
        //32 bit instructions have 2 MSBs set to "11", step size is 4 bytes for 32 bit instructions
        //and 2 bytes for 16 bit instructions.

        pc_step = (ii[1:0] == 3) ? 4 : 2;

        //for 16 bit instructions, issue the second half as zero.
        if( ii[1:0] != 3) { issue_instr(pcr,1,ii[7:0],ii[15:8],0,        0        ); }
        else              { issue_instr(pcr,1,ii[7:0],ii[15:8],ii[23:16],ii[31:24]); }
#else

        pc_step = 4;
        issue_instr(pcr,1,ii[7:0],ii[15:8],ii[23:16],ii[31:24]);

#endif
        
        DEBUG_PRINT("II: pc_step: %d %d  %x",pc_step, pcr,ii);
    }
    else {
        pc_step = 0;
    }

#ifdef HAS_OCD
    reg_debug_mode = debug_mode;
#endif
}

void tzscale::user_next_pc()
{
 // next PC computation

    addr next_pc = pcr;

#ifdef HAS_OCD
    bool new_fetch = !debug_mode;
#else
    bool new_fetch = 1;
#endif

    if (!hw_stall_sig()) {
        if (jump_of21_cd_sig)
            next_pc = pcr + of21_cd;
        else if (jump_trgt_sig)
            next_pc = trgt & ~(addr)1; // force LSB to zero, accord. to RISC-V spec.
        else if (jump_of21_sig)
            next_pc = pcr + of21;
#ifdef HAS_OCD
        else if (new_fetch && !(reg_booting || reg_debug_mode))
#else
        else if (new_fetch && !reg_booting )
#endif
            next_pc = pcr + pc_step;
    }

    DEBUG_PRINT("NPC: sigs=%d%d%d%d, pcr=%d, next_pc=%d",
                 hw_stall_sig(),jump_of21_cd_sig,jump_of21_sig,jump_trgt_sig, 
                 pcr,next_pc);
                      
    PC = pcw = next_pc;
        
    if (reg_booting) reg_booting = 0;

 // instruction pre fetch  

    if (new_fetch)
        pm_rd`1` = PM[pm_addr = next_pc]`1`;
}

