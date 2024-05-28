#
# Common settings for batch simulation of Risk generated programs.
#
# Copyright (c) 2015 Synopsys, Inc.
# This software and the associated documentation are proprietary to Synopsys, Inc.
# This software may only be used in accordance with the terms and conditions of a
# written license agreement with Synopsys, Inc. All other use, reproduction, or
# distribution of this software is strictly prohibited.


#
# Edit this section when installing the risk scripts for a new processor.
#

set processor tmicro
set procroot [file dirname [file dirname [file normalize [info script]]]]
set lib $procroot/lib
set iss $procroot/iss/${processor}_ca
set hdl vlog  ;# vhdl or vlog
set vcsim $procroot/hdl/tmicro_${hdl}/simv
set profile 1  ;# generate coverage report


#
# General procedures
#

proc read_tmpfile {} {
    global files results
    set tmpfile [open tmp r]
    array set results [read $tmpfile]
    set files [lsort [array names results]]
    close $tmpfile
}


proc write_tmpfile {} {
    global results
    set tmpfile [open tmp w]
    puts $tmpfile [array get results]
    close $tmpfile
}
