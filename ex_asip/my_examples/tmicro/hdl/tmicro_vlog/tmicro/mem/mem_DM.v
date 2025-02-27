
// File generated by Go version O-2018.09#f5599cac26#190121, Tue May 28 10:45:21 2024
// Copyright 2014-2018 Synopsys, Inc. All rights reserved.
// go -B -I../lib -F -D__tct_patch__=300 -Verilog -otmicro_vlog -cgo_options.cfg -Itmicro_vlog/tmp_pdg -updg -updg_controller tmicro



`timescale 1ns/1ps

// module mem_DM : mem_DM
module mem_DM
  ( input              [1:0] bin_selector_E1,
    input                    ohe_selector_ID,
    input                    __ocd_st_DME1_r_in, // bool
    input                    ocd_ld_DM_in, // bool
    input             [15:0] dm_addr_dp_in, // addr
    input      signed [15:0] dm_read_in, // word
    input      signed [15:0] dm_write_dp_in, // word
    output reg        [15:0] dm_addr_out, // addr
    output reg               dm_ld_out, // std_logic
    output reg signed [15:0] dm_read_dp_out, // word
    output reg               dm_st_out, // std_logic
    output reg signed [15:0] dm_write_out // word
  );


  always @ (*)

  begin : p_mem_DM

    dm_addr_out = 0;
    dm_ld_out = 0;
    // dm_read_dp_out = 0;
    dm_st_out = 0;
    dm_write_out = 0;

    // (cp_extad_DM_st_dm_write_dm_addr___ocd_st_DME1_r_E1_alw, cp_extin_dm_read_ld_DM_dm_addr_ocd_ld_DM_ID_alw, cp_extout_DM_st_dm_write_dm_addr___ocd_st_DME1_r_E1_alw, cp_extad_dm_read_ld_DM_dm_addr_ocd_ld_DM_ID_alw, mem_enab_DM_st_dm_write_dm_addr___ocd_st_DME1_r_E1_alw, mem_enab_dm_read_ld_DM_dm_addr_ocd_ld_DM_ID_alw)
    if (__ocd_st_DME1_r_in)
    begin
      // [ocd_if.n:34]
      dm_addr_out = dm_addr_dp_in;
    end
    // [ocd_if.n:28](ocd_if.n:27)
    dm_read_dp_out = dm_read_in;
    if (__ocd_st_DME1_r_in)
    begin
      // [ocd_if.n:34]
      dm_write_out = dm_write_dp_in;
    end
    if (ocd_ld_DM_in)
    begin
      // [ocd_if.n:28](ocd_if.n:27)
      dm_addr_out = dm_addr_dp_in;
    end
    if (__ocd_st_DME1_r_in)
    begin
      // [ocd_if.n:34]
      dm_st_out = 1'b1;
    end
    if (ocd_ld_DM_in)
    begin
      // [ocd_if.n:28](ocd_if.n:27)
      dm_ld_out = 1'b1;
    end

    case (bin_selector_E1)
      2'b01 : // (mem_enab_DM_st_dm_write_dm_addr_E1, cp_extad_DM_st_dm_write_dm_addr_E1, cp_extout_DM_st_dm_write_dm_addr_E1)
      begin
        // [load_store.n:57][load_store.n:99]
        dm_st_out = 1'b1;
        // [load_store.n:57][load_store.n:99]
        dm_addr_out = dm_addr_dp_in;
        // [load_store.n:57][load_store.n:99]
        dm_write_out = dm_write_dp_in;
      end
      2'b10 : // (cp_extin_dm_read_ld_DM_dm_addr_ID)
      begin
        // [load_store.n:51][load_store.n:93]
        dm_read_dp_out = dm_read_in;
      end
      default :
        ; // null
    endcase

    if (ohe_selector_ID) // (mem_enab_dm_read_ld_DM_dm_addr_ID, cp_extad_dm_read_ld_DM_dm_addr_ID)
    begin
      // [load_store.n:51][load_store.n:93]
      dm_ld_out = 1'b1;
      // [load_store.n:51][load_store.n:93]
      dm_addr_out = dm_addr_dp_in;
    end

  end

endmodule
