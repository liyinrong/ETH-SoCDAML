/*
-- File : tzscale_div.p
--
-- Contents : Definition of multi cycle divide unit.
--
-- Copyright (c) 2015-2016 Synopsys, Inc. This Synopsys processor model 
-- captures an ASIP Designer Design Technique. The model and all associated 
-- documentation are proprietary to Synopsys, Inc. and may only be used 
-- pursuant to the terms and conditions of a written license agreement with 
-- Synopsys, Inc.  All other use, reproduction, modification, or distribution 
-- of the Synopsys processor model or the associated  documentation is 
-- strictly prohibited. 
*/


// Behavioural models for IS ISS  

w32 divs(w32 a, w32 b) { return a / b; }
w32 rems(w32 a, w32 b) { return a % b; }

w32 divu(w32 a, w32 b) { return (uint32_t)a / (uint32_t)b; }
w32 remu(w32 a, w32 b) { return (uint32_t)a % (uint32_t)b; }

// Implementation model


uint64_t div_step(uint64_t pa, uint32_t b)
{
    uint64_t new_pa = pa << 1;
    uint33_t diff = (uint33_t)(new_pa[63:32]) - b;
    if (diff[32] == 0) {
        new_pa[63:32] = diff;
        new_pa[0] = 1;
    }
    return new_pa;
}

w32 div_clb(w32 a) // count number redundant leading bits
{
    uint5_t r;
    w32 tmp = a;
    if      (tmp[31: 0] == 0) r = 31;
    else if (tmp[31: 1] == 0) r = 30;
    else if (tmp[31: 2] == 0) r = 29;
    else if (tmp[31: 3] == 0) r = 28;
    else if (tmp[31: 4] == 0) r = 27;
    else if (tmp[31: 5] == 0) r = 26;
    else if (tmp[31: 6] == 0) r = 25;
    else if (tmp[31: 7] == 0) r = 24;
    else if (tmp[31: 8] == 0) r = 23;
    else if (tmp[31: 9] == 0) r = 22;

    else if (tmp[31:10] == 0) r = 21;
    else if (tmp[31:11] == 0) r = 20;
    else if (tmp[31:12] == 0) r = 19;
    else if (tmp[31:13] == 0) r = 18;
    else if (tmp[31:14] == 0) r = 17;
    else if (tmp[31:15] == 0) r = 16;
    else if (tmp[31:16] == 0) r = 15;
    else if (tmp[31:17] == 0) r = 14;
    else if (tmp[31:18] == 0) r = 13;
    else if (tmp[31:19] == 0) r = 12;

    else if (tmp[31:20] == 0) r = 11;
    else if (tmp[31:21] == 0) r = 10;
    else if (tmp[31:22] == 0) r =  9;
    else if (tmp[31:23] == 0) r =  8;
    else if (tmp[31:24] == 0) r =  7;
    else if (tmp[31:25] == 0) r =  6;
    else if (tmp[31:26] == 0) r =  5;
    else if (tmp[31:27] == 0) r =  4;
    else if (tmp[31:28] == 0) r =  3;
    else if (tmp[31:29] == 0) r =  2;

    else if (tmp[31:30] == 0) r =  1;
    else                      r =  0;

    return r;
}


multicycle_fu div 
{
    reg cnt<uint6_t>;
    reg PA<uint64_t>;
    reg B<uint32_t>;
    reg Q_addr_reg<uint5_t>;
    reg is_div<uint1_t>;
    reg is_neg_div<uint1_t>;
    reg is_neg_rem<uint1_t>;


    void process () {
        uint6_t new_cnt = 0;
        int32_t divA_loc;
        int32_t divB_loc;
        int32_t div_res;
        int32_t rem_res;
        
        uint1_t div_start = (cnt == 0) && 
                            (divC_divu_divA_divB_div_DE_sig || 
                             divC_divs_divA_divB_div_DE_sig || 
                             divC_remu_divA_divB_div_DE_sig || 
                             divC_rems_divA_divB_div_DE_sig );
        if (div_start && (cnt == 0)) {
            
            divA_loc = divA;
            
            if( divC_divs_divA_divB_div_DE_sig || 
                divC_rems_divA_divB_div_DE_sig ) {
                
                if(divA < 0) { divA_loc = -divA; }
                else         { divA_loc =  divA; }
                
                if(divB < 0) { divB_loc = -divB; }
                else         { divB_loc =  divB; }
                
                is_neg_div = (divA<0 ^ divB<0) ? 1:0;
                is_neg_rem = (divA<0)? 1:0;
            }  
            else {
                divA_loc =  divA;
                divB_loc =  divB;  
                is_neg_div  = 0;
                is_neg_rem  = 0;
            }     
            
            uint5_t n = div_clb((uint32_t)divA_loc);
            PA = (uint32_t)divA_loc << n;
            B = divB_loc;
            
            new_cnt = 33 - n;
            Q_addr_reg = div_wad;
            is_div = divC_divs_divA_divB_div_DE_sig || 
                     divC_divu_divA_divB_div_DE_sig;
                     
        } else if (cnt > 1) {
            PA = div_step(PA, B);
            new_cnt = cnt - 1;
        } else if (cnt == 1) {
            
            uint64_t pa = PA;
            
            if(is_div) {
                if( is_neg_div ) { div_res = -pa[31:0]; is_neg_div = 0; }
                else             { div_res =  pa[31:0];                 }
                R[Q_addr_reg] = w1 = div_res;
            }
            else {
                if( is_neg_rem ) { rem_res = -pa[63:32]; is_neg_rem = 0; }
                else             { rem_res =  pa[63:32];                 }
                R[Q_addr_reg] = w1 = rem_res;
            }
            new_cnt = cnt - 1;
        }
            
        cnt = new_cnt;
        div_busy = div_start || cnt > 0;
        div_cnt = cnt > 0;
        div_addr = div_start ? 0 : Q_addr_reg; 
        div_wnc = (cnt == 2);
        div_new = (divC_divu_divA_divB_div_DE_sig || 
                   divC_divs_divA_divB_div_DE_sig || 
                   divC_remu_divA_divB_div_DE_sig || 
                   divC_rems_divA_divB_div_DE_sig );
    }
}

