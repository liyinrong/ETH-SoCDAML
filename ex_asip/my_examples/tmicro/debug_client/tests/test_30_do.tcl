#
# Tcl script to test tmicro on chip debugging TUI.
#
# Purpose: Verify control flow instructions (do).
#

source "ocd_test.tcl"
set testname [ file rootname [ file tail [info script] ] ]
initiate b


set addr_end 31
set addr_do1_ls 13
set addr_do1_le 14
set addr_do2_li 25
set expected_values {{1024 16} {1025 19} {1026 22} {1027 23} {1028 35} } 

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

proc test_swbreak { iss bp_type } {
    global addr_end addr_do1_ls addr_do1_le addr_do2_li expected_values
    log "Execute program with bp on jump ($bp_type)"
    command $iss "breakpoint mic set $addr_end  -hardware 1"
    command $iss "breakpoint mic set $addr_do1_ls $bp_type"
    if { $bp_type == "-hardware 1" } {
        # no software breakpoints on loop end instruction
        command $iss "breakpoint mic set $addr_do1_le $bp_type"
        command $iss "breakpoint mic set $addr_do2_li $bp_type"
    }
    command $iss "step -1"
    expect_pc $iss $addr_do1_ls
    if { $bp_type == "-hardware 1" } {
        command $iss "step -1"
        expect_pc $iss $addr_do1_le
    }
    command $iss "step -1"
    expect_pc $iss $addr_do1_ls
    command $iss "breakpoint mic clear $addr_do1_ls"
    if { $bp_type == "-hardware 1" } {
        command $iss "breakpoint mic clear $addr_do1_le"
    }
    if { $bp_type == "-hardware 1" } {
        command $iss "step -1"
        expect_pc $iss $addr_do2_li
        command $iss "step -1"
        expect_pc $iss $addr_do2_li
        command $iss "step -1"
        expect_pc $iss $addr_do2_li
    }
    command $iss "step -1"
    expect_pc $iss $addr_end
    expect_m  $iss DM $expected_values
}

load_program b
test_resume b

load_program b
test_stepping b

load_program b
test_swbreak b "-hardware 1"
load_program b
test_swbreak b "-software 1"

finalise b
