
// File generated by Go version O-2018.09#f5599cac26#190121, Tue May 28 10:45:21 2024
// Copyright 2014-2018 Synopsys, Inc. All rights reserved.
// go -B -I../lib -F -D__tct_patch__=300 -Verilog -otmicro_vlog -cgo_options.cfg -Itmicro_vlog/tmp_pdg -updg -updg_controller tmicro



`timescale 1ns/1ps

// module mux_wbus : mux_wbus
module mux_wbus
  ( input              [3:0] bin_selector_E1,
    input       signed [7:0] __CTsbyte_cstP4_E1_in, // sbyte
    input      signed [15:0] __CTword_cstP16_E1_in, // word
    input                    dma_ready_in, // uint1
    input      signed [15:0] rse1_in, // word
    input      signed [15:0] wbus1_in, // word
    input      signed [15:0] wbus2_in, // word
    input      signed [15:0] wbus3_in, // word
    input      signed [15:0] wbus4_in, // word
    input      signed [15:0] wbus5_in, // word
    input                    wbus_rec1_in, // bool
    input                    wbus_rec2_in, // uint1
    input                    wbus_rec3_in, // uint1
    input              [1:0] wbus_rec4_in, // uint2
    input              [2:0] wbus_rec5_in, // uint3
    input              [7:0] wbus_rec6_in, // ubyte
    output reg signed [15:0] wbus_out // word
  );


  always @ (*)

  begin : p_mux_wbus


    reg    signed [7:0] __CTsbyte_cstP4_E1_in_opd; // sbyte
    reg    signed [15:0] __CTword_cstP16_E1_in_opd; // word
    reg    dma_ready; // uint1
    reg    signed [15:0] rse1; // word
    reg    signed [15:0] wbus1; // word
    reg    signed [15:0] wbus2; // word
    reg    signed [15:0] wbus3; // word
    reg    signed [15:0] wbus4; // word
    reg    signed [15:0] wbus5; // word
    reg    wbus_rec1; // bool
    reg    wbus_rec2; // uint1
    reg    wbus_rec3; // uint1
    reg    [1:0] wbus_rec4; // uint2
    reg    [2:0] wbus_rec5; // uint3
    reg    [7:0] wbus_rec6; // ubyte

    wbus_out = 0;

    // operand isolation
    if (bin_selector_E1 == 0)
    begin
      __CTword_cstP16_E1_in_opd = 0;
      rse1 = 0;
      wbus1 = 0;
      wbus2 = 0;
      wbus3 = 0;
      wbus4 = 0;
      wbus5 = 0;
      wbus_rec6 = 0;
      __CTsbyte_cstP4_E1_in_opd = 0;
      wbus_rec5 = 0;
      wbus_rec4 = 0;
      dma_ready = 0;
      wbus_rec1 = 0;
      wbus_rec2 = 0;
      wbus_rec3 = 0;
    end
    else
    begin
      __CTword_cstP16_E1_in_opd = __CTword_cstP16_E1_in;
      rse1 = rse1_in;
      wbus1 = wbus1_in;
      wbus2 = wbus2_in;
      wbus3 = wbus3_in;
      wbus4 = wbus4_in;
      wbus5 = wbus5_in;
      wbus_rec6 = wbus_rec6_in;
      __CTsbyte_cstP4_E1_in_opd = __CTsbyte_cstP4_E1_in;
      wbus_rec5 = wbus_rec5_in;
      wbus_rec4 = wbus_rec4_in;
      dma_ready = dma_ready_in;
      wbus_rec1 = wbus_rec1_in;
      wbus_rec2 = wbus_rec2_in;
      wbus_rec3 = wbus_rec3_in;
    end


    case (bin_selector_E1)
      4'b0001 : // (wbus_copy0___CTsbyte_cstP4_E1)
      begin
        // [move.n:62]
        wbus_out = $signed({{8{__CTsbyte_cstP4_E1_in_opd[7]}}, __CTsbyte_cstP4_E1_in_opd});
      end
      4'b0010 : // (wbus_copy0_dma_ready_E1)
      begin
        // [dma.n:70]
        wbus_out = $signed({{15{1'b0}}, dma_ready});
      end
      4'b0011 : // (cp_wbus_rec_E1)
      begin
        // [move.n:48][move.n:96][control.n:225][dma.n:51](tmicro.n:132)
        wbus_out = $signed({wbus_rec6, wbus_rec5, wbus_rec4, wbus_rec3, wbus_rec2, wbus_rec1});
      end
      4'b0100 : // (wbus_copy0___CTword_cstP16_E1)
      begin
        // [move.n:55]
        wbus_out = __CTword_cstP16_E1_in_opd;
      end
      4'b0101 : // (wbus_copy0_rse1_E1)
      begin
        // [move.n:48][move.n:96][dma.n:51](tmicro.n:125)
        wbus_out = rse1;
      end
      4'b0110 : // (wbus_copy_wbus1_E1)
      begin
        // [move.n:48][move.n:96][dma.n:51](tmicro.n:134)
        wbus_out = wbus1;
      end
      4'b0111 : // (wbus_copy_wbus2_E1)
      begin
        // [move.n:48][move.n:96][control.n:238][dma.n:51](tmicro.n:135)
        wbus_out = wbus2;
      end
      4'b1000 : // (wbus_copy_wbus3_E1)
      begin
        // [move.n:48][move.n:96][dma.n:51](tmicro.n:131)
        wbus_out = wbus3;
      end
      4'b1001 : // (wbus_copy_wbus4_E1)
      begin
        // [move.n:48][move.n:96][dma.n:51](tmicro.n:130)
        wbus_out = wbus4;
      end
      4'b1010 : // (wbus_copy_wbus5_E1)
      begin
        // [move.n:106]
        wbus_out = wbus5;
      end
      default :
        ; // null
    endcase

  end

endmodule
