#
# Tcl script to test tmicro on chip debugging TUI.
#
# Purpose: Verify stepping and breakpoints.
#

source "ocd_test.tcl"
set testname [ file rootname [ file tail [info script] ] ]
initiate b


proc test_stepping { iss } {
    log "Test stepping"

    expect_pc $iss 0

    command $iss "step 1"
    expect_pc $iss 1

    command $iss "step 1"
    expect_pc $iss 2

    command $iss "step 1"
    expect_pc $iss 3

    command $iss "step 1"
    expect_pc $iss 4

    command $iss "step 3"
    expect_pc $iss 7

    command $iss "step 1"
    expect_pc $iss 9

    expect_r $iss  R0  127 dec
    expect_r $iss  R1  1 dec
    expect_r $iss  R2  2 dec
    expect_r $iss  R3  3 dec
    expect_r $iss  R4  4 dec
    expect_r $iss  R5  5 dec
    expect_r $iss  R6  6 dec
    expect_r $iss  R7  1024 dec
}

proc test_stepping_with_bp { iss bp_type } {
    log "Test stepping with breakpoint"
    command $iss "breakpoint mic set 5 $bp_type"
    command $iss "breakpoint mic set 9 $bp_type"
    command $iss "step 20"
    expect_pc $iss 5
    command $iss "step 20"
    expect_pc $iss 9
    expect_r $iss  R0  127 dec
    expect_r $iss  R1  1 dec
    expect_r $iss  R2  2 dec
    expect_r $iss  R3  3 dec
    expect_r $iss  R4  4 dec
    expect_r $iss  R5  5 dec
    expect_r $iss  R6  6 dec
    expect_r $iss  R7  1024 dec
}

proc test_resume_with_bp { iss bp_type } {
    log "Test resume with breakpoint"
    command $iss "breakpoint mic set 5 $bp_type"
    command $iss "breakpoint mic set 9 $bp_type"
    command $iss "step -1"
    expect_pc $iss 5
    command $iss "step -1"
    expect_pc $iss 9
    expect_r $iss  R0  127 dec
    expect_r $iss  R1  1 dec
    expect_r $iss  R7  1024 dec
}

proc test_clear_bp { iss bp_type } {
    log "Test breakpoint clear"
    command $iss "breakpoint mic set 5 $bp_type"
    command $iss "breakpoint mic set 9 $bp_type"
    command $iss "breakpoint mic clear 5"
    command $iss "step -1"
    expect_pc $iss 9
    expect_r $iss  R0  127 dec
    expect_r $iss  R1  1 dec
    expect_r $iss  R7  1024 dec
}

proc test_stepping_consecutive_bp { iss bp_type } {
    log "Test consecutive breakpoints with stepping"
    command $iss "breakpoint mic set 3 $bp_type"
    command $iss "breakpoint mic set 5 $bp_type"
    command $iss "breakpoint mic set 9 $bp_type"
    command $iss "step 10"
    expect_pc $iss 3
    command $iss "step 10"
    expect_pc $iss 5
    command $iss "step 10"
    expect_pc $iss 9
    expect_r $iss  R0  127 dec
    expect_r $iss  R1  1 dec
    expect_r $iss  R7  1024 dec
}

proc test_resume_consecutive_bp { iss bp_type } {
    log "Test consecutive breakpoints with resume"
    command $iss "breakpoint mic set 3 $bp_type"
    command $iss "breakpoint mic set 5 $bp_type"
    command $iss "breakpoint mic set 9 $bp_type"
    command $iss "step -1"
    expect_pc $iss 3
    command $iss "step -1"
    expect_pc $iss 5
    command $iss "step -1"
    expect_pc $iss 9
    expect_r $iss  R0  127 dec
    expect_r $iss  R1  1 dec
    expect_r $iss  R7  1024 dec
}

proc test_all { bp_type } {

    load_program b
    test_stepping b

    load_program b
    test_stepping_with_bp b $bp_type

    load_program b
    test_resume_with_bp b $bp_type

    load_program b
    test_clear_bp b $bp_type
    
    load_program b
    test_stepping_consecutive_bp b $bp_type

    load_program b
    test_resume_consecutive_bp b $bp_type
}

test_all "-hardware 1"
test_all "-software 1"

finalise b
