#
# Tcl script to test tmicro on chip debugging TUI.
#
# Purpose: Verify control flow instructions (jc).
#

source "ocd_test.tcl"
set testname [ file rootname [ file tail [info script] ] ]
initiate b


proc test_resume { iss } {
    log "Execute program using resume"
    command $iss "breakpoint mic set 23"
    command $iss "step -1"
    expect_a $iss DM 1024 11 dec
    expect_a $iss DM 1025 15 dec
}

proc test_stepping { iss } {
    log "Test program using single stepping"
    command $iss "breakpoint mic set 23"
    command $iss "step 200"
    expect_a $iss DM 1024 11 dec
    expect_a $iss DM 1025 15 dec
}

load_program b
test_resume b

load_program b
test_stepping b

finalise b
