#
# VCS-MX script for simulation with Risk
#
# Copyright (c) 2015 Synopsys, Inc.
# This software and the associated documentation are proprietary to Synopsys, Inc.
# This software may only be used in accordance with the terms and conditions of a
# written license agreement with Synopsys, Inc. All other use, reproduction, or
# distribution of this software is strictly prohibited.

set cf [open "cycle_count" r]
gets $cf nr_cycles
close $cf

# Following  formula is valid for the default Go-generated clock_gen entity.
set reset_time 35
set sim_time [expr { 10 * $nr_cycles + $reset_time + 1 }]

run $sim_time ns
finish

# Note: below is another way to stop after a number of cycles. It is not
# dependent on the clock_gen entity, but it needs the processor name and the
# name of the PC register.

# force /test_bench/inst_tmicro/inst_reg_PC/max_cycles $nr_cycles
# run
# run 1 ns
# finish
