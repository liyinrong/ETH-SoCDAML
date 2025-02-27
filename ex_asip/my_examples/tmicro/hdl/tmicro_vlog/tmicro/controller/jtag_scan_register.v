
// File generated by Go version O-2018.09#f5599cac26#190121, Tue May 28 10:45:21 2024
// Copyright 2014-2018 Synopsys, Inc. All rights reserved.
// go -B -I../lib -F -D__tct_patch__=300 -Verilog -otmicro_vlog -cgo_options.cfg -Itmicro_vlog/tmp_pdg -updg -updg_controller tmicro



`timescale 1ns/1ps

// module jtag_scan_register : jtag_scan_register
module jtag_scan_register
  #(parameter scan_reg_width = 16)
  ( input                           jtag_capture_dr_in,
    input      [scan_reg_width-1:0] jtag_par_in,
    input                           jtag_shift_dr_in,
    input                           jtag_si_in,
    input                           jtag_tck_in,
    input                           jtag_update_dr_in,
    output     [scan_reg_width-1:0] jtag_par_out,
    output reg                      jtag_so_out
  );


  reg    [scan_reg_width-1:0] scan_reg_master;
  reg    [scan_reg_width-1:0] scan_reg_sig;
  reg    [scan_reg_width-1:0] scan_reg_slave;

  assign jtag_par_out = scan_reg_slave;

  always @ (*)
  begin : scan_reg_master_input
    integer i;
    scan_reg_sig = 0;
    jtag_so_out = 0;
    if (jtag_capture_dr_in)
      scan_reg_sig = jtag_par_in;
    else if (jtag_shift_dr_in)
    begin
      jtag_so_out = scan_reg_master[0];
      for (i = 0; i < scan_reg_width-1; i = i+1)
        scan_reg_sig[i] = scan_reg_master[i+1];
      scan_reg_sig[scan_reg_width-1] = jtag_si_in;
    end
  end

  always @ (posedge jtag_tck_in)
  begin : clock_scan_reg_master
    if (jtag_capture_dr_in || jtag_shift_dr_in)
      scan_reg_master <= scan_reg_sig;
  end

  always @ (negedge jtag_tck_in)
  begin : clock_scan_reg_slave
    if (jtag_update_dr_in)
      scan_reg_slave <= scan_reg_master;
  end

endmodule
