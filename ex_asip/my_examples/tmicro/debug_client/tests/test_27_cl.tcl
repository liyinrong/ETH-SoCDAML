#
# Tcl script to test tmicro on chip debugging TUI.
#
# Purpose: Verify control flow instructions (cl).
#

source "ocd_test.tcl"
set testname [ file rootname [ file tail [info script] ] ]
initiate b


set addr_end 15
set addr_jump 12
set addr_trgt 18
set expected_values {{1024 11} {1025 13} {1026 16}} 

proc test_resume { iss } {
    global addr_end expected_values
    log "Execute program using resume"
    command $iss "breakpoint mic set $addr_end -hardware 1"
    command $iss "step -1"
    expect_m  $iss DM $expected_values
}

proc test_stepping { iss } {
    global addr_end expected_values
    log "Test program using single stepping"
    command $iss "breakpoint mic set $addr_end -hardware 1"
    command $iss "step 200"
    expect_m  $iss DM $expected_values
}

proc test_bp_on_jump { iss bp_type } {
    global addr_end addr_jump expected_values
    log "Execute program with bp on jump ($bp_type)"
    command $iss "breakpoint mic set $addr_end  -hardware 1"
    command $iss "breakpoint mic set $addr_jump $bp_type"
    command $iss "step -1"
    expect_pc $iss $addr_jump
    command $iss "step -1"
    expect_pc $iss $addr_end
    expect_m  $iss DM $expected_values
}

proc test_bp_on_trgt { iss bp_type } {
    global addr_end addr_trgt expected_values
    log "Execute program with bp on jump ($bp_type)"
    command $iss "breakpoint mic set $addr_end  -hardware 1"
    command $iss "breakpoint mic set $addr_trgt $bp_type"
    command $iss "step -1"
    expect_pc $iss $addr_trgt
    command $iss "step -1"
    expect_pc $iss $addr_end
    expect_m  $iss DM $expected_values
}

load_program b
test_resume b

load_program b
test_stepping b

load_program b
test_bp_on_jump b "-hardware 1"
load_program b
test_bp_on_jump b "-software 1"

load_program b
test_bp_on_trgt b "-hardware 1"
load_program b
test_bp_on_trgt b "-software 1"

finalise b
