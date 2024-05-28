// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
// Date        : Tue May 21 09:45:05 2024
// Host        : tardis-a14 running 64-bit CentOS Linux release 7.9.2009 (Core)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_auto_pc_1_sim_netlist.v
// Design      : design_1_auto_pc_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_data_fifo_v2_1_25_axic_fifo
   (dout,
    empty,
    SR,
    aresetn_0,
    m_axi_awvalid,
    length_counter_1_reg_1_sp_1,
    empty_fwft_i_reg,
    m_axi_wvalid,
    S_AXI_AREADY_I_reg,
    \areset_d_reg[1] ,
    aclk,
    m_axi_awlen,
    rd_en,
    aresetn,
    m_axi_awvalid_0,
    command_ongoing,
    m_axi_awready,
    length_counter_1_reg,
    first_mi_word,
    s_axi_wvalid,
    m_axi_wready,
    E,
    s_axi_awvalid,
    Q);
  output [3:0]dout;
  output empty;
  output [0:0]SR;
  output aresetn_0;
  output m_axi_awvalid;
  output length_counter_1_reg_1_sp_1;
  output empty_fwft_i_reg;
  output m_axi_wvalid;
  output S_AXI_AREADY_I_reg;
  output \areset_d_reg[1] ;
  input aclk;
  input [3:0]m_axi_awlen;
  input rd_en;
  input aresetn;
  input m_axi_awvalid_0;
  input command_ongoing;
  input m_axi_awready;
  input [1:0]length_counter_1_reg;
  input first_mi_word;
  input s_axi_wvalid;
  input m_axi_wready;
  input [0:0]E;
  input s_axi_awvalid;
  input [1:0]Q;

  wire [0:0]E;
  wire [1:0]Q;
  wire [0:0]SR;
  wire S_AXI_AREADY_I_reg;
  wire aclk;
  wire \areset_d_reg[1] ;
  wire aresetn;
  wire aresetn_0;
  wire command_ongoing;
  wire [3:0]dout;
  wire empty;
  wire empty_fwft_i_reg;
  wire first_mi_word;
  wire [1:0]length_counter_1_reg;
  wire length_counter_1_reg_1_sn_1;
  wire [3:0]m_axi_awlen;
  wire m_axi_awready;
  wire m_axi_awvalid;
  wire m_axi_awvalid_0;
  wire m_axi_wready;
  wire m_axi_wvalid;
  wire rd_en;
  wire s_axi_awvalid;
  wire s_axi_wvalid;

  assign length_counter_1_reg_1_sp_1 = length_counter_1_reg_1_sn_1;
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_data_fifo_v2_1_25_fifo_gen inst
       (.E(E),
        .Q(Q),
        .SR(SR),
        .S_AXI_AREADY_I_reg(S_AXI_AREADY_I_reg),
        .aclk(aclk),
        .\areset_d_reg[1] (\areset_d_reg[1] ),
        .aresetn(aresetn),
        .aresetn_0(aresetn_0),
        .command_ongoing(command_ongoing),
        .dout(dout),
        .empty(empty),
        .empty_fwft_i_reg(empty_fwft_i_reg),
        .first_mi_word(first_mi_word),
        .length_counter_1_reg(length_counter_1_reg),
        .length_counter_1_reg_1_sp_1(length_counter_1_reg_1_sn_1),
        .m_axi_awlen(m_axi_awlen),
        .m_axi_awready(m_axi_awready),
        .m_axi_awvalid(m_axi_awvalid),
        .m_axi_awvalid_0(m_axi_awvalid_0),
        .m_axi_wready(m_axi_wready),
        .m_axi_wvalid(m_axi_wvalid),
        .rd_en(rd_en),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_data_fifo_v2_1_25_fifo_gen
   (dout,
    empty,
    SR,
    aresetn_0,
    m_axi_awvalid,
    length_counter_1_reg_1_sp_1,
    empty_fwft_i_reg,
    m_axi_wvalid,
    S_AXI_AREADY_I_reg,
    \areset_d_reg[1] ,
    aclk,
    m_axi_awlen,
    rd_en,
    aresetn,
    m_axi_awvalid_0,
    command_ongoing,
    m_axi_awready,
    length_counter_1_reg,
    first_mi_word,
    s_axi_wvalid,
    m_axi_wready,
    E,
    s_axi_awvalid,
    Q);
  output [3:0]dout;
  output empty;
  output [0:0]SR;
  output aresetn_0;
  output m_axi_awvalid;
  output length_counter_1_reg_1_sp_1;
  output empty_fwft_i_reg;
  output m_axi_wvalid;
  output S_AXI_AREADY_I_reg;
  output \areset_d_reg[1] ;
  input aclk;
  input [3:0]m_axi_awlen;
  input rd_en;
  input aresetn;
  input m_axi_awvalid_0;
  input command_ongoing;
  input m_axi_awready;
  input [1:0]length_counter_1_reg;
  input first_mi_word;
  input s_axi_wvalid;
  input m_axi_wready;
  input [0:0]E;
  input s_axi_awvalid;
  input [1:0]Q;

  wire [0:0]E;
  wire [1:0]Q;
  wire [0:0]SR;
  wire S_AXI_AREADY_I_i_3_n_0;
  wire S_AXI_AREADY_I_reg;
  wire aclk;
  wire \areset_d_reg[1] ;
  wire aresetn;
  wire aresetn_0;
  wire cmd_push;
  wire command_ongoing;
  wire command_ongoing_i_2_n_0;
  wire [3:0]dout;
  wire empty;
  wire empty_fwft_i_reg;
  wire first_mi_word;
  wire full;
  wire [1:0]length_counter_1_reg;
  wire length_counter_1_reg_1_sn_1;
  wire [3:0]m_axi_awlen;
  wire m_axi_awready;
  wire m_axi_awvalid;
  wire m_axi_awvalid_0;
  wire m_axi_wready;
  wire m_axi_wvalid;
  wire rd_en;
  wire s_axi_awvalid;
  wire s_axi_wvalid;
  wire NLW_fifo_gen_inst_almost_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_almost_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_ar_dbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_ar_overflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_ar_prog_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_ar_prog_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_ar_sbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_ar_underflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_aw_dbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_aw_overflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_aw_prog_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_aw_prog_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_aw_sbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_aw_underflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_b_dbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_b_overflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_b_prog_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_b_prog_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_b_sbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_b_underflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_r_dbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_r_overflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_r_prog_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_r_prog_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_r_sbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_r_underflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_w_dbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_w_overflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_w_prog_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_w_prog_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_w_sbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_w_underflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axis_dbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axis_overflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axis_prog_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_axis_prog_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_axis_sbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axis_underflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_dbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axi_arvalid_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axi_awvalid_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axi_bready_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axi_rready_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axi_wlast_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axi_wvalid_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axis_tlast_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axis_tvalid_UNCONNECTED;
  wire NLW_fifo_gen_inst_overflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_prog_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_prog_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_rd_rst_busy_UNCONNECTED;
  wire NLW_fifo_gen_inst_s_axi_arready_UNCONNECTED;
  wire NLW_fifo_gen_inst_s_axi_awready_UNCONNECTED;
  wire NLW_fifo_gen_inst_s_axi_bvalid_UNCONNECTED;
  wire NLW_fifo_gen_inst_s_axi_rlast_UNCONNECTED;
  wire NLW_fifo_gen_inst_s_axi_rvalid_UNCONNECTED;
  wire NLW_fifo_gen_inst_s_axi_wready_UNCONNECTED;
  wire NLW_fifo_gen_inst_s_axis_tready_UNCONNECTED;
  wire NLW_fifo_gen_inst_sbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_underflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_valid_UNCONNECTED;
  wire NLW_fifo_gen_inst_wr_ack_UNCONNECTED;
  wire NLW_fifo_gen_inst_wr_rst_busy_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_ar_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_ar_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_ar_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_aw_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_aw_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_aw_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_b_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_b_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_b_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axi_r_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axi_r_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axi_r_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axi_w_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axi_w_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axi_w_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axis_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axis_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axis_wr_data_count_UNCONNECTED;
  wire [5:0]NLW_fifo_gen_inst_data_count_UNCONNECTED;
  wire [4:4]NLW_fifo_gen_inst_dout_UNCONNECTED;
  wire [31:0]NLW_fifo_gen_inst_m_axi_araddr_UNCONNECTED;
  wire [1:0]NLW_fifo_gen_inst_m_axi_arburst_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_arcache_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_arid_UNCONNECTED;
  wire [7:0]NLW_fifo_gen_inst_m_axi_arlen_UNCONNECTED;
  wire [1:0]NLW_fifo_gen_inst_m_axi_arlock_UNCONNECTED;
  wire [2:0]NLW_fifo_gen_inst_m_axi_arprot_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_arqos_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_arregion_UNCONNECTED;
  wire [2:0]NLW_fifo_gen_inst_m_axi_arsize_UNCONNECTED;
  wire [0:0]NLW_fifo_gen_inst_m_axi_aruser_UNCONNECTED;
  wire [31:0]NLW_fifo_gen_inst_m_axi_awaddr_UNCONNECTED;
  wire [1:0]NLW_fifo_gen_inst_m_axi_awburst_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_awcache_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_awid_UNCONNECTED;
  wire [7:0]NLW_fifo_gen_inst_m_axi_awlen_UNCONNECTED;
  wire [1:0]NLW_fifo_gen_inst_m_axi_awlock_UNCONNECTED;
  wire [2:0]NLW_fifo_gen_inst_m_axi_awprot_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_awqos_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_awregion_UNCONNECTED;
  wire [2:0]NLW_fifo_gen_inst_m_axi_awsize_UNCONNECTED;
  wire [0:0]NLW_fifo_gen_inst_m_axi_awuser_UNCONNECTED;
  wire [63:0]NLW_fifo_gen_inst_m_axi_wdata_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_wid_UNCONNECTED;
  wire [7:0]NLW_fifo_gen_inst_m_axi_wstrb_UNCONNECTED;
  wire [0:0]NLW_fifo_gen_inst_m_axi_wuser_UNCONNECTED;
  wire [63:0]NLW_fifo_gen_inst_m_axis_tdata_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axis_tdest_UNCONNECTED;
  wire [7:0]NLW_fifo_gen_inst_m_axis_tid_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axis_tkeep_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axis_tstrb_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axis_tuser_UNCONNECTED;
  wire [5:0]NLW_fifo_gen_inst_rd_data_count_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_fifo_gen_inst_s_axi_bresp_UNCONNECTED;
  wire [0:0]NLW_fifo_gen_inst_s_axi_buser_UNCONNECTED;
  wire [63:0]NLW_fifo_gen_inst_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_fifo_gen_inst_s_axi_rresp_UNCONNECTED;
  wire [0:0]NLW_fifo_gen_inst_s_axi_ruser_UNCONNECTED;
  wire [5:0]NLW_fifo_gen_inst_wr_data_count_UNCONNECTED;

  assign length_counter_1_reg_1_sp_1 = length_counter_1_reg_1_sn_1;
  LUT1 #(
    .INIT(2'h1)) 
    S_AXI_AREADY_I_i_1
       (.I0(aresetn),
        .O(SR));
  LUT6 #(
    .INIT(64'h22722272FFFF2272)) 
    S_AXI_AREADY_I_i_2
       (.I0(E),
        .I1(s_axi_awvalid),
        .I2(m_axi_awready),
        .I3(S_AXI_AREADY_I_i_3_n_0),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(S_AXI_AREADY_I_reg));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h4F)) 
    S_AXI_AREADY_I_i_3
       (.I0(m_axi_awvalid_0),
        .I1(full),
        .I2(command_ongoing),
        .O(S_AXI_AREADY_I_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h00888A88)) 
    cmd_push_block_i_1
       (.I0(aresetn),
        .I1(m_axi_awvalid_0),
        .I2(full),
        .I3(command_ongoing),
        .I4(m_axi_awready),
        .O(aresetn_0));
  LUT6 #(
    .INIT(64'hF222FFFFD000D000)) 
    command_ongoing_i_1
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(E),
        .I3(s_axi_awvalid),
        .I4(command_ongoing_i_2_n_0),
        .I5(command_ongoing),
        .O(\areset_d_reg[1] ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h8808)) 
    command_ongoing_i_2
       (.I0(m_axi_awready),
        .I1(command_ongoing),
        .I2(full),
        .I3(m_axi_awvalid_0),
        .O(command_ongoing_i_2_n_0));
  (* C_ADD_NGC_CONSTRAINT = "0" *) 
  (* C_APPLICATION_TYPE_AXIS = "0" *) 
  (* C_APPLICATION_TYPE_RACH = "0" *) 
  (* C_APPLICATION_TYPE_RDCH = "0" *) 
  (* C_APPLICATION_TYPE_WACH = "0" *) 
  (* C_APPLICATION_TYPE_WDCH = "0" *) 
  (* C_APPLICATION_TYPE_WRCH = "0" *) 
  (* C_AXIS_TDATA_WIDTH = "64" *) 
  (* C_AXIS_TDEST_WIDTH = "4" *) 
  (* C_AXIS_TID_WIDTH = "8" *) 
  (* C_AXIS_TKEEP_WIDTH = "4" *) 
  (* C_AXIS_TSTRB_WIDTH = "4" *) 
  (* C_AXIS_TUSER_WIDTH = "4" *) 
  (* C_AXIS_TYPE = "0" *) 
  (* C_AXI_ADDR_WIDTH = "32" *) 
  (* C_AXI_ARUSER_WIDTH = "1" *) 
  (* C_AXI_AWUSER_WIDTH = "1" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "64" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_LEN_WIDTH = "8" *) 
  (* C_AXI_LOCK_WIDTH = "2" *) 
  (* C_AXI_RUSER_WIDTH = "1" *) 
  (* C_AXI_TYPE = "0" *) 
  (* C_AXI_WUSER_WIDTH = "1" *) 
  (* C_COMMON_CLOCK = "1" *) 
  (* C_COUNT_TYPE = "0" *) 
  (* C_DATA_COUNT_WIDTH = "6" *) 
  (* C_DEFAULT_VALUE = "BlankString" *) 
  (* C_DIN_WIDTH = "5" *) 
  (* C_DIN_WIDTH_AXIS = "1" *) 
  (* C_DIN_WIDTH_RACH = "32" *) 
  (* C_DIN_WIDTH_RDCH = "64" *) 
  (* C_DIN_WIDTH_WACH = "32" *) 
  (* C_DIN_WIDTH_WDCH = "64" *) 
  (* C_DIN_WIDTH_WRCH = "2" *) 
  (* C_DOUT_RST_VAL = "0" *) 
  (* C_DOUT_WIDTH = "5" *) 
  (* C_ENABLE_RLOCS = "0" *) 
  (* C_ENABLE_RST_SYNC = "1" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_ERROR_INJECTION_TYPE = "0" *) 
  (* C_ERROR_INJECTION_TYPE_AXIS = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_FULL_FLAGS_RST_VAL = "0" *) 
  (* C_HAS_ALMOST_EMPTY = "0" *) 
  (* C_HAS_ALMOST_FULL = "0" *) 
  (* C_HAS_AXIS_TDATA = "0" *) 
  (* C_HAS_AXIS_TDEST = "0" *) 
  (* C_HAS_AXIS_TID = "0" *) 
  (* C_HAS_AXIS_TKEEP = "0" *) 
  (* C_HAS_AXIS_TLAST = "0" *) 
  (* C_HAS_AXIS_TREADY = "1" *) 
  (* C_HAS_AXIS_TSTRB = "0" *) 
  (* C_HAS_AXIS_TUSER = "0" *) 
  (* C_HAS_AXI_ARUSER = "0" *) 
  (* C_HAS_AXI_AWUSER = "0" *) 
  (* C_HAS_AXI_BUSER = "0" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_AXI_RD_CHANNEL = "0" *) 
  (* C_HAS_AXI_RUSER = "0" *) 
  (* C_HAS_AXI_WR_CHANNEL = "0" *) 
  (* C_HAS_AXI_WUSER = "0" *) 
  (* C_HAS_BACKUP = "0" *) 
  (* C_HAS_DATA_COUNT = "0" *) 
  (* C_HAS_DATA_COUNTS_AXIS = "0" *) 
  (* C_HAS_DATA_COUNTS_RACH = "0" *) 
  (* C_HAS_DATA_COUNTS_RDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WACH = "0" *) 
  (* C_HAS_DATA_COUNTS_WDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WRCH = "0" *) 
  (* C_HAS_INT_CLK = "0" *) 
  (* C_HAS_MASTER_CE = "0" *) 
  (* C_HAS_MEMINIT_FILE = "0" *) 
  (* C_HAS_OVERFLOW = "0" *) 
  (* C_HAS_PROG_FLAGS_AXIS = "0" *) 
  (* C_HAS_PROG_FLAGS_RACH = "0" *) 
  (* C_HAS_PROG_FLAGS_RDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WACH = "0" *) 
  (* C_HAS_PROG_FLAGS_WDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WRCH = "0" *) 
  (* C_HAS_RD_DATA_COUNT = "0" *) 
  (* C_HAS_RD_RST = "0" *) 
  (* C_HAS_RST = "1" *) 
  (* C_HAS_SLAVE_CE = "0" *) 
  (* C_HAS_SRST = "0" *) 
  (* C_HAS_UNDERFLOW = "0" *) 
  (* C_HAS_VALID = "0" *) 
  (* C_HAS_WR_ACK = "0" *) 
  (* C_HAS_WR_DATA_COUNT = "0" *) 
  (* C_HAS_WR_RST = "0" *) 
  (* C_IMPLEMENTATION_TYPE = "0" *) 
  (* C_IMPLEMENTATION_TYPE_AXIS = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WRCH = "1" *) 
  (* C_INIT_WR_PNTR_VAL = "0" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_MEMORY_TYPE = "2" *) 
  (* C_MIF_FILE_NAME = "BlankString" *) 
  (* C_MSGON_VAL = "1" *) 
  (* C_OPTIMIZATION_MODE = "0" *) 
  (* C_OVERFLOW_LOW = "0" *) 
  (* C_POWER_SAVING_MODE = "0" *) 
  (* C_PRELOAD_LATENCY = "0" *) 
  (* C_PRELOAD_REGS = "1" *) 
  (* C_PRIM_FIFO_TYPE = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_AXIS = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RDCH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WDCH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL = "4" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "5" *) 
  (* C_PROG_EMPTY_TYPE = "0" *) 
  (* C_PROG_EMPTY_TYPE_AXIS = "0" *) 
  (* C_PROG_EMPTY_TYPE_RACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "31" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "30" *) 
  (* C_PROG_FULL_TYPE = "0" *) 
  (* C_PROG_FULL_TYPE_AXIS = "0" *) 
  (* C_PROG_FULL_TYPE_RACH = "0" *) 
  (* C_PROG_FULL_TYPE_RDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WACH = "0" *) 
  (* C_PROG_FULL_TYPE_WDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WRCH = "0" *) 
  (* C_RACH_TYPE = "0" *) 
  (* C_RDCH_TYPE = "0" *) 
  (* C_RD_DATA_COUNT_WIDTH = "6" *) 
  (* C_RD_DEPTH = "32" *) 
  (* C_RD_FREQ = "1" *) 
  (* C_RD_PNTR_WIDTH = "5" *) 
  (* C_REG_SLICE_MODE_AXIS = "0" *) 
  (* C_REG_SLICE_MODE_RACH = "0" *) 
  (* C_REG_SLICE_MODE_RDCH = "0" *) 
  (* C_REG_SLICE_MODE_WACH = "0" *) 
  (* C_REG_SLICE_MODE_WDCH = "0" *) 
  (* C_REG_SLICE_MODE_WRCH = "0" *) 
  (* C_SELECT_XPM = "0" *) 
  (* C_SYNCHRONIZER_STAGE = "3" *) 
  (* C_UNDERFLOW_LOW = "0" *) 
  (* C_USE_COMMON_OVERFLOW = "0" *) 
  (* C_USE_COMMON_UNDERFLOW = "0" *) 
  (* C_USE_DEFAULT_SETTINGS = "0" *) 
  (* C_USE_DOUT_RST = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_ECC_AXIS = "0" *) 
  (* C_USE_ECC_RACH = "0" *) 
  (* C_USE_ECC_RDCH = "0" *) 
  (* C_USE_ECC_WACH = "0" *) 
  (* C_USE_ECC_WDCH = "0" *) 
  (* C_USE_ECC_WRCH = "0" *) 
  (* C_USE_EMBEDDED_REG = "0" *) 
  (* C_USE_FIFO16_FLAGS = "0" *) 
  (* C_USE_FWFT_DATA_COUNT = "1" *) 
  (* C_USE_PIPELINE_REG = "0" *) 
  (* C_VALID_LOW = "0" *) 
  (* C_WACH_TYPE = "0" *) 
  (* C_WDCH_TYPE = "0" *) 
  (* C_WRCH_TYPE = "0" *) 
  (* C_WR_ACK_LOW = "0" *) 
  (* C_WR_DATA_COUNT_WIDTH = "6" *) 
  (* C_WR_DEPTH = "32" *) 
  (* C_WR_DEPTH_AXIS = "1024" *) 
  (* C_WR_DEPTH_RACH = "16" *) 
  (* C_WR_DEPTH_RDCH = "1024" *) 
  (* C_WR_DEPTH_WACH = "16" *) 
  (* C_WR_DEPTH_WDCH = "1024" *) 
  (* C_WR_DEPTH_WRCH = "16" *) 
  (* C_WR_FREQ = "1" *) 
  (* C_WR_PNTR_WIDTH = "5" *) 
  (* C_WR_PNTR_WIDTH_AXIS = "10" *) 
  (* C_WR_PNTR_WIDTH_RACH = "4" *) 
  (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WACH = "4" *) 
  (* C_WR_PNTR_WIDTH_WDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
  (* C_WR_RESPONSE_LATENCY = "1" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_7 fifo_gen_inst
       (.almost_empty(NLW_fifo_gen_inst_almost_empty_UNCONNECTED),
        .almost_full(NLW_fifo_gen_inst_almost_full_UNCONNECTED),
        .axi_ar_data_count(NLW_fifo_gen_inst_axi_ar_data_count_UNCONNECTED[4:0]),
        .axi_ar_dbiterr(NLW_fifo_gen_inst_axi_ar_dbiterr_UNCONNECTED),
        .axi_ar_injectdbiterr(1'b0),
        .axi_ar_injectsbiterr(1'b0),
        .axi_ar_overflow(NLW_fifo_gen_inst_axi_ar_overflow_UNCONNECTED),
        .axi_ar_prog_empty(NLW_fifo_gen_inst_axi_ar_prog_empty_UNCONNECTED),
        .axi_ar_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_prog_full(NLW_fifo_gen_inst_axi_ar_prog_full_UNCONNECTED),
        .axi_ar_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_rd_data_count(NLW_fifo_gen_inst_axi_ar_rd_data_count_UNCONNECTED[4:0]),
        .axi_ar_sbiterr(NLW_fifo_gen_inst_axi_ar_sbiterr_UNCONNECTED),
        .axi_ar_underflow(NLW_fifo_gen_inst_axi_ar_underflow_UNCONNECTED),
        .axi_ar_wr_data_count(NLW_fifo_gen_inst_axi_ar_wr_data_count_UNCONNECTED[4:0]),
        .axi_aw_data_count(NLW_fifo_gen_inst_axi_aw_data_count_UNCONNECTED[4:0]),
        .axi_aw_dbiterr(NLW_fifo_gen_inst_axi_aw_dbiterr_UNCONNECTED),
        .axi_aw_injectdbiterr(1'b0),
        .axi_aw_injectsbiterr(1'b0),
        .axi_aw_overflow(NLW_fifo_gen_inst_axi_aw_overflow_UNCONNECTED),
        .axi_aw_prog_empty(NLW_fifo_gen_inst_axi_aw_prog_empty_UNCONNECTED),
        .axi_aw_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_prog_full(NLW_fifo_gen_inst_axi_aw_prog_full_UNCONNECTED),
        .axi_aw_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_rd_data_count(NLW_fifo_gen_inst_axi_aw_rd_data_count_UNCONNECTED[4:0]),
        .axi_aw_sbiterr(NLW_fifo_gen_inst_axi_aw_sbiterr_UNCONNECTED),
        .axi_aw_underflow(NLW_fifo_gen_inst_axi_aw_underflow_UNCONNECTED),
        .axi_aw_wr_data_count(NLW_fifo_gen_inst_axi_aw_wr_data_count_UNCONNECTED[4:0]),
        .axi_b_data_count(NLW_fifo_gen_inst_axi_b_data_count_UNCONNECTED[4:0]),
        .axi_b_dbiterr(NLW_fifo_gen_inst_axi_b_dbiterr_UNCONNECTED),
        .axi_b_injectdbiterr(1'b0),
        .axi_b_injectsbiterr(1'b0),
        .axi_b_overflow(NLW_fifo_gen_inst_axi_b_overflow_UNCONNECTED),
        .axi_b_prog_empty(NLW_fifo_gen_inst_axi_b_prog_empty_UNCONNECTED),
        .axi_b_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_prog_full(NLW_fifo_gen_inst_axi_b_prog_full_UNCONNECTED),
        .axi_b_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_rd_data_count(NLW_fifo_gen_inst_axi_b_rd_data_count_UNCONNECTED[4:0]),
        .axi_b_sbiterr(NLW_fifo_gen_inst_axi_b_sbiterr_UNCONNECTED),
        .axi_b_underflow(NLW_fifo_gen_inst_axi_b_underflow_UNCONNECTED),
        .axi_b_wr_data_count(NLW_fifo_gen_inst_axi_b_wr_data_count_UNCONNECTED[4:0]),
        .axi_r_data_count(NLW_fifo_gen_inst_axi_r_data_count_UNCONNECTED[10:0]),
        .axi_r_dbiterr(NLW_fifo_gen_inst_axi_r_dbiterr_UNCONNECTED),
        .axi_r_injectdbiterr(1'b0),
        .axi_r_injectsbiterr(1'b0),
        .axi_r_overflow(NLW_fifo_gen_inst_axi_r_overflow_UNCONNECTED),
        .axi_r_prog_empty(NLW_fifo_gen_inst_axi_r_prog_empty_UNCONNECTED),
        .axi_r_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_prog_full(NLW_fifo_gen_inst_axi_r_prog_full_UNCONNECTED),
        .axi_r_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_rd_data_count(NLW_fifo_gen_inst_axi_r_rd_data_count_UNCONNECTED[10:0]),
        .axi_r_sbiterr(NLW_fifo_gen_inst_axi_r_sbiterr_UNCONNECTED),
        .axi_r_underflow(NLW_fifo_gen_inst_axi_r_underflow_UNCONNECTED),
        .axi_r_wr_data_count(NLW_fifo_gen_inst_axi_r_wr_data_count_UNCONNECTED[10:0]),
        .axi_w_data_count(NLW_fifo_gen_inst_axi_w_data_count_UNCONNECTED[10:0]),
        .axi_w_dbiterr(NLW_fifo_gen_inst_axi_w_dbiterr_UNCONNECTED),
        .axi_w_injectdbiterr(1'b0),
        .axi_w_injectsbiterr(1'b0),
        .axi_w_overflow(NLW_fifo_gen_inst_axi_w_overflow_UNCONNECTED),
        .axi_w_prog_empty(NLW_fifo_gen_inst_axi_w_prog_empty_UNCONNECTED),
        .axi_w_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_prog_full(NLW_fifo_gen_inst_axi_w_prog_full_UNCONNECTED),
        .axi_w_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_rd_data_count(NLW_fifo_gen_inst_axi_w_rd_data_count_UNCONNECTED[10:0]),
        .axi_w_sbiterr(NLW_fifo_gen_inst_axi_w_sbiterr_UNCONNECTED),
        .axi_w_underflow(NLW_fifo_gen_inst_axi_w_underflow_UNCONNECTED),
        .axi_w_wr_data_count(NLW_fifo_gen_inst_axi_w_wr_data_count_UNCONNECTED[10:0]),
        .axis_data_count(NLW_fifo_gen_inst_axis_data_count_UNCONNECTED[10:0]),
        .axis_dbiterr(NLW_fifo_gen_inst_axis_dbiterr_UNCONNECTED),
        .axis_injectdbiterr(1'b0),
        .axis_injectsbiterr(1'b0),
        .axis_overflow(NLW_fifo_gen_inst_axis_overflow_UNCONNECTED),
        .axis_prog_empty(NLW_fifo_gen_inst_axis_prog_empty_UNCONNECTED),
        .axis_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_prog_full(NLW_fifo_gen_inst_axis_prog_full_UNCONNECTED),
        .axis_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_rd_data_count(NLW_fifo_gen_inst_axis_rd_data_count_UNCONNECTED[10:0]),
        .axis_sbiterr(NLW_fifo_gen_inst_axis_sbiterr_UNCONNECTED),
        .axis_underflow(NLW_fifo_gen_inst_axis_underflow_UNCONNECTED),
        .axis_wr_data_count(NLW_fifo_gen_inst_axis_wr_data_count_UNCONNECTED[10:0]),
        .backup(1'b0),
        .backup_marker(1'b0),
        .clk(aclk),
        .data_count(NLW_fifo_gen_inst_data_count_UNCONNECTED[5:0]),
        .dbiterr(NLW_fifo_gen_inst_dbiterr_UNCONNECTED),
        .din({1'b0,m_axi_awlen}),
        .dout({NLW_fifo_gen_inst_dout_UNCONNECTED[4],dout}),
        .empty(empty),
        .full(full),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .int_clk(1'b0),
        .m_aclk(1'b0),
        .m_aclk_en(1'b0),
        .m_axi_araddr(NLW_fifo_gen_inst_m_axi_araddr_UNCONNECTED[31:0]),
        .m_axi_arburst(NLW_fifo_gen_inst_m_axi_arburst_UNCONNECTED[1:0]),
        .m_axi_arcache(NLW_fifo_gen_inst_m_axi_arcache_UNCONNECTED[3:0]),
        .m_axi_arid(NLW_fifo_gen_inst_m_axi_arid_UNCONNECTED[3:0]),
        .m_axi_arlen(NLW_fifo_gen_inst_m_axi_arlen_UNCONNECTED[7:0]),
        .m_axi_arlock(NLW_fifo_gen_inst_m_axi_arlock_UNCONNECTED[1:0]),
        .m_axi_arprot(NLW_fifo_gen_inst_m_axi_arprot_UNCONNECTED[2:0]),
        .m_axi_arqos(NLW_fifo_gen_inst_m_axi_arqos_UNCONNECTED[3:0]),
        .m_axi_arready(1'b0),
        .m_axi_arregion(NLW_fifo_gen_inst_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arsize(NLW_fifo_gen_inst_m_axi_arsize_UNCONNECTED[2:0]),
        .m_axi_aruser(NLW_fifo_gen_inst_m_axi_aruser_UNCONNECTED[0]),
        .m_axi_arvalid(NLW_fifo_gen_inst_m_axi_arvalid_UNCONNECTED),
        .m_axi_awaddr(NLW_fifo_gen_inst_m_axi_awaddr_UNCONNECTED[31:0]),
        .m_axi_awburst(NLW_fifo_gen_inst_m_axi_awburst_UNCONNECTED[1:0]),
        .m_axi_awcache(NLW_fifo_gen_inst_m_axi_awcache_UNCONNECTED[3:0]),
        .m_axi_awid(NLW_fifo_gen_inst_m_axi_awid_UNCONNECTED[3:0]),
        .m_axi_awlen(NLW_fifo_gen_inst_m_axi_awlen_UNCONNECTED[7:0]),
        .m_axi_awlock(NLW_fifo_gen_inst_m_axi_awlock_UNCONNECTED[1:0]),
        .m_axi_awprot(NLW_fifo_gen_inst_m_axi_awprot_UNCONNECTED[2:0]),
        .m_axi_awqos(NLW_fifo_gen_inst_m_axi_awqos_UNCONNECTED[3:0]),
        .m_axi_awready(1'b0),
        .m_axi_awregion(NLW_fifo_gen_inst_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awsize(NLW_fifo_gen_inst_m_axi_awsize_UNCONNECTED[2:0]),
        .m_axi_awuser(NLW_fifo_gen_inst_m_axi_awuser_UNCONNECTED[0]),
        .m_axi_awvalid(NLW_fifo_gen_inst_m_axi_awvalid_UNCONNECTED),
        .m_axi_bid({1'b0,1'b0,1'b0,1'b0}),
        .m_axi_bready(NLW_fifo_gen_inst_m_axi_bready_UNCONNECTED),
        .m_axi_bresp({1'b0,1'b0}),
        .m_axi_buser(1'b0),
        .m_axi_bvalid(1'b0),
        .m_axi_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rid({1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rlast(1'b0),
        .m_axi_rready(NLW_fifo_gen_inst_m_axi_rready_UNCONNECTED),
        .m_axi_rresp({1'b0,1'b0}),
        .m_axi_ruser(1'b0),
        .m_axi_rvalid(1'b0),
        .m_axi_wdata(NLW_fifo_gen_inst_m_axi_wdata_UNCONNECTED[63:0]),
        .m_axi_wid(NLW_fifo_gen_inst_m_axi_wid_UNCONNECTED[3:0]),
        .m_axi_wlast(NLW_fifo_gen_inst_m_axi_wlast_UNCONNECTED),
        .m_axi_wready(1'b0),
        .m_axi_wstrb(NLW_fifo_gen_inst_m_axi_wstrb_UNCONNECTED[7:0]),
        .m_axi_wuser(NLW_fifo_gen_inst_m_axi_wuser_UNCONNECTED[0]),
        .m_axi_wvalid(NLW_fifo_gen_inst_m_axi_wvalid_UNCONNECTED),
        .m_axis_tdata(NLW_fifo_gen_inst_m_axis_tdata_UNCONNECTED[63:0]),
        .m_axis_tdest(NLW_fifo_gen_inst_m_axis_tdest_UNCONNECTED[3:0]),
        .m_axis_tid(NLW_fifo_gen_inst_m_axis_tid_UNCONNECTED[7:0]),
        .m_axis_tkeep(NLW_fifo_gen_inst_m_axis_tkeep_UNCONNECTED[3:0]),
        .m_axis_tlast(NLW_fifo_gen_inst_m_axis_tlast_UNCONNECTED),
        .m_axis_tready(1'b0),
        .m_axis_tstrb(NLW_fifo_gen_inst_m_axis_tstrb_UNCONNECTED[3:0]),
        .m_axis_tuser(NLW_fifo_gen_inst_m_axis_tuser_UNCONNECTED[3:0]),
        .m_axis_tvalid(NLW_fifo_gen_inst_m_axis_tvalid_UNCONNECTED),
        .overflow(NLW_fifo_gen_inst_overflow_UNCONNECTED),
        .prog_empty(NLW_fifo_gen_inst_prog_empty_UNCONNECTED),
        .prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full(NLW_fifo_gen_inst_prog_full_UNCONNECTED),
        .prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rd_clk(1'b0),
        .rd_data_count(NLW_fifo_gen_inst_rd_data_count_UNCONNECTED[5:0]),
        .rd_en(rd_en),
        .rd_rst(1'b0),
        .rd_rst_busy(NLW_fifo_gen_inst_rd_rst_busy_UNCONNECTED),
        .rst(SR),
        .s_aclk(1'b0),
        .s_aclk_en(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlock({1'b0,1'b0}),
        .s_axi_arprot({1'b0,1'b0,1'b0}),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_fifo_gen_inst_s_axi_arready_UNCONNECTED),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_aruser(1'b0),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlock({1'b0,1'b0}),
        .s_axi_awprot({1'b0,1'b0,1'b0}),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_fifo_gen_inst_s_axi_awready_UNCONNECTED),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awuser(1'b0),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_fifo_gen_inst_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_fifo_gen_inst_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_buser(NLW_fifo_gen_inst_s_axi_buser_UNCONNECTED[0]),
        .s_axi_bvalid(NLW_fifo_gen_inst_s_axi_bvalid_UNCONNECTED),
        .s_axi_rdata(NLW_fifo_gen_inst_s_axi_rdata_UNCONNECTED[63:0]),
        .s_axi_rid(NLW_fifo_gen_inst_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_fifo_gen_inst_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_fifo_gen_inst_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_ruser(NLW_fifo_gen_inst_s_axi_ruser_UNCONNECTED[0]),
        .s_axi_rvalid(NLW_fifo_gen_inst_s_axi_rvalid_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_fifo_gen_inst_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wuser(1'b0),
        .s_axi_wvalid(1'b0),
        .s_axis_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tdest({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tkeep({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tlast(1'b0),
        .s_axis_tready(NLW_fifo_gen_inst_s_axis_tready_UNCONNECTED),
        .s_axis_tstrb({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tuser({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tvalid(1'b0),
        .sbiterr(NLW_fifo_gen_inst_sbiterr_UNCONNECTED),
        .sleep(1'b0),
        .srst(1'b0),
        .underflow(NLW_fifo_gen_inst_underflow_UNCONNECTED),
        .valid(NLW_fifo_gen_inst_valid_UNCONNECTED),
        .wr_ack(NLW_fifo_gen_inst_wr_ack_UNCONNECTED),
        .wr_clk(1'b0),
        .wr_data_count(NLW_fifo_gen_inst_wr_data_count_UNCONNECTED[5:0]),
        .wr_en(cmd_push),
        .wr_rst(1'b0),
        .wr_rst_busy(NLW_fifo_gen_inst_wr_rst_busy_UNCONNECTED));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h02)) 
    fifo_gen_inst_i_1
       (.I0(command_ongoing),
        .I1(full),
        .I2(m_axi_awvalid_0),
        .O(cmd_push));
  LUT6 #(
    .INIT(64'hE4E4CC664E4ECC66)) 
    \length_counter_1[1]_i_1 
       (.I0(empty_fwft_i_reg),
        .I1(length_counter_1_reg[1]),
        .I2(dout[1]),
        .I3(length_counter_1_reg[0]),
        .I4(first_mi_word),
        .I5(dout[0]),
        .O(length_counter_1_reg_1_sn_1));
  LUT3 #(
    .INIT(8'hA2)) 
    m_axi_awvalid_INST_0
       (.I0(command_ongoing),
        .I1(full),
        .I2(m_axi_awvalid_0),
        .O(m_axi_awvalid));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h2)) 
    m_axi_wvalid_INST_0
       (.I0(s_axi_wvalid),
        .I1(empty),
        .O(m_axi_wvalid));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h40)) 
    s_axi_wready_INST_0
       (.I0(empty),
        .I1(s_axi_wvalid),
        .I2(m_axi_wready),
        .O(empty_fwft_i_reg));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_converter_v2_1_26_a_axi3_conv
   (dout,
    empty,
    SR,
    m_axi_awlen,
    m_axi_awlock,
    E,
    m_axi_awvalid,
    length_counter_1_reg_1_sp_1,
    empty_fwft_i_reg,
    m_axi_wvalid,
    m_axi_awaddr,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awqos,
    aclk,
    rd_en,
    s_axi_awlock,
    aresetn,
    m_axi_awready,
    length_counter_1_reg,
    first_mi_word,
    s_axi_wvalid,
    m_axi_wready,
    s_axi_awvalid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awqos);
  output [3:0]dout;
  output empty;
  output [0:0]SR;
  output [3:0]m_axi_awlen;
  output [0:0]m_axi_awlock;
  output [0:0]E;
  output m_axi_awvalid;
  output length_counter_1_reg_1_sp_1;
  output empty_fwft_i_reg;
  output m_axi_wvalid;
  output [63:0]m_axi_awaddr;
  output [2:0]m_axi_awsize;
  output [1:0]m_axi_awburst;
  output [3:0]m_axi_awcache;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awqos;
  input aclk;
  input rd_en;
  input [0:0]s_axi_awlock;
  input aresetn;
  input m_axi_awready;
  input [1:0]length_counter_1_reg;
  input first_mi_word;
  input s_axi_wvalid;
  input m_axi_wready;
  input s_axi_awvalid;
  input [63:0]s_axi_awaddr;
  input [3:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  input [3:0]s_axi_awqos;

  wire [0:0]E;
  wire [0:0]SR;
  wire \USE_BURSTS.cmd_queue_n_11 ;
  wire \USE_BURSTS.cmd_queue_n_12 ;
  wire \USE_BURSTS.cmd_queue_n_6 ;
  wire aclk;
  wire [1:0]areset_d;
  wire aresetn;
  wire cmd_push_block_reg_n_0;
  wire command_ongoing;
  wire [3:0]dout;
  wire empty;
  wire empty_fwft_i_reg;
  wire first_mi_word;
  wire [1:0]length_counter_1_reg;
  wire length_counter_1_reg_1_sn_1;
  wire [63:0]m_axi_awaddr;
  wire [1:0]m_axi_awburst;
  wire [3:0]m_axi_awcache;
  wire [3:0]m_axi_awlen;
  wire [0:0]m_axi_awlock;
  wire [2:0]m_axi_awprot;
  wire [3:0]m_axi_awqos;
  wire m_axi_awready;
  wire [2:0]m_axi_awsize;
  wire m_axi_awvalid;
  wire m_axi_wready;
  wire m_axi_wvalid;
  wire rd_en;
  wire [63:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [3:0]s_axi_awcache;
  wire [3:0]s_axi_awlen;
  wire [0:0]s_axi_awlock;
  wire [2:0]s_axi_awprot;
  wire [3:0]s_axi_awqos;
  wire [2:0]s_axi_awsize;
  wire s_axi_awvalid;
  wire s_axi_wvalid;

  assign length_counter_1_reg_1_sp_1 = length_counter_1_reg_1_sn_1;
  FDRE \S_AXI_AADDR_Q_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[0]),
        .Q(m_axi_awaddr[0]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[10] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[10]),
        .Q(m_axi_awaddr[10]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[11] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[11]),
        .Q(m_axi_awaddr[11]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[12] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[12]),
        .Q(m_axi_awaddr[12]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[13] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[13]),
        .Q(m_axi_awaddr[13]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[14] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[14]),
        .Q(m_axi_awaddr[14]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[15] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[15]),
        .Q(m_axi_awaddr[15]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[16] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[16]),
        .Q(m_axi_awaddr[16]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[17] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[17]),
        .Q(m_axi_awaddr[17]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[18] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[18]),
        .Q(m_axi_awaddr[18]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[19] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[19]),
        .Q(m_axi_awaddr[19]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[1] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[1]),
        .Q(m_axi_awaddr[1]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[20] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[20]),
        .Q(m_axi_awaddr[20]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[21] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[21]),
        .Q(m_axi_awaddr[21]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[22] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[22]),
        .Q(m_axi_awaddr[22]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[23] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[23]),
        .Q(m_axi_awaddr[23]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[24] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[24]),
        .Q(m_axi_awaddr[24]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[25] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[25]),
        .Q(m_axi_awaddr[25]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[26] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[26]),
        .Q(m_axi_awaddr[26]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[27] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[27]),
        .Q(m_axi_awaddr[27]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[28] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[28]),
        .Q(m_axi_awaddr[28]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[29] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[29]),
        .Q(m_axi_awaddr[29]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[2] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[2]),
        .Q(m_axi_awaddr[2]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[30] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[30]),
        .Q(m_axi_awaddr[30]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[31] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[31]),
        .Q(m_axi_awaddr[31]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[32] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[32]),
        .Q(m_axi_awaddr[32]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[33] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[33]),
        .Q(m_axi_awaddr[33]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[34] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[34]),
        .Q(m_axi_awaddr[34]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[35] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[35]),
        .Q(m_axi_awaddr[35]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[36] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[36]),
        .Q(m_axi_awaddr[36]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[37] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[37]),
        .Q(m_axi_awaddr[37]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[38] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[38]),
        .Q(m_axi_awaddr[38]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[39] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[39]),
        .Q(m_axi_awaddr[39]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[3] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[3]),
        .Q(m_axi_awaddr[3]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[40] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[40]),
        .Q(m_axi_awaddr[40]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[41] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[41]),
        .Q(m_axi_awaddr[41]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[42] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[42]),
        .Q(m_axi_awaddr[42]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[43] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[43]),
        .Q(m_axi_awaddr[43]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[44] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[44]),
        .Q(m_axi_awaddr[44]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[45] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[45]),
        .Q(m_axi_awaddr[45]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[46] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[46]),
        .Q(m_axi_awaddr[46]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[47] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[47]),
        .Q(m_axi_awaddr[47]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[48] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[48]),
        .Q(m_axi_awaddr[48]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[49] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[49]),
        .Q(m_axi_awaddr[49]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[4] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[4]),
        .Q(m_axi_awaddr[4]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[50] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[50]),
        .Q(m_axi_awaddr[50]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[51] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[51]),
        .Q(m_axi_awaddr[51]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[52] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[52]),
        .Q(m_axi_awaddr[52]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[53] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[53]),
        .Q(m_axi_awaddr[53]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[54] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[54]),
        .Q(m_axi_awaddr[54]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[55] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[55]),
        .Q(m_axi_awaddr[55]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[56] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[56]),
        .Q(m_axi_awaddr[56]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[57] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[57]),
        .Q(m_axi_awaddr[57]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[58] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[58]),
        .Q(m_axi_awaddr[58]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[59] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[59]),
        .Q(m_axi_awaddr[59]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[5] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[5]),
        .Q(m_axi_awaddr[5]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[60] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[60]),
        .Q(m_axi_awaddr[60]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[61] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[61]),
        .Q(m_axi_awaddr[61]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[62] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[62]),
        .Q(m_axi_awaddr[62]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[63] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[63]),
        .Q(m_axi_awaddr[63]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[6] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[6]),
        .Q(m_axi_awaddr[6]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[7] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[7]),
        .Q(m_axi_awaddr[7]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[8] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[8]),
        .Q(m_axi_awaddr[8]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[9] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[9]),
        .Q(m_axi_awaddr[9]),
        .R(SR));
  FDRE \S_AXI_ABURST_Q_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awburst[0]),
        .Q(m_axi_awburst[0]),
        .R(SR));
  FDRE \S_AXI_ABURST_Q_reg[1] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awburst[1]),
        .Q(m_axi_awburst[1]),
        .R(SR));
  FDRE \S_AXI_ACACHE_Q_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awcache[0]),
        .Q(m_axi_awcache[0]),
        .R(SR));
  FDRE \S_AXI_ACACHE_Q_reg[1] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awcache[1]),
        .Q(m_axi_awcache[1]),
        .R(SR));
  FDRE \S_AXI_ACACHE_Q_reg[2] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awcache[2]),
        .Q(m_axi_awcache[2]),
        .R(SR));
  FDRE \S_AXI_ACACHE_Q_reg[3] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awcache[3]),
        .Q(m_axi_awcache[3]),
        .R(SR));
  FDRE \S_AXI_ALEN_Q_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awlen[0]),
        .Q(m_axi_awlen[0]),
        .R(SR));
  FDRE \S_AXI_ALEN_Q_reg[1] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awlen[1]),
        .Q(m_axi_awlen[1]),
        .R(SR));
  FDRE \S_AXI_ALEN_Q_reg[2] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awlen[2]),
        .Q(m_axi_awlen[2]),
        .R(SR));
  FDRE \S_AXI_ALEN_Q_reg[3] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awlen[3]),
        .Q(m_axi_awlen[3]),
        .R(SR));
  FDRE \S_AXI_ALOCK_Q_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awlock),
        .Q(m_axi_awlock),
        .R(SR));
  FDRE \S_AXI_APROT_Q_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awprot[0]),
        .Q(m_axi_awprot[0]),
        .R(SR));
  FDRE \S_AXI_APROT_Q_reg[1] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awprot[1]),
        .Q(m_axi_awprot[1]),
        .R(SR));
  FDRE \S_AXI_APROT_Q_reg[2] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awprot[2]),
        .Q(m_axi_awprot[2]),
        .R(SR));
  FDRE \S_AXI_AQOS_Q_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awqos[0]),
        .Q(m_axi_awqos[0]),
        .R(SR));
  FDRE \S_AXI_AQOS_Q_reg[1] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awqos[1]),
        .Q(m_axi_awqos[1]),
        .R(SR));
  FDRE \S_AXI_AQOS_Q_reg[2] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awqos[2]),
        .Q(m_axi_awqos[2]),
        .R(SR));
  FDRE \S_AXI_AQOS_Q_reg[3] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awqos[3]),
        .Q(m_axi_awqos[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    S_AXI_AREADY_I_reg
       (.C(aclk),
        .CE(1'b1),
        .D(\USE_BURSTS.cmd_queue_n_11 ),
        .Q(E),
        .R(SR));
  FDRE \S_AXI_ASIZE_Q_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awsize[0]),
        .Q(m_axi_awsize[0]),
        .R(SR));
  FDRE \S_AXI_ASIZE_Q_reg[1] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awsize[1]),
        .Q(m_axi_awsize[1]),
        .R(SR));
  FDRE \S_AXI_ASIZE_Q_reg[2] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awsize[2]),
        .Q(m_axi_awsize[2]),
        .R(SR));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_data_fifo_v2_1_25_axic_fifo \USE_BURSTS.cmd_queue 
       (.E(E),
        .Q(areset_d),
        .SR(SR),
        .S_AXI_AREADY_I_reg(\USE_BURSTS.cmd_queue_n_11 ),
        .aclk(aclk),
        .\areset_d_reg[1] (\USE_BURSTS.cmd_queue_n_12 ),
        .aresetn(aresetn),
        .aresetn_0(\USE_BURSTS.cmd_queue_n_6 ),
        .command_ongoing(command_ongoing),
        .dout(dout),
        .empty(empty),
        .empty_fwft_i_reg(empty_fwft_i_reg),
        .first_mi_word(first_mi_word),
        .length_counter_1_reg(length_counter_1_reg),
        .length_counter_1_reg_1_sp_1(length_counter_1_reg_1_sn_1),
        .m_axi_awlen(m_axi_awlen),
        .m_axi_awready(m_axi_awready),
        .m_axi_awvalid(m_axi_awvalid),
        .m_axi_awvalid_0(cmd_push_block_reg_n_0),
        .m_axi_wready(m_axi_wready),
        .m_axi_wvalid(m_axi_wvalid),
        .rd_en(rd_en),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_wvalid(s_axi_wvalid));
  FDRE #(
    .INIT(1'b0)) 
    \areset_d_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(SR),
        .Q(areset_d[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \areset_d_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(areset_d[0]),
        .Q(areset_d[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    cmd_push_block_reg
       (.C(aclk),
        .CE(1'b1),
        .D(\USE_BURSTS.cmd_queue_n_6 ),
        .Q(cmd_push_block_reg_n_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    command_ongoing_reg
       (.C(aclk),
        .CE(1'b1),
        .D(\USE_BURSTS.cmd_queue_n_12 ),
        .Q(command_ongoing),
        .R(SR));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_converter_v2_1_26_axi3_conv
   (m_axi_awlen,
    m_axi_awaddr,
    E,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awqos,
    m_axi_awvalid,
    empty_fwft_i_reg,
    m_axi_wvalid,
    m_axi_wlast,
    aresetn,
    m_axi_awready,
    aclk,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awqos,
    m_axi_wready,
    s_axi_wvalid,
    s_axi_awvalid);
  output [3:0]m_axi_awlen;
  output [63:0]m_axi_awaddr;
  output [0:0]E;
  output [2:0]m_axi_awsize;
  output [1:0]m_axi_awburst;
  output [0:0]m_axi_awlock;
  output [3:0]m_axi_awcache;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awqos;
  output m_axi_awvalid;
  output empty_fwft_i_reg;
  output m_axi_wvalid;
  output m_axi_wlast;
  input aresetn;
  input m_axi_awready;
  input aclk;
  input [63:0]s_axi_awaddr;
  input [3:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input [0:0]s_axi_awlock;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  input [3:0]s_axi_awqos;
  input m_axi_wready;
  input s_axi_wvalid;
  input s_axi_awvalid;

  wire [0:0]E;
  wire \USE_BURSTS.cmd_queue/inst/empty ;
  wire [3:0]\USE_WRITE.wr_cmd_length ;
  wire \USE_WRITE.wr_cmd_ready ;
  wire \USE_WRITE.write_addr_inst_n_13 ;
  wire \USE_WRITE.write_addr_inst_n_5 ;
  wire aclk;
  wire aresetn;
  wire empty_fwft_i_reg;
  wire first_mi_word;
  wire [1:0]length_counter_1_reg;
  wire [63:0]m_axi_awaddr;
  wire [1:0]m_axi_awburst;
  wire [3:0]m_axi_awcache;
  wire [3:0]m_axi_awlen;
  wire [0:0]m_axi_awlock;
  wire [2:0]m_axi_awprot;
  wire [3:0]m_axi_awqos;
  wire m_axi_awready;
  wire [2:0]m_axi_awsize;
  wire m_axi_awvalid;
  wire m_axi_wlast;
  wire m_axi_wready;
  wire m_axi_wvalid;
  wire [63:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [3:0]s_axi_awcache;
  wire [3:0]s_axi_awlen;
  wire [0:0]s_axi_awlock;
  wire [2:0]s_axi_awprot;
  wire [3:0]s_axi_awqos;
  wire [2:0]s_axi_awsize;
  wire s_axi_awvalid;
  wire s_axi_wvalid;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_converter_v2_1_26_a_axi3_conv \USE_WRITE.write_addr_inst 
       (.E(E),
        .SR(\USE_WRITE.write_addr_inst_n_5 ),
        .aclk(aclk),
        .aresetn(aresetn),
        .dout(\USE_WRITE.wr_cmd_length ),
        .empty(\USE_BURSTS.cmd_queue/inst/empty ),
        .empty_fwft_i_reg(empty_fwft_i_reg),
        .first_mi_word(first_mi_word),
        .length_counter_1_reg(length_counter_1_reg),
        .length_counter_1_reg_1_sp_1(\USE_WRITE.write_addr_inst_n_13 ),
        .m_axi_awaddr(m_axi_awaddr),
        .m_axi_awburst(m_axi_awburst),
        .m_axi_awcache(m_axi_awcache),
        .m_axi_awlen(m_axi_awlen),
        .m_axi_awlock(m_axi_awlock),
        .m_axi_awprot(m_axi_awprot),
        .m_axi_awqos(m_axi_awqos),
        .m_axi_awready(m_axi_awready),
        .m_axi_awsize(m_axi_awsize),
        .m_axi_awvalid(m_axi_awvalid),
        .m_axi_wready(m_axi_wready),
        .m_axi_wvalid(m_axi_wvalid),
        .rd_en(\USE_WRITE.wr_cmd_ready ),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awburst(s_axi_awburst),
        .s_axi_awcache(s_axi_awcache),
        .s_axi_awlen(s_axi_awlen),
        .s_axi_awlock(s_axi_awlock),
        .s_axi_awprot(s_axi_awprot),
        .s_axi_awqos(s_axi_awqos),
        .s_axi_awsize(s_axi_awsize),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_wvalid(s_axi_wvalid));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_converter_v2_1_26_w_axi3_conv \USE_WRITE.write_data_inst 
       (.SR(\USE_WRITE.write_addr_inst_n_5 ),
        .aclk(aclk),
        .dout(\USE_WRITE.wr_cmd_length ),
        .empty(\USE_BURSTS.cmd_queue/inst/empty ),
        .first_mi_word(first_mi_word),
        .\length_counter_1_reg[1]_0 (length_counter_1_reg),
        .\length_counter_1_reg[1]_1 (\USE_WRITE.write_addr_inst_n_13 ),
        .\length_counter_1_reg[2]_0 (empty_fwft_i_reg),
        .m_axi_wlast(m_axi_wlast),
        .m_axi_wready(m_axi_wready),
        .rd_en(\USE_WRITE.wr_cmd_ready ),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

(* C_AXI_ADDR_WIDTH = "64" *) (* C_AXI_ARUSER_WIDTH = "1" *) (* C_AXI_AWUSER_WIDTH = "1" *) 
(* C_AXI_BUSER_WIDTH = "1" *) (* C_AXI_DATA_WIDTH = "64" *) (* C_AXI_ID_WIDTH = "1" *) 
(* C_AXI_RUSER_WIDTH = "1" *) (* C_AXI_SUPPORTS_READ = "1" *) (* C_AXI_SUPPORTS_USER_SIGNALS = "0" *) 
(* C_AXI_SUPPORTS_WRITE = "1" *) (* C_AXI_WUSER_WIDTH = "1" *) (* C_FAMILY = "zynq" *) 
(* C_IGNORE_ID = "1" *) (* C_M_AXI_PROTOCOL = "1" *) (* C_S_AXI_PROTOCOL = "0" *) 
(* C_TRANSLATION_MODE = "0" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* P_AXI3 = "1" *) 
(* P_AXI4 = "0" *) (* P_AXILITE = "2" *) (* P_AXILITE_SIZE = "3'b011" *) 
(* P_CONVERSION = "2" *) (* P_DECERR = "2'b11" *) (* P_INCR = "2'b01" *) 
(* P_PROTECTION = "1" *) (* P_SLVERR = "2'b10" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_converter_v2_1_26_axi_protocol_converter
   (aclk,
    aresetn,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awregion,
    s_axi_awqos,
    s_axi_awuser,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wid,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wuser,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_buser,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arregion,
    s_axi_arqos,
    s_axi_aruser,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_ruser,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_awid,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awregion,
    m_axi_awqos,
    m_axi_awuser,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wid,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wlast,
    m_axi_wuser,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bid,
    m_axi_bresp,
    m_axi_buser,
    m_axi_bvalid,
    m_axi_bready,
    m_axi_arid,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arsize,
    m_axi_arburst,
    m_axi_arlock,
    m_axi_arcache,
    m_axi_arprot,
    m_axi_arregion,
    m_axi_arqos,
    m_axi_aruser,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rid,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rlast,
    m_axi_ruser,
    m_axi_rvalid,
    m_axi_rready);
  input aclk;
  input aresetn;
  input [0:0]s_axi_awid;
  input [63:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input [0:0]s_axi_awlock;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  input [3:0]s_axi_awregion;
  input [3:0]s_axi_awqos;
  input [0:0]s_axi_awuser;
  input s_axi_awvalid;
  output s_axi_awready;
  input [0:0]s_axi_wid;
  input [63:0]s_axi_wdata;
  input [7:0]s_axi_wstrb;
  input s_axi_wlast;
  input [0:0]s_axi_wuser;
  input s_axi_wvalid;
  output s_axi_wready;
  output [0:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output [0:0]s_axi_buser;
  output s_axi_bvalid;
  input s_axi_bready;
  input [0:0]s_axi_arid;
  input [63:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input [0:0]s_axi_arlock;
  input [3:0]s_axi_arcache;
  input [2:0]s_axi_arprot;
  input [3:0]s_axi_arregion;
  input [3:0]s_axi_arqos;
  input [0:0]s_axi_aruser;
  input s_axi_arvalid;
  output s_axi_arready;
  output [0:0]s_axi_rid;
  output [63:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output [0:0]s_axi_ruser;
  output s_axi_rvalid;
  input s_axi_rready;
  output [0:0]m_axi_awid;
  output [63:0]m_axi_awaddr;
  output [3:0]m_axi_awlen;
  output [2:0]m_axi_awsize;
  output [1:0]m_axi_awburst;
  output [1:0]m_axi_awlock;
  output [3:0]m_axi_awcache;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awregion;
  output [3:0]m_axi_awqos;
  output [0:0]m_axi_awuser;
  output m_axi_awvalid;
  input m_axi_awready;
  output [0:0]m_axi_wid;
  output [63:0]m_axi_wdata;
  output [7:0]m_axi_wstrb;
  output m_axi_wlast;
  output [0:0]m_axi_wuser;
  output m_axi_wvalid;
  input m_axi_wready;
  input [0:0]m_axi_bid;
  input [1:0]m_axi_bresp;
  input [0:0]m_axi_buser;
  input m_axi_bvalid;
  output m_axi_bready;
  output [0:0]m_axi_arid;
  output [63:0]m_axi_araddr;
  output [3:0]m_axi_arlen;
  output [2:0]m_axi_arsize;
  output [1:0]m_axi_arburst;
  output [1:0]m_axi_arlock;
  output [3:0]m_axi_arcache;
  output [2:0]m_axi_arprot;
  output [3:0]m_axi_arregion;
  output [3:0]m_axi_arqos;
  output [0:0]m_axi_aruser;
  output m_axi_arvalid;
  input m_axi_arready;
  input [0:0]m_axi_rid;
  input [63:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input m_axi_rlast;
  input [0:0]m_axi_ruser;
  input m_axi_rvalid;
  output m_axi_rready;

  wire \<const0> ;
  wire aclk;
  wire aresetn;
  wire m_axi_arready;
  wire [63:0]m_axi_awaddr;
  wire [1:0]m_axi_awburst;
  wire [3:0]m_axi_awcache;
  wire [3:0]m_axi_awlen;
  wire [0:0]\^m_axi_awlock ;
  wire [2:0]m_axi_awprot;
  wire [3:0]m_axi_awqos;
  wire m_axi_awready;
  wire [2:0]m_axi_awsize;
  wire m_axi_awvalid;
  wire [1:0]m_axi_bresp;
  wire m_axi_bvalid;
  wire [63:0]m_axi_rdata;
  wire m_axi_rlast;
  wire [1:0]m_axi_rresp;
  wire m_axi_rvalid;
  wire m_axi_wlast;
  wire m_axi_wready;
  wire m_axi_wvalid;
  wire [63:0]s_axi_araddr;
  wire [1:0]s_axi_arburst;
  wire [3:0]s_axi_arcache;
  wire [7:0]s_axi_arlen;
  wire [0:0]s_axi_arlock;
  wire [2:0]s_axi_arprot;
  wire [3:0]s_axi_arqos;
  wire [2:0]s_axi_arsize;
  wire s_axi_arvalid;
  wire [63:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [3:0]s_axi_awcache;
  wire [7:0]s_axi_awlen;
  wire [0:0]s_axi_awlock;
  wire [2:0]s_axi_awprot;
  wire [3:0]s_axi_awqos;
  wire s_axi_awready;
  wire [2:0]s_axi_awsize;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_rready;
  wire [63:0]s_axi_wdata;
  wire s_axi_wready;
  wire [7:0]s_axi_wstrb;
  wire s_axi_wvalid;

  assign m_axi_araddr[63:0] = s_axi_araddr;
  assign m_axi_arburst[1:0] = s_axi_arburst;
  assign m_axi_arcache[3:0] = s_axi_arcache;
  assign m_axi_arid[0] = \<const0> ;
  assign m_axi_arlen[3:0] = s_axi_arlen[3:0];
  assign m_axi_arlock[1] = \<const0> ;
  assign m_axi_arlock[0] = s_axi_arlock;
  assign m_axi_arprot[2:0] = s_axi_arprot;
  assign m_axi_arqos[3:0] = s_axi_arqos;
  assign m_axi_arregion[3] = \<const0> ;
  assign m_axi_arregion[2] = \<const0> ;
  assign m_axi_arregion[1] = \<const0> ;
  assign m_axi_arregion[0] = \<const0> ;
  assign m_axi_arsize[2:0] = s_axi_arsize;
  assign m_axi_aruser[0] = \<const0> ;
  assign m_axi_arvalid = s_axi_arvalid;
  assign m_axi_awid[0] = \<const0> ;
  assign m_axi_awlock[1] = \<const0> ;
  assign m_axi_awlock[0] = \^m_axi_awlock [0];
  assign m_axi_awregion[3] = \<const0> ;
  assign m_axi_awregion[2] = \<const0> ;
  assign m_axi_awregion[1] = \<const0> ;
  assign m_axi_awregion[0] = \<const0> ;
  assign m_axi_awuser[0] = \<const0> ;
  assign m_axi_bready = s_axi_bready;
  assign m_axi_rready = s_axi_rready;
  assign m_axi_wdata[63:0] = s_axi_wdata;
  assign m_axi_wid[0] = \<const0> ;
  assign m_axi_wstrb[7:0] = s_axi_wstrb;
  assign m_axi_wuser[0] = \<const0> ;
  assign s_axi_arready = m_axi_arready;
  assign s_axi_bid[0] = \<const0> ;
  assign s_axi_bresp[1:0] = m_axi_bresp;
  assign s_axi_buser[0] = \<const0> ;
  assign s_axi_bvalid = m_axi_bvalid;
  assign s_axi_rdata[63:0] = m_axi_rdata;
  assign s_axi_rid[0] = \<const0> ;
  assign s_axi_rlast = m_axi_rlast;
  assign s_axi_rresp[1:0] = m_axi_rresp;
  assign s_axi_ruser[0] = \<const0> ;
  assign s_axi_rvalid = m_axi_rvalid;
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_converter_v2_1_26_axi3_conv \gen_axi4_axi3.axi3_conv_inst 
       (.E(s_axi_awready),
        .aclk(aclk),
        .aresetn(aresetn),
        .empty_fwft_i_reg(s_axi_wready),
        .m_axi_awaddr(m_axi_awaddr),
        .m_axi_awburst(m_axi_awburst),
        .m_axi_awcache(m_axi_awcache),
        .m_axi_awlen(m_axi_awlen),
        .m_axi_awlock(\^m_axi_awlock ),
        .m_axi_awprot(m_axi_awprot),
        .m_axi_awqos(m_axi_awqos),
        .m_axi_awready(m_axi_awready),
        .m_axi_awsize(m_axi_awsize),
        .m_axi_awvalid(m_axi_awvalid),
        .m_axi_wlast(m_axi_wlast),
        .m_axi_wready(m_axi_wready),
        .m_axi_wvalid(m_axi_wvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awburst(s_axi_awburst),
        .s_axi_awcache(s_axi_awcache),
        .s_axi_awlen(s_axi_awlen[3:0]),
        .s_axi_awlock(s_axi_awlock),
        .s_axi_awprot(s_axi_awprot),
        .s_axi_awqos(s_axi_awqos),
        .s_axi_awsize(s_axi_awsize),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_converter_v2_1_26_w_axi3_conv
   (\length_counter_1_reg[1]_0 ,
    first_mi_word,
    rd_en,
    m_axi_wlast,
    SR,
    aclk,
    \length_counter_1_reg[1]_1 ,
    \length_counter_1_reg[2]_0 ,
    m_axi_wready,
    s_axi_wvalid,
    empty,
    dout);
  output [1:0]\length_counter_1_reg[1]_0 ;
  output first_mi_word;
  output rd_en;
  output m_axi_wlast;
  input [0:0]SR;
  input aclk;
  input \length_counter_1_reg[1]_1 ;
  input \length_counter_1_reg[2]_0 ;
  input m_axi_wready;
  input s_axi_wvalid;
  input empty;
  input [3:0]dout;

  wire [0:0]SR;
  wire aclk;
  wire [3:0]dout;
  wire empty;
  wire first_mi_word;
  wire first_mi_word_i_1_n_0;
  wire \length_counter_1[0]_i_1_n_0 ;
  wire \length_counter_1[2]_i_1_n_0 ;
  wire \length_counter_1[3]_i_1_n_0 ;
  wire \length_counter_1[4]_i_1_n_0 ;
  wire \length_counter_1[4]_i_2_n_0 ;
  wire \length_counter_1[5]_i_1_n_0 ;
  wire \length_counter_1[6]_i_1_n_0 ;
  wire \length_counter_1[7]_i_1_n_0 ;
  wire [7:2]length_counter_1_reg;
  wire [1:0]\length_counter_1_reg[1]_0 ;
  wire \length_counter_1_reg[1]_1 ;
  wire \length_counter_1_reg[2]_0 ;
  wire m_axi_wlast;
  wire m_axi_wlast_INST_0_i_1_n_0;
  wire m_axi_wlast_INST_0_i_2_n_0;
  wire m_axi_wlast_INST_0_i_3_n_0;
  wire m_axi_wready;
  wire rd_en;
  wire s_axi_wvalid;

  LUT6 #(
    .INIT(64'h0000CC000000CC04)) 
    fifo_gen_inst_i_2
       (.I0(length_counter_1_reg[7]),
        .I1(\length_counter_1_reg[2]_0 ),
        .I2(length_counter_1_reg[5]),
        .I3(first_mi_word),
        .I4(m_axi_wlast_INST_0_i_1_n_0),
        .I5(length_counter_1_reg[6]),
        .O(rd_en));
  LUT6 #(
    .INIT(64'h0F0FFFFF00010000)) 
    first_mi_word_i_1
       (.I0(length_counter_1_reg[7]),
        .I1(length_counter_1_reg[5]),
        .I2(m_axi_wlast_INST_0_i_1_n_0),
        .I3(length_counter_1_reg[6]),
        .I4(\length_counter_1_reg[2]_0 ),
        .I5(first_mi_word),
        .O(first_mi_word_i_1_n_0));
  FDSE #(
    .INIT(1'b0)) 
    first_mi_word_reg
       (.C(aclk),
        .CE(1'b1),
        .D(first_mi_word_i_1_n_0),
        .Q(first_mi_word),
        .S(SR));
  LUT6 #(
    .INIT(64'hF2FFFFFF07000000)) 
    \length_counter_1[0]_i_1 
       (.I0(first_mi_word),
        .I1(dout[0]),
        .I2(empty),
        .I3(s_axi_wvalid),
        .I4(m_axi_wready),
        .I5(\length_counter_1_reg[1]_0 [0]),
        .O(\length_counter_1[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'hD8D272D2)) 
    \length_counter_1[2]_i_1 
       (.I0(\length_counter_1_reg[2]_0 ),
        .I1(m_axi_wlast_INST_0_i_3_n_0),
        .I2(length_counter_1_reg[2]),
        .I3(first_mi_word),
        .I4(dout[2]),
        .O(\length_counter_1[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'hB8B474B4)) 
    \length_counter_1[3]_i_1 
       (.I0(\length_counter_1[4]_i_2_n_0 ),
        .I1(\length_counter_1_reg[2]_0 ),
        .I2(length_counter_1_reg[3]),
        .I3(first_mi_word),
        .I4(dout[3]),
        .O(\length_counter_1[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0A0A3A35AAAAAAAA)) 
    \length_counter_1[4]_i_1 
       (.I0(length_counter_1_reg[4]),
        .I1(dout[3]),
        .I2(first_mi_word),
        .I3(length_counter_1_reg[3]),
        .I4(\length_counter_1[4]_i_2_n_0 ),
        .I5(\length_counter_1_reg[2]_0 ),
        .O(\length_counter_1[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hFEAE)) 
    \length_counter_1[4]_i_2 
       (.I0(m_axi_wlast_INST_0_i_3_n_0),
        .I1(length_counter_1_reg[2]),
        .I2(first_mi_word),
        .I3(dout[2]),
        .O(\length_counter_1[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF7FF0000FFF70808)) 
    \length_counter_1[5]_i_1 
       (.I0(m_axi_wready),
        .I1(s_axi_wvalid),
        .I2(empty),
        .I3(first_mi_word),
        .I4(length_counter_1_reg[5]),
        .I5(m_axi_wlast_INST_0_i_1_n_0),
        .O(\length_counter_1[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h3EFF0D00)) 
    \length_counter_1[6]_i_1 
       (.I0(length_counter_1_reg[5]),
        .I1(first_mi_word),
        .I2(m_axi_wlast_INST_0_i_1_n_0),
        .I3(\length_counter_1_reg[2]_0 ),
        .I4(length_counter_1_reg[6]),
        .O(\length_counter_1[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h3F3EFFFF30310000)) 
    \length_counter_1[7]_i_1 
       (.I0(length_counter_1_reg[6]),
        .I1(m_axi_wlast_INST_0_i_1_n_0),
        .I2(first_mi_word),
        .I3(length_counter_1_reg[5]),
        .I4(\length_counter_1_reg[2]_0 ),
        .I5(length_counter_1_reg[7]),
        .O(\length_counter_1[7]_i_1_n_0 ));
  FDRE \length_counter_1_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\length_counter_1[0]_i_1_n_0 ),
        .Q(\length_counter_1_reg[1]_0 [0]),
        .R(SR));
  FDRE \length_counter_1_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\length_counter_1_reg[1]_1 ),
        .Q(\length_counter_1_reg[1]_0 [1]),
        .R(SR));
  FDRE \length_counter_1_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\length_counter_1[2]_i_1_n_0 ),
        .Q(length_counter_1_reg[2]),
        .R(SR));
  FDRE \length_counter_1_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(\length_counter_1[3]_i_1_n_0 ),
        .Q(length_counter_1_reg[3]),
        .R(SR));
  FDRE \length_counter_1_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(\length_counter_1[4]_i_1_n_0 ),
        .Q(length_counter_1_reg[4]),
        .R(SR));
  FDRE \length_counter_1_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .D(\length_counter_1[5]_i_1_n_0 ),
        .Q(length_counter_1_reg[5]),
        .R(SR));
  FDRE \length_counter_1_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(\length_counter_1[6]_i_1_n_0 ),
        .Q(length_counter_1_reg[6]),
        .R(SR));
  FDRE \length_counter_1_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .D(\length_counter_1[7]_i_1_n_0 ),
        .Q(length_counter_1_reg[7]),
        .R(SR));
  LUT5 #(
    .INIT(32'h00F000F1)) 
    m_axi_wlast_INST_0
       (.I0(length_counter_1_reg[7]),
        .I1(length_counter_1_reg[5]),
        .I2(first_mi_word),
        .I3(m_axi_wlast_INST_0_i_1_n_0),
        .I4(length_counter_1_reg[6]),
        .O(m_axi_wlast));
  LUT6 #(
    .INIT(64'hFFFFFFFEFCFCFFFE)) 
    m_axi_wlast_INST_0_i_1
       (.I0(length_counter_1_reg[4]),
        .I1(m_axi_wlast_INST_0_i_2_n_0),
        .I2(m_axi_wlast_INST_0_i_3_n_0),
        .I3(length_counter_1_reg[2]),
        .I4(first_mi_word),
        .I5(dout[2]),
        .O(m_axi_wlast_INST_0_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    m_axi_wlast_INST_0_i_2
       (.I0(dout[3]),
        .I1(first_mi_word),
        .I2(length_counter_1_reg[3]),
        .O(m_axi_wlast_INST_0_i_2_n_0));
  LUT5 #(
    .INIT(32'hFFFACCFA)) 
    m_axi_wlast_INST_0_i_3
       (.I0(\length_counter_1_reg[1]_0 [1]),
        .I1(dout[1]),
        .I2(\length_counter_1_reg[1]_0 [0]),
        .I3(first_mi_word),
        .I4(dout[0]),
        .O(m_axi_wlast_INST_0_i_3_n_0));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_auto_pc_1,axi_protocol_converter_v2_1_26_axi_protocol_converter,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "axi_protocol_converter_v2_1_26_axi_protocol_converter,Vivado 2022.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (aclk,
    aresetn,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awregion,
    s_axi_awqos,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arregion,
    s_axi_arqos,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awqos,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wlast,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bresp,
    m_axi_bvalid,
    m_axi_bready,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arsize,
    m_axi_arburst,
    m_axi_arlock,
    m_axi_arcache,
    m_axi_arprot,
    m_axi_arqos,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rlast,
    m_axi_rvalid,
    m_axi_rready);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK2, ASSOCIATED_BUSIF S_AXI:M_AXI, ASSOCIATED_RESET ARESETN, INSERT_VIP 0" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST, POLARITY ACTIVE_LOW, INSERT_VIP 0, TYPE INTERCONNECT" *) input aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWADDR" *) input [63:0]s_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWLEN" *) input [7:0]s_axi_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWSIZE" *) input [2:0]s_axi_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWBURST" *) input [1:0]s_axi_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWLOCK" *) input [0:0]s_axi_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWCACHE" *) input [3:0]s_axi_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWPROT" *) input [2:0]s_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWREGION" *) input [3:0]s_axi_awregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWQOS" *) input [3:0]s_axi_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWVALID" *) input s_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWREADY" *) output s_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WDATA" *) input [63:0]s_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WSTRB" *) input [7:0]s_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WLAST" *) input s_axi_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WVALID" *) input s_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WREADY" *) output s_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BRESP" *) output [1:0]s_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BVALID" *) output s_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BREADY" *) input s_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARADDR" *) input [63:0]s_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARLEN" *) input [7:0]s_axi_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARSIZE" *) input [2:0]s_axi_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARBURST" *) input [1:0]s_axi_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARLOCK" *) input [0:0]s_axi_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARCACHE" *) input [3:0]s_axi_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARPROT" *) input [2:0]s_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARREGION" *) input [3:0]s_axi_arregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARQOS" *) input [3:0]s_axi_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARVALID" *) input s_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARREADY" *) output s_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RDATA" *) output [63:0]s_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RRESP" *) output [1:0]s_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RLAST" *) output s_axi_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RVALID" *) output s_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI, DATA_WIDTH 64, PROTOCOL AXI4, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 64, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 8, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK2, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input s_axi_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWADDR" *) output [63:0]m_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWLEN" *) output [3:0]m_axi_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWSIZE" *) output [2:0]m_axi_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWBURST" *) output [1:0]m_axi_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWLOCK" *) output [1:0]m_axi_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWCACHE" *) output [3:0]m_axi_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWPROT" *) output [2:0]m_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWQOS" *) output [3:0]m_axi_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWVALID" *) output m_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWREADY" *) input m_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WDATA" *) output [63:0]m_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WSTRB" *) output [7:0]m_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WLAST" *) output m_axi_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WVALID" *) output m_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WREADY" *) input m_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI BRESP" *) input [1:0]m_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI BVALID" *) input m_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI BREADY" *) output m_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARADDR" *) output [63:0]m_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARLEN" *) output [3:0]m_axi_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARSIZE" *) output [2:0]m_axi_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARBURST" *) output [1:0]m_axi_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARLOCK" *) output [1:0]m_axi_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARCACHE" *) output [3:0]m_axi_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARPROT" *) output [2:0]m_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARQOS" *) output [3:0]m_axi_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARVALID" *) output m_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARREADY" *) input m_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RDATA" *) input [63:0]m_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RRESP" *) input [1:0]m_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RLAST" *) input m_axi_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RVALID" *) input m_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXI, DATA_WIDTH 64, PROTOCOL AXI3, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 64, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 8, MAX_BURST_LENGTH 16, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK2, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) output m_axi_rready;

  wire \<const0> ;
  wire aclk;
  wire aresetn;
  wire [63:0]m_axi_araddr;
  wire [1:0]m_axi_arburst;
  wire [3:0]m_axi_arcache;
  wire [3:0]m_axi_arlen;
  wire [0:0]\^m_axi_arlock ;
  wire [2:0]m_axi_arprot;
  wire [3:0]m_axi_arqos;
  wire m_axi_arready;
  wire [2:0]m_axi_arsize;
  wire m_axi_arvalid;
  wire [63:0]m_axi_awaddr;
  wire [1:0]m_axi_awburst;
  wire [3:0]m_axi_awcache;
  wire [3:0]m_axi_awlen;
  wire [0:0]\^m_axi_awlock ;
  wire [2:0]m_axi_awprot;
  wire [3:0]m_axi_awqos;
  wire m_axi_awready;
  wire [2:0]m_axi_awsize;
  wire m_axi_awvalid;
  wire m_axi_bready;
  wire [1:0]m_axi_bresp;
  wire m_axi_bvalid;
  wire [63:0]m_axi_rdata;
  wire m_axi_rlast;
  wire m_axi_rready;
  wire [1:0]m_axi_rresp;
  wire m_axi_rvalid;
  wire [63:0]m_axi_wdata;
  wire m_axi_wlast;
  wire m_axi_wready;
  wire [7:0]m_axi_wstrb;
  wire m_axi_wvalid;
  wire [63:0]s_axi_araddr;
  wire [1:0]s_axi_arburst;
  wire [3:0]s_axi_arcache;
  wire [7:0]s_axi_arlen;
  wire [0:0]s_axi_arlock;
  wire [2:0]s_axi_arprot;
  wire [3:0]s_axi_arqos;
  wire s_axi_arready;
  wire [2:0]s_axi_arsize;
  wire s_axi_arvalid;
  wire [63:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [3:0]s_axi_awcache;
  wire [7:0]s_axi_awlen;
  wire [0:0]s_axi_awlock;
  wire [2:0]s_axi_awprot;
  wire [3:0]s_axi_awqos;
  wire s_axi_awready;
  wire [2:0]s_axi_awsize;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [1:0]s_axi_bresp;
  wire s_axi_bvalid;
  wire [63:0]s_axi_rdata;
  wire s_axi_rlast;
  wire s_axi_rready;
  wire [1:0]s_axi_rresp;
  wire s_axi_rvalid;
  wire [63:0]s_axi_wdata;
  wire s_axi_wready;
  wire [7:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire [0:0]NLW_inst_m_axi_arid_UNCONNECTED;
  wire [1:1]NLW_inst_m_axi_arlock_UNCONNECTED;
  wire [3:0]NLW_inst_m_axi_arregion_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_aruser_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_awid_UNCONNECTED;
  wire [1:1]NLW_inst_m_axi_awlock_UNCONNECTED;
  wire [3:0]NLW_inst_m_axi_awregion_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_awuser_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_wid_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_wuser_UNCONNECTED;
  wire [0:0]NLW_inst_s_axi_bid_UNCONNECTED;
  wire [0:0]NLW_inst_s_axi_buser_UNCONNECTED;
  wire [0:0]NLW_inst_s_axi_rid_UNCONNECTED;
  wire [0:0]NLW_inst_s_axi_ruser_UNCONNECTED;

  assign m_axi_arlock[1] = \<const0> ;
  assign m_axi_arlock[0] = \^m_axi_arlock [0];
  assign m_axi_awlock[1] = \<const0> ;
  assign m_axi_awlock[0] = \^m_axi_awlock [0];
  GND GND
       (.G(\<const0> ));
  (* C_AXI_ADDR_WIDTH = "64" *) 
  (* C_AXI_ARUSER_WIDTH = "1" *) 
  (* C_AXI_AWUSER_WIDTH = "1" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "64" *) 
  (* C_AXI_ID_WIDTH = "1" *) 
  (* C_AXI_RUSER_WIDTH = "1" *) 
  (* C_AXI_SUPPORTS_READ = "1" *) 
  (* C_AXI_SUPPORTS_USER_SIGNALS = "0" *) 
  (* C_AXI_SUPPORTS_WRITE = "1" *) 
  (* C_AXI_WUSER_WIDTH = "1" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_IGNORE_ID = "1" *) 
  (* C_M_AXI_PROTOCOL = "1" *) 
  (* C_S_AXI_PROTOCOL = "0" *) 
  (* C_TRANSLATION_MODE = "0" *) 
  (* P_AXI3 = "1" *) 
  (* P_AXI4 = "0" *) 
  (* P_AXILITE = "2" *) 
  (* P_AXILITE_SIZE = "3'b011" *) 
  (* P_CONVERSION = "2" *) 
  (* P_DECERR = "2'b11" *) 
  (* P_INCR = "2'b01" *) 
  (* P_PROTECTION = "1" *) 
  (* P_SLVERR = "2'b10" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_converter_v2_1_26_axi_protocol_converter inst
       (.aclk(aclk),
        .aresetn(aresetn),
        .m_axi_araddr(m_axi_araddr),
        .m_axi_arburst(m_axi_arburst),
        .m_axi_arcache(m_axi_arcache),
        .m_axi_arid(NLW_inst_m_axi_arid_UNCONNECTED[0]),
        .m_axi_arlen(m_axi_arlen),
        .m_axi_arlock({NLW_inst_m_axi_arlock_UNCONNECTED[1],\^m_axi_arlock }),
        .m_axi_arprot(m_axi_arprot),
        .m_axi_arqos(m_axi_arqos),
        .m_axi_arready(m_axi_arready),
        .m_axi_arregion(NLW_inst_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arsize(m_axi_arsize),
        .m_axi_aruser(NLW_inst_m_axi_aruser_UNCONNECTED[0]),
        .m_axi_arvalid(m_axi_arvalid),
        .m_axi_awaddr(m_axi_awaddr),
        .m_axi_awburst(m_axi_awburst),
        .m_axi_awcache(m_axi_awcache),
        .m_axi_awid(NLW_inst_m_axi_awid_UNCONNECTED[0]),
        .m_axi_awlen(m_axi_awlen),
        .m_axi_awlock({NLW_inst_m_axi_awlock_UNCONNECTED[1],\^m_axi_awlock }),
        .m_axi_awprot(m_axi_awprot),
        .m_axi_awqos(m_axi_awqos),
        .m_axi_awready(m_axi_awready),
        .m_axi_awregion(NLW_inst_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awsize(m_axi_awsize),
        .m_axi_awuser(NLW_inst_m_axi_awuser_UNCONNECTED[0]),
        .m_axi_awvalid(m_axi_awvalid),
        .m_axi_bid(1'b0),
        .m_axi_bready(m_axi_bready),
        .m_axi_bresp(m_axi_bresp),
        .m_axi_buser(1'b0),
        .m_axi_bvalid(m_axi_bvalid),
        .m_axi_rdata(m_axi_rdata),
        .m_axi_rid(1'b0),
        .m_axi_rlast(m_axi_rlast),
        .m_axi_rready(m_axi_rready),
        .m_axi_rresp(m_axi_rresp),
        .m_axi_ruser(1'b0),
        .m_axi_rvalid(m_axi_rvalid),
        .m_axi_wdata(m_axi_wdata),
        .m_axi_wid(NLW_inst_m_axi_wid_UNCONNECTED[0]),
        .m_axi_wlast(m_axi_wlast),
        .m_axi_wready(m_axi_wready),
        .m_axi_wstrb(m_axi_wstrb),
        .m_axi_wuser(NLW_inst_m_axi_wuser_UNCONNECTED[0]),
        .m_axi_wvalid(m_axi_wvalid),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_arburst(s_axi_arburst),
        .s_axi_arcache(s_axi_arcache),
        .s_axi_arid(1'b0),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,s_axi_arlen[3:0]}),
        .s_axi_arlock(s_axi_arlock),
        .s_axi_arprot(s_axi_arprot),
        .s_axi_arqos(s_axi_arqos),
        .s_axi_arready(s_axi_arready),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize(s_axi_arsize),
        .s_axi_aruser(1'b0),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awburst(s_axi_awburst),
        .s_axi_awcache(s_axi_awcache),
        .s_axi_awid(1'b0),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,s_axi_awlen[3:0]}),
        .s_axi_awlock(s_axi_awlock),
        .s_axi_awprot(s_axi_awprot),
        .s_axi_awqos(s_axi_awqos),
        .s_axi_awready(s_axi_awready),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize(s_axi_awsize),
        .s_axi_awuser(1'b0),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bid(NLW_inst_s_axi_bid_UNCONNECTED[0]),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_buser(NLW_inst_s_axi_buser_UNCONNECTED[0]),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rid(NLW_inst_s_axi_rid_UNCONNECTED[0]),
        .s_axi_rlast(s_axi_rlast),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(s_axi_rresp),
        .s_axi_ruser(NLW_inst_s_axi_ruser_UNCONNECTED[0]),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wid(1'b0),
        .s_axi_wlast(1'b0),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wuser(1'b0),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

(* DEF_VAL = "1'b0" *) (* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) 
(* INV_DEF_VAL = "1'b1" *) (* RST_ACTIVE_HIGH = "1" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "ASYNC_RST" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_async_rst
   (src_arst,
    dest_clk,
    dest_arst);
  input src_arst;
  input dest_clk;
  output dest_arst;

  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ASYNC_RST" *) wire [1:0]arststages_ff;
  wire dest_clk;
  wire src_arst;

  assign dest_arst = arststages_ff[1];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(src_arst),
        .Q(arststages_ff[0]));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(arststages_ff[0]),
        .PRE(src_arst),
        .Q(arststages_ff[1]));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2022.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
h4/8v0FBgXUomE5kJVs58UlO/ao4SLHpniPXt+fomPPYB6tv3U0iBfOL5737ZNNEhgP1kkKeMvq+
VxOLW94g7JZT6mWc5ZuQ7jgK8Qpa6+1xpVVQBB6gVSEeHij7ZHqPdYaLC9rL/SR7notnBC1OujFi
++mTu5z/HJZtnN4VJQw=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Su6POoQw092/hg4JN8GOCSrLUa435VAUaqUned4C4G61yBHlUmaG63UO+KxY5pgyMrDH6/XH2bPa
fona2wB0Y0sw6W61PXOfiew7cH42baMY0P9UBRjH25EZTf72W3O8r7DNj16ob9pPi7bkuCd3aab3
hdfeY613n+hUbAXTLQqbhjqGmO9kFeC/VmdSITa02RauMnpfVxz1wLu9iUQ0V+mPTp6hvfNXlD0F
7oONLZJg+c6/+uSw1WbEiltO2Lplqvbb0sYbZjtTSEQZSdF4DiUdA0SGK+L75aDYGx3Z/ajCRpBx
Mr39wb5wiDr6SJ/QQ/JmYc+HrTs/fbN9BJ/Grg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
JbOromwhdJgnOFMOfO8mpnyFC1anQPoDL/XeHYQuoY4+0yjNmPGasGLGjanpoUgfOYngBHPrFFFH
rapGBPsHEbT6JXWHeRJexf2moVhmq1sHJ7n+Jx1rVNuyclUCC08Fg3sy6FdUQmptKSpqOw1x0DV8
R9ZlmwLTkoN8IV6D7sg=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
XbCcyKbk3pmZ92QhZ1iCj+9jpzUJAn91N3YYwVHN3gwcgTU0NRr0oD7EmkLoZ8hVAhh/9YMUp7DE
059wcAzCBsD2W3CWY+GHUSJS57Xt2yi9tZH7binajEyHpCqaFKKO9WxDTO9XnYLVswRvAii0DOJL
mY+z3Z0uDx55BVWqbbvDkA5gABsZLueFt15rXRJPRnAjzWXhYzjiqC1WQDy5UHl/LBDlsOMuouyd
gM4k7zzEZUOy4o1sI2isD+6T/wd+iOsXvq39rguDUtkw3SR4GJmk+rBu3rBh+EvBHKxaWqQjGGNV
qWyrqd89LjZFGnXZ2jvsgxldJWCellgTK1ZEfA==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
dG5h8R2Fe36rfzcvmeDU4OapeKO/Lhe0DkL+4c9AG4It+1yVmtHeEWL8eVWMvHdPTwqJqgkMQbh4
OO9/9XZMyYCWFJTHu4ossKo7zKccfTeBbKfgP+rDEckDTGIWXihj2YJ2N0p6q9Ynpsz9qOLdoXTY
gZXwoOe4MrZBJWZrDOqkD1hQ+cRUV9c8S6FlH+AyBNj5dlaAM0Jyq6a8TvcRmLoZfdi1zFWXeTUW
/XfWQRP+vnqqV8VPdyfaJJzaKnG1u9PnvSFauc3SzydGZfICacU2pPxqAaJWzDYwSns+vd4vCu7u
e01UXo4XXeFCvO/9mye0QnyrDHhuE0b1Svw/jQ==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_07", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
K8hvyEyHvgdg02DFF2GnEdLUq6j/uKT5fsI+Nkpbw14CRrq5p+STF83Or85VDleAax2TYln4LhGn
6G6INbZ4BdMuA4nVtyx5xaogScfMwbjrTAn0bqxT20M++g4cn4gW2g3oEFMnXaYCsLaJ58t4/T42
ocO8oqJeCowKICP/eM+B+/jSusNp4JILdp522MKky1zANadPwlv8a7QrMrJQrnb/lF8qC10yXqfM
LbKfbAEBaHlel46y7YBqdIimfeAVng194wkXobD6WuMhQOpFkigBOLQzoKQWN1TWeY5/rSQt9pcT
xLm+NEQmtlL61OudMCIqm++dCQSgE4NFJj1fCw==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
gSLVZdmdCqRy/3LoTp5M48T1hUUfGQp8cxVz4NQ+P65mrZ0oJJXHSaNbzdvtYH41+27aGh3RBbLb
pzz+TmeVuEVneG5nGe1VY2ogM1D7tBMRUvNgXK2PkSRLnk9tYgnxoYi0cYLBxa3piqBh44cdYXif
bT0Uh2vFogmdeH5hxVNFk8FEhULNtR/T9r9ilPNDQALb08fQM461sjlhS2jgRgH0X8LZqnBOii+F
7+GguDMENTlzU0XSYWEcGFH9V5PdYMehb0WgZeiqTchxRuQFmLjDhI4J5dkci8RmkLCwz4KyjfOi
S8Nkg20qh9otuAisfQTh4Qx2lC7x7BHgmuwy0w==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
kXlkvzJI7Tq1glqNfjqmCb8YU69bhN9hH5OsWvFNj7VseyX6/5l9Mgif4B1r1LeKz06I27dmB9g7
AuHBFZ0bPN86mURBL/HK/dTOGyLYAveWeOIK1kqX56i4H9UNIUObEphcz9wdT0OgXHTPMxiIpJhT
1o5oYJW49mDsAv5yxe4FvPo6rFgZAiEo34vJGDxzz4//zJq0z+GxJNCibpLydZBWaJWRfsDUs9pm
1O6hS3KPIL5Evg1JOFt1uwKb1xEA08ETT+qYwg6zmFfwQbs6O7modRmBtEd1n9mrqsgCAviiLPtN
LUFiLdrywPt7LArLCRz4h5uHJxz/21Pj5m1VZtZq9nFmsbp6Lw/0RF1+nN8o+RIu+/tmu74xkL/8
nNEc9mEFy912OKP6WDP4Ajzg4gl9xhtaYA5eGkNB/43YjgGsmTe+L0dyxHIwa734JNMb5zC5dRtR
V4pCnWZKmnDJDXvMftedQzqQvdFwJg5hLxrHfkPD8LqiOwVck/Nt6QSF

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
ADtaDIjUIR6zZBfz+lPRaDMdXcoufPACX4aSe06/DoTgIDvM+UOlm8rH20gKO3r8YdsuLtUh7rhz
ekJB22nBPUdbl3FvlGdQIgiCyJ8XgZYvvuOo9I765yKjFxQsFmQE0Ih86fqCqvYmRnsZkpk1uQ7v
JpqhWGBX6tLgYu/txP+ShnzFfkWGhj29JhYII0zqJMBCjGeM89F+mlH+X/YL5Q/fZYyh9Cr2CJx6
ofJpBZ1SPlXwgafXVi0QAUVuQEBmZYVn9Kze++tMEr6qv62ANq23LevYQfCsYKoY5iyf5U7jJ5Qx
eC9nG5Es4y6lz5giep7veaXdBFBHd7VuD56v4w==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
zFwVPvNmX5sBruiGDSfENTp6EBfydwYKhxWi0YDKQ4j0gu6AMV8yJP6GXeJs/A9Zgb1UFE+sJifk
OngE9N2vVRp43pAVauHQf1hUkSWPDJuZ9yEQZbR7F3mmiBKu/Aehj7KcAjv07FWv46HzxRL9E2xx
gpDOzAyNSNubxORv7bVYUV0C4Fr+tZRA6douG4rxi56npPfzIAZjyU4wPvwabxrJ9L4ZRuZXciLk
lJGTIJZTH2uclPmuo57jlIXGo1ZtQZgRCDfn7W02AQ7MDKblx47m+E+sUKKYHZlvf30GkPcwlucZ
ZcUcGnYaRCZnrhwFl0qxxXn2pO15vG4MJXOHMw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Lq86c/0SMuvdLuij6dbfI/ah4/50WGATVNRwXobLfbnZqWOhhEk3VDQATTxe7ZLrUauwrLuMoKhS
j4kqT2raqDijA51Tz7ee+F/MUKvyxGDJqfBi5JJX9y81LCXav7HpdRiPTy6w5O3tQoQbugh61D0B
oJBwNvL22Oi10e+Bu7H1yQvsbksxPAA8VE8HK+OJzZETk0PfHS2ySL5WXLQf7duD6CWmpWdLMrZQ
ojOqvNL31LsO1gZhssTk4RgyZUrZ3CboBbLWDxq2L/SsF5YiRIUPDTe17rRcrxa1y6LzMD/ve/nR
mptJOGxlUgLpJaPAA7jH3b+EQGlrHzHOsG8fFQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 71296)
`pragma protect data_block
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
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
