
// File generated by Go version O-2018.09#f5599cac26#190121, Tue May 28 10:45:21 2024
// Copyright 2014-2018 Synopsys, Inc. All rights reserved.
// go -B -I../lib -F -D__tct_patch__=300 -Verilog -otmicro_vlog -cgo_options.cfg -Itmicro_vlog/tmp_pdg -updg -updg_controller tmicro



`timescale 1ns/1ps

// module pipe2 : pipe___ocd_ld_DME1 pipe___ocd_st_DME1 pipe___ocd_ld_PME1 pipe___ocd_st_PME1
module pipe2
  ( input  clock,
    input  in0, // bool __ocd_ld_DMID_w __ocd_st_DMID_w __ocd_ld_PMID_w __ocd_st_PMID_w
    output out0 // bool __ocd_ld_DME1_r __ocd_st_DME1_r __ocd_ld_PME1_r __ocd_st_PME1_r
  );


  reg pipe_val_out0;

  assign out0 = pipe_val_out0; // 1:__ocd_ld_DME1_r 2:__ocd_st_DME1_r 3:__ocd_ld_PME1_r 4:__ocd_st_PME1_r


  always @ (posedge clock)
  begin : p_pipe2
    // 1:(_pipe__ocd_ld_DMID_E1)
    // 2:(_pipe__ocd_st_DMID_E1)
    // 3:(_pipe__ocd_ld_PMID_E1)
    // 4:(_pipe__ocd_st_PMID_E1)
    pipe_val_out0 <= in0;

  end
endmodule
