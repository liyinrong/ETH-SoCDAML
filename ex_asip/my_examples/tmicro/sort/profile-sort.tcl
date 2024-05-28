#
# Tcl srcipt for profiling function.
#

proc usage { } {
    puts ""
    puts "Usage: ../iss/tmicro  -T -t profile-sort.tcl "
    puts ""
}

# Create ISS
set processor [lindex [::iss::processors] 0]
::iss::create $processor iss

set procdir [iss info processor_dir {} 0]
set program "Release/sort"

set bindir [file join [pwd] [file dirname [info script]]]
set libdir $bindir/../lib

set prf_file $program.prf
set fpr_file $program.fpr

# Load program 
iss program load $program \
                    -nmlpath $procdir \
		    -dwarf2 \
		    -disassemble \
		    -cycle_count_breakpoints \
		    -profile_breakpoints \
		    -sourcepath {.} 

# Simulate until end of main
catch { iss step -1 } msg
puts $msg

# Save instruction profile in human readable form
iss profile save $prf_file
iss profile save $fpr_file -type function_level

iss close
exit

