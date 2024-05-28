#
# Tcl script for regression simulation runs.
#
# Copyright (c) 2014 Synopsys, Inc. This processor model and the associated
# documentation are proprietary to Synopsys, Inc.  This model may only be
# used in accordance with the terms and conditions of a written license 
# agreement with Synopsys, Inc.  All other use, reproduction, or distribution 
# of this model are strictly prohibited.
#


# Create ISS
set processor [lindex [::iss::processors] 0]
::iss::create $processor iss

set program $::iss::cmdln_program_name

# Load program 
iss program load $program \
    -do_not_set_entry_pc 1\
    -do_not_load_sp 1\
    -dwarf2 \
    -disassemble \
    -sourcepath {.} \
    -end_of_main_breakpoints

set mem_file $program.mem
set rcd_file $program.iss.rcd
set prf_file $program.prf
set ipr_file $program.ipr

iss fileoutput go -file $rcd_file -skip_internal_memories true

iss fileoutput chess_report set -file $mem_file

# Simulate until end of main
set rtval [catch { iss step -1 } msg]
puts $msg

# Save instruction profile in human readable form
iss profile save $prf_file

# Generate instruction profile in form usable for coverage analysis
iss profile save -type profile-Risk $ipr_file

# Print maximum stack size
set stack_size [lindex [iss stack query] 0 4]
puts "Stack size: $stack_size"

# Print cycle count
set cycle_count [ lindex [iss info count -cycle] 0 ]
puts "Cycle count : $cycle_count"
set cf [open "$program.cycle_count" w]
puts $cf $cycle_count

iss close

if { [file exists $mem_file] } {
  file rename -force $mem_file ./
}

exit $rtval

