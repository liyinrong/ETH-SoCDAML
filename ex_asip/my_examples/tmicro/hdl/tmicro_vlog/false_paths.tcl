# These files contain Synopsys Confidential Information as governed by a
# Synopsys End User Software License Agreement ('Agreement') between
# Synopsys, Inc. and recipient. Recipient will use the files solely in
# connection with exercising recipient's rights under the Agreement.
# Recipient will protect the files from unauthorized use or dissemination to
# third parties. THE FILES ARE PROVIDED 'AS IS', WITHOUT ANY WARRANTIES,
# WHETHER EXPRESS, IMPLIED OR OTHERWISE. SYNOPSYS SPECIFICALLY DISCLAIMS
# ANY IMPLIED WARRANTIES OF NON-INFRINGEMENT, MERCHANTABILITY AND FITNESS
# FOR A PARTICULAR PURPOSE.


set_false_path -through inst_reg_SP/ag1p_out -through inst_mux_ag1p/ag1p_out -through inst_mux___dm_addr_pipe_w/__dm_addr_pipe_w_out

set_false_path -through inst_reg_SP/ag1p_out -through inst_mux_ag1p/ag1p_out -through inst_mux___pm_addr_pipe_w/__pm_addr_pipe_w_out

set_false_path -through inst_reg_SP/ag1p_out -through inst_mux_ag1p/ag1p_out -through inst_mux_dm_addr/dm_addr_out

set_false_path -through inst_mux_trgt/__CTaddr_cstP16_E1_in -through inst_mux_trgt/trgt_out -through inst_controller/lnk_if_out

set_false_path -through inst_mux_trgt/__CTaddr_cstP16_ID_in -through inst_mux_trgt/trgt_out -through inst_controller/lnk_if_out

set_false_path -through inst_reg_ILR/__trgt_r_ILR_out -through inst_mux_trgt/trgt_out -through inst_controller/lnk_if_out

set_false_path -through inst_reg_LR/__trgt_r_LR_out -through inst_mux_trgt/trgt_out -through inst_controller/lnk_if_out

set_false_path -through inst_reg_R/rse1_out -through inst_mux_trgt/trgt_out -through inst_controller/lnk_if_out

set_false_path -through inst_mux_trgt/__CTaddr_cstP16_E1_in -through inst_mux_trgt/trgt_out -through inst_controller/lnk_pf_out

set_false_path -through inst_mux_trgt/__CTuint4_cstP12_ID_in -through inst_mux_trgt/trgt_out -through inst_controller/lnk_pf_out

set_false_path -through inst_reg_ILR/__trgt_r_ILR_out -through inst_mux_trgt/trgt_out -through inst_controller/lnk_pf_out

set_false_path -through inst_reg_LR/__trgt_r_LR_out -through inst_mux_trgt/trgt_out -through inst_controller/lnk_pf_out

set_false_path -through inst_mux_trgt/trgt_out -through inst_controller/lnk_pf_out -through inst_reg_LS/lsw_in

set_false_path -through inst_reg_SP/ag1p_out -through inst_mux_ag1p/ag1p_out -through inst_mux_pm_addr/pm_addr_out

set_false_path -through inst_mux_ag1m/__CTsbyte_cstP4_ID_in -through inst_mux_ag1m/ag1m_out -through inst_ag1/ag1q_out -through inst_mux___dm_addr_pipe_w/__dm_addr_pipe_w_out

set_false_path -through inst_mux_ag1m/__CTword_cstP16_ID_in -through inst_mux_ag1m/ag1m_out -through inst_ag1/ag1q_out -through inst_mux___dm_addr_pipe_w/__dm_addr_pipe_w_out

set_false_path -through inst_reg_R/ag1p_out -through inst_mux_ag1p/ag1p_out -through inst_ag1/ag1q_out -through inst_mux___dm_addr_pipe_w/__dm_addr_pipe_w_out

set_false_path -through inst_mux_ag1m/__CTsbyte_cstP4_ID_in -through inst_mux_ag1m/ag1m_out -through inst_ag1/ag1q_out -through inst_mux_dm_addr/dm_addr_out

set_false_path -through inst_mux_ag1m/__CTword_cstP16_ID_in -through inst_mux_ag1m/ag1m_out -through inst_ag1/ag1q_out -through inst_mux_dm_addr/dm_addr_out

set_false_path -through inst_reg_R/ag1p_out -through inst_mux_ag1p/ag1p_out -through inst_ag1/ag1q_out -through inst_mux_dm_addr/dm_addr_out

set_false_path -through inst_mux_ag1m/__CTnint9_cstP4_7_0_ID_in -through inst_mux_ag1m/ag1m_out -through inst_ag1/ag1q_out -through inst_reg_R/rtid_in

set_false_path -through inst_mux_ag1m/__CTsbyte_cstP4_ID_in -through inst_mux_ag1m/ag1m_out -through inst_ag1/ag1q_out -through inst_reg_R/rtid_in

set_false_path -through inst_mux_ag1m/__CTword_cstP16_ID_in -through inst_mux_ag1m/ag1m_out -through inst_ag1/ag1q_out -through inst_reg_R/rtid_in

set_false_path -through inst_reg_SP/ag1p_out -through inst_mux_ag1p/ag1p_out -through inst_ag1/ag1q_out -through inst_reg_R/rtid_in

