#
# Tcl script to test tmicro on chip debugging TUI.
#
# Purpose: Verify load/store instructions.
#

source "ocd_test.tcl"
set testname [ file rootname [ file tail [info script] ] ]
initiate b


proc test_resume { iss bp_type } {
    log "Execute using resume"
    command $iss "breakpoint mic set 17 $bp_type"
    command $iss "step -1"
    expect_a $iss DM 1024 1000 dec
    expect_a $iss DM 1025 1001 dec
    expect_a $iss DM 1026 1501 dec
}

proc test_stepping { iss bp_type } {
    log "Execute using stepping"
    command $iss "breakpoint mic set 17 $bp_type"
    command $iss "step 200"
    expect_a $iss DM 1024 1000 dec
    expect_a $iss DM 1025 1001 dec
    expect_a $iss DM 1026 1501 dec
}

proc test_bp_resume { iss bp_type } {
    log "Execute with breakpoint using resume"
    command $iss "breakpoint mic set 4 $bp_type"
    command $iss "breakpoint mic set 17 $bp_type"
    command $iss "step -1"
    command $iss "step -1"
    expect_a $iss DM 1024 1000 dec
    expect_a $iss DM 1025 1001 dec
    expect_a $iss DM 1026 1501 dec
}

proc test_bp_stepping { iss bp_type } {
    log "Execute with breakpoint using stepping"
    command $iss "breakpoint mic set 4 $bp_type"
    command $iss "breakpoint mic set 17 $bp_type"
    command $iss "step 200"
    command $iss "step 200"
    expect_a $iss DM 1024 1000 dec
    expect_a $iss DM 1025 1001 dec
    expect_a $iss DM 1026 1501 dec
}

proc test_all { bp_type } {
    load_program b
    test_resume       b $bp_type
    load_program b
    test_stepping     b $bp_type
    load_program b
    test_bp_resume    b $bp_type
    load_program b
    test_bp_stepping  b $bp_type
}


test_all "-hardware 1"
test_all "-software 1"

finalise b
