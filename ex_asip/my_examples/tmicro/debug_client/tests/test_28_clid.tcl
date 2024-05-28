#
# Tcl script to test tmicro on chip debugging TUI.
#
# Purpose: Verify control flow instructions (clid).
#

source "ocd_test.tcl"
set testname [ file rootname [ file tail [info script] ] ]
initiate b


set addr_end 23
set addr_call 14
set addr_ret 31
set addr_call_trgt 25
set expected_values {{1024 11} {1025 14} {1026 18} {1027 35}} 

proc test_resume { iss } {
    global addr_end expected_values
    log "Execute program using resume"
    command $iss "breakpoint mic set $addr_end -hardware 1"
    command $iss "step -1"
    expect_m  $iss DM $expected_values
}

proc test_stepping { iss } {
    global addr_end expected_values
    log "Test program using single stepping"
    command $iss "breakpoint mic set $addr_end -hardware 1"
    command $iss "step 200"
    expect_m  $iss DM $expected_values
}

proc test_bp_on_trgts { iss bp_type } {
    global addr_call addr_ret addr_call_trgt addr_end expected_values
    log "Execute program with bp on jump"
    command $iss "breakpoint mic set $addr_end  -hardware 1"
    command $iss "breakpoint mic set $addr_call      $bp_type"
    command $iss "breakpoint mic set $addr_call_trgt $bp_type"
    command $iss "breakpoint mic set $addr_ret       $bp_type"
    command $iss "step -1"
    expect_pc $iss $addr_call
    command $iss "step -1"
    expect_pc $iss $addr_call_trgt
    command $iss "step -1"
    expect_pc $iss $addr_ret
    command $iss "step -1"
    expect_pc $iss $addr_end
    expect_m  $iss DM $expected_values
}

load_program b
test_resume b

load_program b
test_stepping b

load_program b
test_bp_on_trgts b "-hardware 1"
load_program b
test_bp_on_trgts b "-software 1"

finalise b
