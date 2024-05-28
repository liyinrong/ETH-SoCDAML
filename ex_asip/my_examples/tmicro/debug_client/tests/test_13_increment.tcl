#
# Tcl script to test tmicro on chip debugging TUI.
#
# Purpose: Verify incrementing of register.
#

source "ocd_test.tcl"
set testname [ file rootname [ file tail [info script] ] ]
initiate b


proc test_resume { iss bp_type } {
    log "Execute program using resume"
    command $iss "breakpoint mic set 14 $bp_type"
    command $iss "step -1"
    expect_pc $iss 14
    expect_r $iss R1 1 dec
    expect_r $iss R3 8 dec
    command $iss "breakpoint mic clear 14"
}

proc test_stepping { iss } {
    log "Execute program using single stepping"
    command $iss "step 1"
    expect_pc $iss 1
    expect_r $iss R3 0 dec
    command $iss "step 1"
    expect_r $iss R1 1 dec
    command $iss "step 1"
    expect_r $iss R3 1 dec
    command $iss "step 1"
    expect_r $iss R3 2 dec
    command $iss "step 1"
    expect_r $iss R3 3 dec
    command $iss "step 1"
    expect_r $iss R3 4 dec
    command $iss "step 1"
    expect_r $iss R3 4 dec
    command $iss "step 1"
    expect_r $iss R3 5 dec
    command $iss "step 1"
    expect_r $iss R3 5 dec
    command $iss "step 1"
    expect_r $iss R3 6 dec
    command $iss "step 1"
    expect_r $iss R3 6 dec
    command $iss "step 1"
    expect_r $iss R3 7 dec
    command $iss "step 1"
    expect_r $iss R3 7 dec
    command $iss "step 1"
    expect_r $iss R3 8 dec
    expect_pc $iss 14
}

load_program b
test_resume b "-hardware 1"

load_program b
test_resume b "-software 1"

load_program b
test_stepping b

finalise b
