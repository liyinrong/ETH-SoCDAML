#
# Tcl script to test tmicro on chip debugging TUI.
#
# Purpose: Verify watch points on PM.
#

source "ocd_test.tcl"
set testname [ file rootname [ file tail [info script] ] ]
initiate b


proc test_resume { iss } {
    log "Execute using resume"
    command $iss "watchpoint set PM 1026 -write true"
    command $iss "step -1"
    expect_a $iss PM 1024 1 dec
    expect_a $iss PM 1025 2 dec
    expect_a $iss PM 1026 4 dec
    expect_a $iss PM 1027 0 dec
    command $iss "watchpoint set PM 1028 -write true"
    command $iss "step -1"
    expect_a $iss PM 1027 8 dec
    expect_a $iss PM 1028 16 dec
    expect_a $iss PM 1029 0 dec
}


proc test_step { iss } {
    log "Execute using resume"
    command $iss "watchpoint set PM 1026 -write true"
    command $iss "step 10"
    expect_a $iss PM 1024 1 dec
    expect_a $iss PM 1025 2 dec
    expect_a $iss PM 1026 4 dec
    expect_a $iss PM 1027 0 dec
    command $iss "watchpoint set PM 1028 -write true"
    command $iss "step 6"
    expect_a $iss PM 1027 8 dec
    expect_a $iss PM 1028 16 dec
    expect_a $iss PM 1029 0 dec
}

proc test_count { iss } {
    log "Execute using resume"
    command $iss "breakpoint mic set 22 -hardware true"
    command $iss "step -1"
    expect_pc b 22
    command $iss "watchpoint set PM 1024 -write true -hitcount 2"
    command $iss "step -1"
    expect_a $iss PM 1024 4 dec
    command $iss "step -1"
    expect_a $iss PM 1024 16 dec
}


load_program b
test_resume b 

load_program b
test_step b 

load_program b
test_count b 

finalise b
