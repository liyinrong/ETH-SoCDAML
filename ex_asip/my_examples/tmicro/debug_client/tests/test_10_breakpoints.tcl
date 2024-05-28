#
# Tcl script to test tmicro on chip debugging TUI.
#
# Purpose: Verify stepping and breakpoints.
#

source "ocd_test.tcl"
set testname [ file rootname [ file tail [info script] ] ]
initiate b


proc test_step { iss } {
    log "test_step"
    global value radix pname

    command $iss reset
    command $iss "program load $pname"

    command $iss "step 1 "
    expect_pc $iss 1
    expect_r $iss R0 127 dec

    command $iss "step 1 "
    expect_pc $iss 2
    expect_r $iss R1 1 dec

    command $iss "step 3 "
    expect_pc $iss 5
    expect_r $iss R4 4 dec
}

proc test_go { iss } {
    log "test_go"
    global value radix pname

    command $iss reset
    command $iss "program load $pname"

    set bpa 9
    command $iss "breakpoint mic set $bpa -hardware 1"
    command $iss "step -1 "
    expect_pc $iss $bpa
    expect_r $iss R0 127 dec
    expect_r $iss R2 2 dec
    expect_r $iss R7 1024 dec
}

proc test_step_n { iss } {
    log "test_step_n"
    global value radix pname

    command $iss reset
    command $iss "program load $pname"

    set bpa 9
    command $iss "breakpoint mic set $bpa -hardware 1"
    command $iss "step 100 "
    expect_pc $iss $bpa
    expect_r $iss R0 127 dec
    expect_r $iss R2 2 dec
    expect_r $iss R7 1024 dec
}

proc test_step_bp { iss } {
    log "test_step_bp"
    global value radix pname

    command $iss reset
    command $iss "program load $pname"

    command $iss "breakpoint mic set 3 -hardware 1"
    command $iss "breakpoint mic set 4 -hardware 1"
    command $iss "breakpoint mic set 5 -hardware 1"
    command $iss "breakpoint mic set 6 -hardware 1"

    command $iss "step 100 "
    expect_pc $iss 3
    command $iss "step 100 "
    expect_pc $iss 4
    command $iss "step 100 "
    expect_pc $iss 5
    command $iss "step 100 "
    expect_pc $iss 6
}

test_step b
test_go b
test_step_n b
test_step_bp b

finalise b
