#
# Tcl script to test tmicro on chip debugging TUI.
#
# Purpose: Verify read/write on registers.
#

source "ocd_test.tcl"
set testname [ file rootname [ file tail [info script] ] ]
initiate b


proc test_regs {iss start step} {
    log "test_regs $start $step"
    set value $start
    foreach r { SP LR SR ILR ISR  } {
        put_r $iss $r $value dec
        set value [expr $value + $step]
    }
    foreach r { R0 R1 R2 R3 R4 R5 R6 R7 } {
        put_r $iss $r $value dec
        set value [expr $value + $step]
    }

    set value $start
    foreach r { SP LR SR ILR ISR  } {
        expect_r $iss $r $value dec
        set value [expr $value + $step]
    }
    foreach r { R0 R1 R2 R3 R4 R5 R6 R7 } {
        expect_r $iss $r $value dec
        set value [expr $value + $step]
    }
}

test_regs b 0 10
test_regs b -1000 10
test_regs b 0 0

proc test_reset_of_regs { iss } {
    log "test FFs of PC and IE are reset"
    # could test LF as well
    put_r $iss PC 13 dec
    put_r b IE  1 dec
    expect_r $iss PC 13 dec
    expect_r $iss IE  1 dec
    command $iss reset
    expect_r $iss PC 0 dec
    expect_r $iss IE 0 dec
}

test_reset_of_regs b

finalise b
