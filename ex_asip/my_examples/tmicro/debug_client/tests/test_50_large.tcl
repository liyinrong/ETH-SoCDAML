#
# Tcl script to test tmicro on chip debugging TUI.
#
# Purpose: Verify loading of large PM and DM sections.
#

source "ocd_test.tcl"
set testname [ file rootname [ file tail [info script] ] ]
initiate b


proc test_resume { iss } {
    log "Execute program using resume"
    command $iss "breakpoint mic set 276 -hardware 1"
    command $iss "step -1"
    expect_pc $iss 276
    expect_r $iss R3 9 dec
    expect_r $iss R5 63 dec
    expect_r $iss R6 87 dec
    command $iss "breakpoint mic clear 276"
}

load_program b
test_resume b

finalise b
