#
# Tcl script to test tmicro on chip debugging TUI.
#
# Purpose: Verify read/write on memories.
#

source "ocd_test.tcl"
set testname [ file rootname [ file tail [info script] ] ]
initiate b


array set dm_value {
  0                  0
  1                  1
  2                  2
  3                  3
  4                 -1
  5                 -2
  6               cafe
  7               babe
}

array set dm_radix {
  0   dec
  1   dec
  2   dec
  3   dec
  4   dec
  5   dec
  6   hex
  7   hex
}

array set pm_value {
  0                  0
  1                  1
  2                  2
  3                  3
  4               cafe
  5               babe
}

array set pm_radix {
  0   dec
  1   dec
  2   dec
  3   dec
  4   hex
  5   hex
}

proc test_dm_a { iss } {
    log "test_dm_a"
    put_a $iss DM 1 123 dec
    expect_a $iss DM 1 123 dec
}

proc test_dm { iss } {
    log "test_dm"
    global dm_value dm_radix
    set mem DM

    set set { 0 1 2 3 4 5 6 7 }
    foreach x $set {
        put_a $iss $mem $x $dm_value($x) $dm_radix($x)
    }

    foreach x $set {
        expect_a $iss $mem $x $dm_value($x) $dm_radix($x)
    }
}

proc test_pm { iss } {
    log "test_pm"
    global pm_value pm_radix
    set mem PM

    set set { 0 1 2 3 4 5 }
    foreach x $set {
        put_a $iss $mem $x $pm_value($x) $pm_radix($x)
    }

    foreach x $set {
        expect_a $iss $mem $x $pm_value($x) $pm_radix($x)
    }
}

proc test_loop_16 { iss mem } {
    log "test_loop_16 $mem"
    set a 0
    set N 64
    while {$a<$N} {
        set v [expr $a + 100]
        put_a $iss $mem $a $v dec
        incr a
    }
    set a 0
    while {$a<$N} {
        set v [expr $a + 100]
        expect_a $iss $mem $a $v dec
        incr a
    }
}


# test_dm_a b

test_dm b
test_pm b

test_loop_16 b PM
test_loop_16 b DM

finalise b

