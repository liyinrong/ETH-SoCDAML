#
# ISS script for batch simulation of Risk generated programs
#
# Copyright (c) 2015 Synopsys, Inc.
# This software and the associated documentation are proprietary to Synopsys, Inc.
# This software may only be used in accordance with the terms and conditions of a
# written license agreement with Synopsys, Inc. All other use, reproduction, or
# distribution of this software is strictly prohibited.

set bindir [file dirname [info script]]
source $bindir/common.tcl

iss::create $processor sim
read_tmpfile

foreach f $files {
    if {$results($f) != 2} {continue}

    puts $f

    set opts {}
    if {$profile} {lappend opts -disassemble -nmlpath $lib}

    sim reset
    sim program load $f.ras.x {*}$opts
    sim fileoutput go -file $f.iss.rcd

    # obtain breakpoint address and set breakpoint
    set bf [open $f.stop r]
    sim breakpoint mic set [gets $bf]
    close $bf

    # simulate until breakpoint
    if {![catch {sim step -1} msg]} {
        set cycle_count [lindex [sim info count -cycle] 0]
        set results($f) "3 $cycle_count"
        if {$profile} {
            sim profile save -type profile-Risk $f.iss.ipr
        }
    }
}

write_tmpfile
sim close
exit 0
