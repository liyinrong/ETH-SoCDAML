#
# Tcl script to test on chip debugging TUI.
#
# ocd test where program includes interrupt servicing
#
# cf. ocd_disable_interrupt in GO manual and Tmicro OCD manual
#
# test 1:
# PCU is in normal mode, pending interrupt request and hitting HW breakpoint:
# state transitions to debug mode (priority over acknowledging int. request)
#
# test 2:
# PCU is in debug mode, pending interrupt request and OCD single step action:
# instruction different from new interrupt is issued
#
# test 3:
# PCU is in debug mode, pending interrupt request and OCD resume action:
# first instruction issued is different from a new interrupt service, as to
# move beyond the breakpoint; following the normal mode is interrupted by
# the pending interrupt and so on

source "ocd_test.tcl"
set testname [ file rootname [ file tail [info script] ] ]
initiate b


proc test_stepDI_after_break { iss } {
    log "test step and resume_after_break"
    global pname
    set mem DM
    command $iss reset
    # check IE is reset
    expect_r $iss IE 0 dec
    command $iss "program load $pname"
    # check data section is loaded
    expect_a $iss $mem 2 0 dec
    expect_a $iss $mem 3 0 dec
    command $iss "breakpoint mic set 22 -hardware 1"
    command $iss "breakpoint mic set 36 -hardware 1"
    command $iss "breakpoint mic set 54 -hardware 1"
    command $iss "step -1"
    expect_pc $iss 22
    expect_r $iss R0 11 dec
    expect_a $iss $mem 2 2 dec
    expect_a $iss $mem 3 0 dec
    # check step is stepDI variant one
    command $iss "step 1"
    expect_pc $iss 24
    expect_r $iss R0 12 dec
    expect_a $iss $mem 2 2 dec
    expect_a $iss $mem 3 0 dec
    # check resume is preceded by stepDI to move beyond breakpoint
    command $iss "step -1"
    expect_pc $iss 36
    expect_r $iss R0 18 dec
    expect_a $iss $mem 2 8 dec
    expect_a $iss $mem 3 0 dec
    # check main counter and isr counter are incremented in program flow
    command $iss "step -1"
    expect_pc $iss 54
    expect_r $iss R0 12 dec
    expect_a $iss $mem 2 33 dec
    expect_a $iss $mem 3 4 dec
}

test_stepDI_after_break b

finalise b
