/*
-- File : tmicro_pcu.p
--
-- Contents : Behavioural model for the program control unit of the
--            tmicro core.
--
-- Copyright (c) 2014-2016 Synopsys, Inc. This Synopsys processor model
-- captures an ASIP Designer Design Technique. The model and all associated
-- documentation are proprietary to Synopsys, Inc. and may only be used
-- pursuant to the terms and conditions of a written license agreement with
-- Synopsys, Inc.  All other use, reproduction, modification, or distribution
-- of the Synopsys processor model or the associated  documentation is
-- strictly prohibited.
*/


#include "isg/tmicro_pdg_encoding.p"

#if defined(TEST_WAITSTATE)
wait_state_repeat;
#endif

pcu_storages {
    reg reg_booting<bool>;     // is set during first cycle after reset
    reg reg_halted<bool>;      // is set when processor is in halted state
    reg reg_fetch<bool>;       // delayed  fetch signal
    reg reg_f_instr<iword>;    // delayed fetched instruction
    trn trn_interrupted<bool>; // interrupt is accepted in current cycle
    trn debug_mode<bool>;      // set when debug request is accepted
    reg reg_debug_mode<bool>;  // delayed debug_mode signal
}

hw_init reg_booting = 1;

bool check_interrupts(uint8_t  i_req,     // interrupt requests
                      uint8_t  i_mask,    // interrupt mask
                      uint4_t& i_vector,  // interrupt vector
                      uint8_t& i_ack)     // interrupt acknowledge
{
    uint8_t mreq = i_req & i_mask;
    if (i_req[0]) {       // never mask ireq 0 (reset)
        i_vector = 0;
        i_ack = "0000_0001";
        return 1;
    } else if (mreq[1]) {
        i_vector = 2;
        i_ack = "0000_0010";
        return 1;
    } else if (mreq[2]) {
        i_vector = 4;
        i_ack = "0000_0100";
        return 1;
    } else if (mreq[3]) {
        i_vector = 6;
        i_ack = "0000_1000";
        return 1;
    } else if (mreq[4]) {
        i_vector = 8;
        i_ack = "0001_0000";
        return 1;
    } else if (mreq[5]) {
        i_vector = 10;
        i_ack = "0010_0000";
        return 1;
    } else if (mreq[6]) {
        i_vector = 12;
        i_ack = "0100_0000";
        return 1;
    } else if (mreq[7]) {
        i_vector = 14;
        i_ack = "1000_0000";
        return 1;
    }
    else
        return 0;
}

#ifdef HWSW_DEBUG
ubyte decode_instr_size(iword ins)
{
      ubyte bits_cnt = 16;
      if (
           ( ins[15:0] == "0001011000111000")
        || ( ins[15:3] == "0010010000010")
        || ( ins[15:4] == "001001000001" && ins[2:1] == "01")
        || ( ins[15:4] == "001001000001" && ins[2:1] == "10")
        || ( ins[15:4] == "001001000001" && ins[1:0] == "10")
        || ( ins[15:4] == "001011101001" && ins[2:0] == "000")
        || ( ins[15:5] == "00101110100" && ins[3:0] == "0000")
        || ( ins[15:3] == "0010111011011") 
         )   bits_cnt  = 32;
      if (
           ( ins[15:0] == "0010111011100000")
         )  bits_cnt = 48;
      return bits_cnt;       
}
#endif

void tmicro::user_issue()
{
    iword f_instr = reg_f_instr;

    bool jcr_taken = jcr && tcc;
    bool jc_taken  = jc  && tcc;

    // force issue_ins low when jcr or jc  is taken
    bool issue_ins =  issue_sig() && !jcr_taken && !jc_taken;

    // save fetched instruction
    if (reg_fetch)
        f_instr = pm_read;

    // check interrupts
    bool interruptible = (issue_ins && diid==0 && die1==0);
    debug_mode = ocd_req && interruptible;
    uint4_t i_vector = 0;
    uint8_t i_ack = 0;
    trn_interrupted = 0;
    if (interruptible && !ocd_dis_int && !debug_mode && (ier = IE)==1)
        trn_interrupted = check_interrupts(ireq_pcu_inp,imr=IM,i_vector,i_ack);

    bool stop_issue =
        reg_booting || reg_halted || debug_mode || reg_debug_mode;

    if (jcr_taken)
        kill_instr();

    // issue instruction
#ifdef HWSW_DEBUG
    instr_bits = 16;
#endif
#if defined(__go__) 
    trace_data_valid = false;
#endif
    if (trn_interrupted) {
        iword swi_instr = pdg_encoding_swi(i_vector);
#ifdef HWSW_DEBUG
        instr_bits = decode_instr_size(swi_instr);
#endif
#if defined(__go__) 
        trace_data_valid = true;
#endif
        issue_instr(0,0,swi_instr);
    }
    else if (ocd_exe) {
        ocd_instr_r = ocd_instr;
        issue_instr(0,0,ocd_instr_r);
    }
    else if (mword_sig()) {
        add_mword(f_instr);
    }
    else if (issue_ins && !stop_issue) {
#ifdef HWSW_DEBUG
        instr_bits = decode_instr_size(f_instr);
#endif
#if defined(__go__) 
        trace_data_valid = true;
#endif
        issue_instr(pcr = PC,1,f_instr);
    }

    halted_out = reg_halted;
    debug_out = reg_debug_mode;
    iack_pcu_out = i_ack;
    reg_debug_mode = debug_mode;
    reg_f_instr = f_instr;
}

void tmicro::user_next_pc()
{
    lnk_if = pcr = PC;
    lnk_pf = pcr + 1;

    // End of loop test
    uint1_t lp_jump = 0;
    uint1_t lp_done = 0;
    uint1_t lp_update = 0;
    addr tlcr = 0;
    addr tlsr = 0;
    addr tler = 0;
    lfra = LF;
    if (lfra < 3) {
        tlcr = lcr = LC[lfra];
        tlsr = lsr = LS[lfra];
        tler = ler = LE[lfra];
        if (pcr == (uint16_t)tler) {
            if(tlcr == 1)
                lp_done = 1;
            else
                lp_jump = 1;
        }
    }

    // Next PC computation
    bool new_fetch = !(trn_interrupted || reg_halted || debug_mode);
    addr nextpc = pcr;
    if (jump_offs_sig)
        nextpc = pcr + offs;    // relative jump
    else if (jump_trgt_sig)
        nextpc = trgt;          // absolute jump
    else {
        new_fetch &= issue_sig() || mword_sig();
        bool advance_pc = new_fetch && !(reg_booting || reg_debug_mode);
        if (advance_pc){
            lp_update = 1;          // no LC or LF update otherwise
            if (lp_jump)
                nextpc = tlsr;
            else
                nextpc = pcr + 1;
        }
    }
    if (lp_update) {
        if (lp_jump)
            LC[lfra] = lcw = tlcr - 1;
        if (lp_done)
            LF = lfw = lfra - 1;
    }

    // Initiate fetch
    if (new_fetch)
        pm_read`1` = PM[pm_addr = nextpc]`0`;
    PC = pcw = nextpc;

    reg_fetch = new_fetch;
    reg_booting = 0;
    if (vd_halt_ID_sig) {
        reg_halted = 1;
    } else if (trn_interrupted) {
        reg_halted = 0;
    }

#if defined(__go__) 
    //---- PC Tracing -----
    trace_data = pcr;
    //-------------------------
#endif
}

