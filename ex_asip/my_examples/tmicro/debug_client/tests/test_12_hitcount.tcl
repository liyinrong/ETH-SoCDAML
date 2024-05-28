#
# Tcl script to test tmicro on chip debugging TUI.
#
# Purpose: Verify breakpoints with hit count.
#

source "ocd_test.tcl"
set testname [ file rootname [ file tail [info script] ] ]
initiate b


proc test_stepping_bp_end { iss bp_type } {
    log "Test stepping with breakpoint at end"
    command $iss "breakpoint mic set 15 $bp_type"
    command $iss "step 100"
    expect_pc $iss 15
    expect_r $iss R7 30 dec
}

proc test_stepping_bp_body { iss bp_type } {
    log "Test stepping with breakpoint in loop"
    command $iss "breakpoint mic set 7 $bp_type"
    command $iss "step 100"
    expect_pc $iss 7
    expect_r $iss R7 1 dec
}

proc test_stepping_bp_hitcount { iss bp_type } {
    log "Test stepping with breakpoint with hit count"
    command $iss "breakpoint mic set 7 -hitcount 3 $bp_type"
    command $iss "breakpoint mic set 15 $bp_type"
    command $iss "step 100"
    expect_pc $iss 7
    expect_r $iss R7 13 dec
    command $iss "step 100"
    expect_pc $iss 15
    expect_r $iss R7 30 dec
}

proc test_run_bp_hitcount { iss bp_type } {
    log "Test run with breakpoint with hit count"
    command $iss "breakpoint mic set 7 -hitcount 3 $bp_type"
    command $iss "breakpoint mic set 15 $bp_type"
    command $iss "step -1"
    expect_pc $iss 7
    expect_r $iss R7 13 dec
    command $iss "step -1"
    expect_pc $iss 15
    expect_r $iss R7 30 dec
}

proc test_all { bp_type } {
    load_program b
    test_stepping_bp_end       b $bp_type
    load_program b
    test_stepping_bp_body      b $bp_type
    load_program b
    test_stepping_bp_hitcount  b $bp_type
    load_program b
    test_run_bp_hitcount       b $bp_type
}

test_all "-hardware 1"
test_all "-software 1"

finalise b
