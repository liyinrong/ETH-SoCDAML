#ifdef REVINL
relocate_relative_addresses
#endif

//immediate in control operation `vd_jump_offs_ID' relative pc_offset=1
0 : (((symbol_addr_AR  + addend )  - item_addr_AR )  - 1 )  :  sbyte [7..0]@0 in iword[1]      // with default addend 0

//immediate in control operation `vd_jump_tcc_offs_E1' relative pc_offset=2
1 : (((symbol_addr_AR  + addend )  - item_addr_AR )  - 2 )  :  sbyte [7..0]@0 in iword[1]      // with default addend 0

//immediate in control operation `vd_jump_trgt_ID'
//immediate in control operation `vd_jump_tcc_trgt_E1'
//immediate in control operation `lnk_pf_bsr_trgt_ID'
//immediate in control operation `vd_hwdo_lcw_lew_E1'
//immediate for type `addr' routed to `lew'
//immediate for type `addr' routed to `trgt'
//immediate for type `addr' routed to `__CTtrgt_addr_cstP16_ID'
//immediate for type `addr' routed to `__CTtrgt_addr_cstP16_E1'
//immediate for type `addr' routed to `__CTlew_addr_cstP16_E1'
2 : (symbol_addr_AR  + addend )  :  addr [15..0]@0 in iword[2] nostrict      // with default addend 0

//immediate in control operation `vd_hwdo_lcw_lew_E1'
//immediate for type `addr' routed to `lew'
//immediate for type `addr' routed to `__CTlew_addr_cstP16_E1'
3 : (symbol_addr_AR  + addend )  :  addr [15..0]@16 in iword[3] nostrict      // with default addend 0

//immediate in control operation `lnk_if_jti_trgt_ID'
4 : (symbol_addr_AR  + addend )  :  uint4 [3..0]@0 in iword[1]      // with default addend 0

//immediate for type `addr' routed to `rte1'
//immediate for type `addr' routed to `wbus'
//immediate for type `addr' routed to `ag1m'
//immediate for type `addr' routed to `__CTwbus_word_cstP16_E1'
//immediate for type `addr' routed to `__CTag1m_word_cstP16_ID'
5 : (symbol_addr_AR  + addend )  :  word [15..0]@0 in iword[2] nostrict      // with default addend 0

//immediate for type `addr' routed to `lcw'
//immediate for type `addr' routed to `__CTlcw_addr_cstP32_E1'
6 : (symbol_addr_AR  + addend )  :  addr [15..0]@0 in iword[3] nostrict      // with default addend 0

//pointer of type `addr' in memory `PM'
7 : (symbol_addr_AR  + addend )  :  addr [15..0]@0 in iword[1] nostrict      // with default addend 0

//pointer of type `addr' in memory `DM'
8 : (symbol_addr_AR  + addend )  :  addr [15..0]@0 in word[1] nostrict      // with default addend 0
