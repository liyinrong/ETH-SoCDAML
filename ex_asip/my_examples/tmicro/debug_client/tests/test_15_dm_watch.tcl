#
# Tcl script to test tmicro on chip debugging TUI.
#
# Purpose: Verify watch points.
#

source "ocd_test.tcl"
set testname [ file rootname [ file tail [info script] ] ]
initiate b


proc test_resume { iss } {
    log "Execute using resume"
    command $iss "watchpoint set DM 1026 -write true"

    # st r1,dm(r7++)     // DM[1026] = 4
    # add r1,r1,r1
    # st r1,dm(r7++)     // DM[1027] = 8
    #
    # Condition is hit when first store is in EX,
    # so when add is in ID, and next store is in IF.
    # Since 'ocd_delay_request' debug mode is entered
    # only in next cycle.

    command $iss "step -1"
    expect_a $iss DM 1024 1 dec
    expect_a $iss DM 1025 2 dec
    expect_a $iss DM 1026 4 dec
    expect_a $iss DM 1027 8 dec
    expect_a $iss DM 1028 0 dec
    command $iss "watchpoint set DM 1028 -write true"
    command $iss "step -1"
    expect_a $iss DM 1027 8 dec
    expect_a $iss DM 1028 16 dec
    expect_a $iss DM 1029 32 dec
    expect_a $iss DM 1030 0 dec
}


proc test_step { iss } {
    log "Execute using resume"
    command $iss "watchpoint set DM 1026 -write true"
    command $iss "step 10"
    expect_a $iss DM 1024 1 dec
    expect_a $iss DM 1025 2 dec
    expect_a $iss DM 1026 4 dec
    expect_a $iss DM 1027 0 dec
    command $iss "watchpoint set DM 1028 -write true"
    command $iss "step 6"
    expect_a $iss DM 1027 8 dec
    expect_a $iss DM 1028 16 dec
    expect_a $iss DM 1029 0 dec
}

proc test_count { iss } {
    log "Execute using resume"
    command $iss "breakpoint mic set 23 -hardware true"
    command $iss "step -1"
    expect_pc b 23
    command $iss "watchpoint set DM 1024 -write true -hitcount 2"

    # Each time a store is hit, 2 more instructions are issued
    # before entering debug mode. So 2 hits equal 4 stores here.

    command $iss "step -1"
    expect_a $iss DM 1024 16 dec
    command $iss "step -1"
    expect_a $iss DM 1024 256 dec
}


load_program b
test_resume b 

load_program b
test_step b 

load_program b
test_count b 

finalise b
