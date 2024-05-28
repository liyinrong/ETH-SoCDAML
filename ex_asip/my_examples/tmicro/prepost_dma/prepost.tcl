#
# Usage:
#  - build tmicro batch project
#  - build tmicro_ca_prepost.prx 
#  - build test.prx 
#  - ./tmicro_ca_prepost -t prepost.tcl
#

iss::create tmicro p
p program load Release/test -dwarf2
# p put 123 DM 10000
# p put 113 DM 10001
# p put 121 DM 10002
# p put 223 DM 10003
# p put 123 DM 10004
# p put 122 DM 10005
# p put 323 DM 10006
# p put 133 DM 10007
# p put 123 DM 10008
# p put 423 DM 10009
catch {p step -1}
set f [open result.dat w]
for {set i 20000} {$i < 20010} {incr i} {
    puts $f [p get DM $i]
}
close $f
p close
exit
