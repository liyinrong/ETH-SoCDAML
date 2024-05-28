#
# Tcl procedures used in tests for on chip debugging.
#

set bindir "../../bin"
source "$bindir/async_hdl.tcl"

# give up after 5 minutes
after 300000 {
    global async
    puts "Timeout: giving up after 5 minutes."
    iss close
    if { $async == 1 } { ocd_stop }
    exit 2
}

set error_count 0

proc initiate {iss} {
    global async testname lf bindir $iss pname

    set procname [lindex [::iss::processors] 0]

    set pname  $testname.x
    set lfname $testname.log
    set lf [open $lfname w]

    set async [expr [llength $::iss::tcl_script_args] >= 1];
    if { $async == 1 } {

        # separate dir for concurrency
        set wdir work/$testname
        file mkdir $wdir
        cd $wdir

        # default use simv (vcs)
        set simulator_executable ../../hdl/${procname}_vlog/simv
        if { [lindex  $::iss::tcl_script_args 0] != "async" } {
            set simulator_executable [lindex  $::iss::tcl_script_args 0]
        }
        puts "using sim: $simulator_executable"
        set simulator_executable "../../$simulator_executable"
        set bindir               "../../$bindir"
        set pname                "../../$pname"
        ocd_start $simulator_executable
    } else {
        puts "please make sure the simulator is started and listening"
    }

    ::iss::create $procname $iss
}

proc finalise {iss} {
    global async
    report_errors
    $iss close
    if { $async == 1 } { ocd_stop }
    exit
}

# add comment to log file
proc log {line} {
    global lf
    puts $lf "### $line"
    puts "### $line"
    flush $lf
}

# execute ISS command
proc command_ {iss cmd} {
    global error_count
    if { [catch { set val [eval $iss $cmd] } msg ] } {
      puts stderr $msg
      incr error_count
      finalise $iss
    }
    return $val
}

proc command {iss cmd} {
    global lf
    puts $lf "cmd : $iss $cmd"
    flush $lf
    command_ $iss $cmd
}

# Write a value into the specified storage. 
# The radix parameter specifies the radix of the value.
proc put_r {iss storage value {radix hex}} {
    global lf
    puts $lf "put_r: $iss $storage: $value, $radix "
    flush $lf
    command_ $iss "put -radix $radix $value $storage"
}

# Write a value into the specified storage at the specified address. 
# The radix parameter specifies the radix of the value.
proc put_a {iss storage address value {radix hex}} {
    global lf
    puts $lf "put_a: $iss $storage\[$address\]: $value, $radix"
    flush $lf
    command_ $iss "put -radix $radix $value $storage $address"
    flush $lf
}


# Test if the specified storage contains the expected value.
# The radix parameter specifies the radix of the expected value.
proc expect_r {iss storage expected {radix hex} {format string}} {
    global lf error_count
    set val [command_ $iss "get $storage -radix $radix -format $format"]
    if { $val == $expected } {
        puts $lf "expect_r: same $storage: $val, expected $expected"
    } else {
        puts $lf "expect_r: diff $storage: $val, expected $expected  !!!"
	incr error_count
    }
    flush $lf
}

# Test if the specified storage location contains the expected value at 
# the specified address.
# The radix parameter specifies the radix of the expected value.
proc expect_a {iss storage address expected {radix hex} {format string}} {
    global lf error_count
    set val [command_ $iss "get $storage $address -radix $radix -format $format"]
    if { $val == $expected } {
        puts $lf "expect_a: same $storage\[$address\]: $val, expected $expected"
    } else {
        puts $lf "expect_a: diff $storage\[$address\]: $val, expected $expected  !!!"
	incr error_count
    }
    flush $lf
}

# Test if the program counter contains the expected value.
proc expect_pc {iss expected} {
    global lf error_count
    set val [command_ $iss "get PC"]
    if { $val == $expected } {
        puts $lf "expect_pc: same: $val, expected $expected"
    } else {
        puts $lf "expect_pc: diff: $val, expected $expected  !!!"
	incr error_count
    }
    flush $lf
}

# Test if the memory range contains the expected values.
proc expect_m { iss mem values } {
    foreach { v } $values {
        set a [lindex $v 0]
        set v [lindex $v 1]
        expect_a $iss $mem $a $v dec
    }
}

proc report_errors {} {
    global lf error_count
    puts $lf ""
    puts ""
    if { $error_count != 0 } {
        puts $lf "FAILED ($error_count errors) ************"
        puts     "FAILED ($error_count errors) ************"
    } else {
        puts $lf "PASSED"
        puts     "PASSED"
    }
    puts $lf ""
    puts ""
    flush $lf
}

proc load_program { iss } {
    global pname
    log "Load program $pname"
    command $iss reset
    command $iss "program load $pname"
}

