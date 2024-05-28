
#
# Driver for running regression tests on a processor model
#
# Copyright (c) 2014-5016 Synopsys, Inc. This Synopsys processor model 
# captures an ASIP Designer Design Technique. The model and all associated 
# documentation are proprietary to Synopsys, Inc. and may only be used 
# pursuant to the terms and conditions of a written license agreement with 
# Synopsys, Inc.  All other use, reproduction, modification, or distribution 
# of the Synopsys processor model or the associated  documentation is 
# strictly prohibited. 

# Usage: tct_tclsh run-tests.tcl


set P tzscale

set build_model 1

set HDL vlog

set APPNAME test

set ISS ${P}_ca

set HDLPRX ${P}_${HDL}

proc puts_flush {str} {
    puts -nonewline $str
    flush stdout
}

if {$build_model} {

    # Reset model
    puts "Reset processor model ... "
    if {[catch {exec chessmk -rm ../model.prx >& model.log}]} {
        puts "ERROR resetting processor model"
        exit
    }

    set add_defines {}
    # RTL simulator is set to VCS. Alternative non-default settings are:
    #lappend add_defines "-DRTL_SIM=MTI"
    #lappend add_defines "-DRTL_SIM=NCV"

    # Build model
    puts "Building processor model ... "
    if {[catch {exec chessmk -m +P8 ../model.prx {*}$add_defines >& model.log}]} {
        puts "ERROR building processor model"
        exit
    }

    # Compiling oneliner tests
    if {[catch {exec chessmk -m +P8 ../lib/oneliners/oneliners.prx >& onelliners.log}]} {
        puts "ERROR building oneliners"
        exit
    }

    # Elaborate HDL
    if {[catch {exec chessmk +e ../hdl/${HDLPRX}.prx >& elab_${HDL}.log}]} {
        puts "ERROR elaborating ${HDL}"
        exit
    }
}

# Discover tests.
# set all_tests { C00_simple_report/test.prx C01_simple_call/test.prx }
# set all_tests { A10_div/test.prx }
# set all_tests [lsort [glob {C0./test.prx}]]
set all_tests [lsort [glob {[A-Z][0-9][0-9][_]*/test.prx}]]


# Loop over all tests.
set current_directory [pwd]
foreach test $all_tests {
        # Change to test directory.
        lassign [file split $test] test_directory test_prx
        puts "Testing $test_directory ... "
        puts_flush "    "
        cd [file join $current_directory $test_directory]

        # Build native.
        puts_flush "NATIVE compile "
        if {[catch {exec chessmk -C Native $test_prx >& build_native.log}]} {
                puts "\n    ERROR building native"
                continue
        }

        # Run native.
        puts_flush "execute "
        if {[catch {exec chessmk -C Native -S $test_prx > Native/${APPNAME}.crp 2> run_native.log}]} {
                puts "\n    ERROR running native"
                continue
        }

        # Compare native run with golden reference.
        puts_flush "diff "
        if {[catch {exec tct_tclsh ../utils/crp_compare ${APPNAME}.ok Native/${APPNAME}.crp >& Native/${APPNAME}.diff}]} {
                puts "\n    ERROR difference in native simulation"
                continue
        }

        # Build using chess in Release configuration.
        puts_flush "RELEASE compile "
        if {[catch {exec chessmk $test_prx >& build_chess.log}]} {
                puts "\n    ERROR building on chess"
                continue
        }

        # Run on ISS
        puts_flush "execute "
        if {[catch {exec chessmk -S $test_prx +D ${ISS} > Release/${APPNAME}.crp 2> run_chess.log}]} {
                puts "\n    ERROR running on ISS"
                continue
        }

        # Compare ISS run with golden reference.
        puts_flush "diff "
        if {[catch {exec tct_tclsh ../utils/crp_compare ${APPNAME}.ok ${APPNAME}.mem >& Release/${APPNAME}.diff}]} {
                puts "\n    ERROR difference in ISS simulation"
                continue
        }

        ## Run HDL.
        if {[catch {exec chessmk -H $test_prx >& run_${HDL}.log}]} {
                puts "\n    ERROR running ${HDL}"
                continue
        }

        
        # Compare HDL with ISS.
        if {[catch {exec rcd_compare Release/test.iss.rcd Release/test.tzscale_vlog.rcd >& Release/${APPNAME}.${HDL}.diff}]} {
                puts "\n    ERROR compare ${HDL}"
                continue
        }

        puts "OK"
}


