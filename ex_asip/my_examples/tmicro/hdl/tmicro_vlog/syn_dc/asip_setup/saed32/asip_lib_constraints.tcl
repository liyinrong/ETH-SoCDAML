##########################################################################################
# File: asip_lib_constraints.tcl
##########################################################################################

set MIN_LIBRARY_NAME       "saed32rvt_ff1p16vn40c"
set MAX_LIBRARY_NAME       "saed32rvt_ff1p16v125c"
set MIN_LIBRARY_OPCOND     "ff1p16vn40c"
set MAX_LIBRARY_OPCOND     "ff1p16v125c"
set STD_PORT_LOAD_NAND     "NAND3X0_RVT"
set STD_PORT_LOAD_NAND_PIN "A1"
set STD_DRV_CELL           "SDFFX1_RVT"
set STD_DRV_PIN            "Q"

#set_attribute [get_lib_cells */TIE*] dont_touch false
#set_attribute [get_lib_cells */TIE*] dont_use false
#set_attribute [get_lib_pins */TIE*/Y] max_fanout 8
#set_attribute [get_lib_cells */ISO*] dont_use false
#set_attribute [get_lib_cells */ISO*] dont_touch false
#set_attribute [get_lib_cells */AOBUFX*] dont_use false
#set_attribute [get_lib_cells */AOBUFX*] dont_touch false
#set_attribute [get_lib_cells */AOINVX*] dont_use false
#set_attribute [get_lib_cells */AOINVX*] dont_touch false
#set_attribute [get_lib_cells */*DFFSSR*] dont_touch true
#set_attribute [get_lib_cells */*DFFSSR*] dont_use true
#set_attribute [get_lib_cells */AOBUF*] dont_touch false
#set_attribute [get_lib_cells */AOBUF*] dont_use false
#set_attribute [get_lib_cells */ISO*] dont_touch false
#set_attribute [get_lib_cells */ISO*] dont_use false


