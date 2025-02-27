
// File generated by Go version O-2018.09#f5599cac26#190121, Tue May 28 10:45:21 2024
// Copyright 2014-2018 Synopsys, Inc. All rights reserved.
// go -B -I../lib -F -D__tct_patch__=300 -Verilog -otmicro_vlog -cgo_options.cfg -Itmicro_vlog/tmp_pdg -updg -updg_controller tmicro



`timescale 1ns/1ps

// module mux_ag1p : mux_ag1p
module mux_ag1p
  ( input              [1:0] bin_selector_ID,
    input      signed [15:0] ag1p1_in, // word
    input      signed [15:0] ag1p2_in, // word
    output reg signed [15:0] ag1p_out // word
  );


  always @ (*)

  begin : p_mux_ag1p


    reg    signed [15:0] ag1p1; // word
    reg    signed [15:0] ag1p2; // word

    ag1p_out = 0;

    // operand isolation
    if (bin_selector_ID == 0)
    begin
      ag1p1 = 0;
      ag1p2 = 0;
    end
    else
    begin
      ag1p1 = ag1p1_in;
      ag1p2 = ag1p2_in;
    end


    case (bin_selector_ID)
      2'b01 : // (ag1p_copy_ag1p1_ID)
      begin
        // [load_store.n:75][load_store.n:76][load_store.n:77](tmicro.n:154)
        ag1p_out = ag1p1;
      end
      2'b10 : // (ag1p_copy_ag1p2_ID)
      begin
        // [load_store.n:46][load_store.n:138][load_store.n:145]
        ag1p_out = ag1p2;
      end
      default :
        ; // null
    endcase

  end

endmodule
