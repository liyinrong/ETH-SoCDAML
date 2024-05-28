# File: asip_constraints.tcl

###############################################################################
### DESIGN SPECIFIC PART
###############################################################################
set CLOCK_FREQ             100;  # MHz
set OCD_CLOCK_FREQ         10;  # MHz
set CLK_NAME               "clock"
set RESET_NAME             "reset_ext"

set ALL_INPUTS_EXC_CLK     [remove_from_collection [all_inputs] [get_ports $CLK_NAME]]
set ALL_INPUTS_EXC_CLK     [remove_from_collection $ALL_INPUTS_EXC_CLK [get_ports jtag_tck_in]]
set ALL_INPUTS_EXC_CLK     [remove_from_collection $ALL_INPUTS_EXC_CLK [get_ports jtag_ireg_in]]
set ALL_INPUTS_EXC_CLK     [remove_from_collection $ALL_INPUTS_EXC_CLK [get_ports jtag_si_in]]
set ALL_INPUTS_EXC_CLK     [remove_from_collection $ALL_INPUTS_EXC_CLK [get_ports jtag_capture_dr_in]]
set ALL_INPUTS_EXC_CLK     [remove_from_collection $ALL_INPUTS_EXC_CLK [get_ports jtag_update_dr_in]]
set ALL_INPUTS_EXC_CLK     [remove_from_collection $ALL_INPUTS_EXC_CLK [get_ports jtag_shift_dr_in]]
set ALL_INPUTS_EXC_CLK     [remove_from_collection $ALL_INPUTS_EXC_CLK [get_ports jtag_update_ir_in]]
set ALL_INPUTS_EXC_CLK_RES [remove_from_collection $ALL_INPUTS_EXC_CLK [get_ports $RESET_NAME]]
set ALL_OUTPUTS_CLK        [all_outputs]
set ALL_OUTPUTS_CLK        [remove_from_collection $ALL_OUTPUTS_CLK [get_ports jtag_so_out]]

###################################
### create clocks 
###################################
set clock_cycle [expr 1000.0/${CLOCK_FREQ}]
create_clock -name $CLK_NAME -period ${clock_cycle} [get_ports $CLK_NAME]
#set_clock_latency     -max   0.9  [get_clocks $CLK_NAME]
#set_clock_latency     -min   0.75 [get_clocks $CLK_NAME]
#set_clock_uncertainty -setup 0.2  [get_clocks $CLK_NAME]
#set_clock_uncertainty -hold  0.1  [get_clocks $CLK_NAME]

set ocd_clock_cycle [expr 1000.0/${OCD_CLOCK_FREQ}]
# JTAG interface specific
create_clock -name jtag_clk -period ${ocd_clock_cycle} [get_ports jtag_tck_in];
# set false path between clocks:
set_false_path -from $CLK_NAME -to jtag_clk
set_false_path -from jtag_clk  -to $CLK_NAME

# group clk/inputs/outputs for better optimization:
group_path -name CLK -to $CLK_NAME
group_path -name INPUT -through [all_inputs]
group_path -name OUTPUTS -to [all_outputs]
group_path -name JTAG_CLK -to jtag_clk

###################################
#### reset input
###################################
# dont buffer reset net
set_ideal_network [get_ports $RESET_NAME]

###################################
### default delays for inputs/outputs
###################################
# default external delay on inputs/outputs: 33% clock cycle
set std_in_delay  [expr ${clock_cycle}/3]
set std_out_delay [expr ${clock_cycle}/3]
# default external delays on inputs driven by external registers: 20% clock cycle
set std_in_delay_reg [expr ${clock_cycle}*0.2]
# default external delay on registered outputs: 80% of clock cycle
set std_out_delay_reg [expr ${clock_cycle}*0.8]

# set default input/output delays for ALL ports
set_input_delay  ${std_in_delay}  -clock $CLK_NAME $ALL_INPUTS_EXC_CLK_RES
set_output_delay ${std_out_delay} -clock $CLK_NAME $ALL_OUTPUTS_CLK

# JTAG interface specific
set_input_delay  ${std_in_delay}  -clock jtag_clk [get_ports jtag_ireg_in]
set_input_delay  ${std_in_delay}  -clock jtag_clk [get_ports jtag_si_in]
set_input_delay  ${std_in_delay}  -clock jtag_clk [get_ports jtag_capture_dr_in]
set_input_delay  ${std_in_delay}  -clock jtag_clk [get_ports jtag_update_dr_in]
set_input_delay  ${std_in_delay}  -clock jtag_clk [get_ports jtag_shift_dr_in]
set_input_delay  ${std_in_delay}  -clock jtag_clk [get_ports jtag_update_ir_in]
set_output_delay ${std_out_delay} -clock jtag_clk [get_ports jtag_so_out]

###################################
### clamp inputs
###################################

###############################################################################
### TECHNOLOGY LIBRARY SPECIFIC PART
###############################################################################
puts "INFO: Using ASIP library constraints file $::env(ASIP_LIB_SETUP)/asip_lib_constraints.tcl"
source -echo -verbose $::env(ASIP_LIB_SETUP)/asip_lib_constraints.tcl

###################################
### default operating conditions
###################################
set_operating_conditions -max ${MAX_LIBRARY_OPCOND} -max_library ${MAX_LIBRARY_NAME}\
                         -min ${MIN_LIBRARY_OPCOND} -min_library ${MIN_LIBRARY_NAME}

###################################
### default driver strength / loads
###################################
# default driver strength: assume Q output of FD1 flipflop
# default load: assume 5 x capacity of NAND2-input
set std_port_load [ expr 5.0 * [ load_of $MAX_LIBRARY_NAME/$STD_PORT_LOAD_NAND/$STD_PORT_LOAD_NAND_PIN ] ]
# set default drive for ALL ports, except clock and reset
set_driving_cell -lib_cell ${STD_DRV_CELL} -pin ${STD_DRV_PIN} -library ${MAX_LIBRARY_NAME} -no_design_rule $ALL_INPUTS_EXC_CLK_RES
# set default load for all outputs
set_load ${std_port_load} [all_outputs]

###############################################################################
### OTHER CONSTRAINTS
###############################################################################

# Use additional algorithms to pursuit better area through increased resource sharing:
set compile_enhanced_resource_sharing true


