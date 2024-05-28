/*
-- File : tzscale_io.p
--
-- Contents : Definition of the Tzscale IO interface.
-- This IO interfaces merges the unaligned access from DMb DMh DMw

-- Copyright (c) 2015-2016 Synopsys, Inc. This Synopsys processor model 
-- captures an ASIP Designer Design Technique. The model and all associated 
-- documentation are proprietary to Synopsys, Inc. and may only be used 
-- pursuant to the terms and conditions of a written license agreement with 
-- Synopsys, Inc.  All other use, reproduction, modification, or distribution 
-- of the Synopsys processor model or the associated  documentation is 
-- strictly prohibited. 
*/



#include "tzscale_define.h"
#define daddr uint20_t


//this IO Interface enables usage of unalligned memory accesses.

io_interface dm_in (DMb) {
    
    // external interface 1: 2 banks of SRAM
    
    trn st_dm0<v4uint1>; // 4 bit as byte write mask
    trn st_dm1<v4uint1>;
    
    mem DM0[2**(DM_SIZE_NBIT-3),1]<v4uint8,daddr> access {
        ld_dm0: dm0_rd`1` = DM0[dm0_addr]`1`;
        st_dm0: DM0[dm0_addr] = dm0_wr;
    };

    mem DM1[2**(DM_SIZE_NBIT-3),1]<v4uint8,daddr> access {
        ld_dm1: dm1_rd`1` = DM1[dm1_addr]`1`;
        st_dm1: DM1[dm1_addr] = dm1_wr;
    };
    
    
    // local storage
    
    reg ld_dmw_ff<uint1_t>;
    reg ld_dmh_ff<uint1_t>;
    reg ld_dmb_ff<uint1_t>;
    reg col_ff<uint3_t>;
        
    // process functions
    
    void process_result() {
        
        uint64_t t1 = dm1_rd::dm0_rd;
        
        uint32_t t2;
        switch (col_ff) {
            case  0: t2 = t1[ 31: 0]; break;
            case  1: t2 = t1[ 39: 8]; break;
            case  2: t2 = t1[ 47:16]; break;
            case  3: t2 = t1[ 55:24]; break;
            case  4: t2 = t1[ 63:32]; break;
            case  5: t2 = t1[  7:0]::t1[63:40]; break;
            case  6: t2 = t1[ 15:0]::t1[63:48]; break;
            case  7: t2 = t1[ 23:0]::t1[63:56]; break;
        }
        
        if (ld_dmw_ff) dmw_rd = (uint32_t)t2;
        if (ld_dmh_ff) dmh_rd = (uint16_t)t2;
        if (ld_dmb_ff) dmb_rd = (uint8_t )t2;
    }
    
    void process_request() {
        
        uint20_t row = dm_addr[23:3];
        uint4_t  col = dm_addr[ 2:0];
        
        // addr (read or write)
        bool fold = (col > 3);
        dm0_addr = fold ? (row+1) : row;
        dm1_addr = row;
        
        // write data
        
        uint32_t t2;
        if (st_dmw) {
            uint32_t t1;
            switch (dm_addr[1:0]) {
                case 0: t1 = dmw_wr[31:24]::dmw_wr[23:16]::dmw_wr[15: 8]::dmw_wr[ 7: 0]; break;
                case 1: t1 = dmw_wr[23:16]::dmw_wr[15: 8]::dmw_wr[ 7: 0]::dmw_wr[31:24]; break;
                case 2: t1 = dmw_wr[15: 8]::dmw_wr[ 7: 0]::dmw_wr[31:24]::dmw_wr[23:16]; break;
                case 3: t1 = dmw_wr[ 7: 0]::dmw_wr[31:24]::dmw_wr[23:16]::dmw_wr[15: 8]; break;
            }
            t2 = t1::t1;
        } else if (st_dmh) {
            uint16_t t1;
            switch (dm_addr[0]) {
                case 0: t1 = dmh_wr[15:8]::dmh_wr[ 7:0]; break;
                case 1: t1 = dmh_wr[ 7:0]::dmh_wr[15:8]; break;
            }
            t2 = t1::t1::t1::t1;
        } else if (st_dmb) {
            t2 = dmb_wr::dmb_wr::dmb_wr::dmb_wr::dmb_wr::dmb_wr::dmb_wr::dmb_wr;
        }
        dm0_wr = t2;
        dm1_wr = t2;
        
        // write enable
        
        uint4_t          t3 = "0000";
        if      (st_dmw) t3 = "1111";
        else if (st_dmh) t3 = "0011";
        else if (st_dmb) t3 = "0001";
        uint11_t t4 = (uint19_t)t3 << col;
        st_dm0 = t4[ 3: 0] | t4[10:8];
        st_dm1 = t4[7: 4];
        
        // read enable
        
        uint4_t          t5 = "0000";
        if      (ld_dmw) t5 = "1111";
        else if (ld_dmh) t5 = "0011";
        else if (ld_dmb) t5 = "0001";
        uint11_t t6 = (uint11_t)t5 << col;
        ld_dm0 = (t6[ 3: 0] | t6[10:8])!=0;
        ld_dm1 = (t6[7: 4]            )!=0;     

        // register read info
        
        ld_dmw_ff = ld_dmw;
        ld_dmh_ff = ld_dmh;
        ld_dmb_ff = ld_dmb;
        col_ff = col;
        
        // 2 clients of DM are active exclusively
        
        uint3_t requests = (uint3_t)st_dmw + st_dmh + st_dmb  
                                  + ld_dmw + ld_dmh + ld_dmb;
        //ASSERT_pdg(requests <= 1);
    }
    
    // debug access functions
    
    void dbg_access_DMb(unsigned a, w08& val, bool read) {
        uint2_t  col = a[1:0];
        uint1_t  bnk = a[2];
        uint21_t row = a[23:3];
        //DEBUG_PRINT("col=%d,bnk=%d,row=%d,val=%d,read=%d",col,bnk,row,val,read);
        
        uint8 v = val;
        switch (bnk) {
            case 0: dbg_access_DM0(row,col,v,read); break;
            case 1: dbg_access_DM1(row,col,v,read); break;
        }
        val = v;
    }    
}
