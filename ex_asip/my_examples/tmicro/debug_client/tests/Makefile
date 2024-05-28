
P = tmicro

HDL=vlog

# Run/debug configuation: Direct or OCD_VCS
RDC=Direct

TCL_SCRIPT_ARG=
J=
ifeq ($(RDC),OCD_VCS)
export LD_LIBRARY_PATH:=../../../../hdl/$(P)_$(HDL):$(LD_LIBRARY_PATH)
TCL_SCRIPT_ARG=../../hdl/$(P)_$(HDL)/simv
else
JTS_PORT_NUMBER=41001 # default
J=-u port=$(JTS_PORT_NUMBER)
endif

L = ../../lib
S = localhost
C = 1
V = -u verbose -u jts_verbose
V =

help:
	@ echo ""
	@ echo "    Run 'make clean' to remove results and intermediate files"
	@ echo "        'make tests' to execute all tests"
	@ echo "        'make <nr> ' to execute tests number <nr>"
	@ echo "                        <nr> is a two digit number, e.g. 01"
	@ echo ""

%.log : %.tcl %.s
ifneq ($(filter $(RDC), Direct OCD_VCS),)
	chesscc +a -P $L -p $P $*.s -o $*.x +Wdarts,+Whazards
	chesscc +d -P $L -p $P $*.x
	../$(P)_client -u server=$S -u core=$C $J $V -t "$< $(TCL_SCRIPT_ARG)" >& $*.ll
	@ egrep "PASSED|FAILED" $*.log
else
	@echo "   Unknown Run-Debug-Configuration (RDC=$(RDC))"
	exit 1
endif

01: test_01_mem.log
02: test_02_reg.log
03: test_03_memincr.log
10: test_10_breakpoints.log
11: test_11_breakpoints.log
12: test_12_hitcount.log
13: test_13_increment.log
14: test_14_dm.log
15: test_15_dm_watch.log
16: test_16_pm_watch.log
20: test_20_jrd.log
21: test_21_jr.log
22: test_22_jcr_false.log
23: test_23_jcr_true.log
24: test_24_j.log
25: test_25_jc_false.log
26: test_26_jc_true.log
27: test_27_cl.log
28: test_28_clid.log
29: test_29_doi.log
30: test_30_do.log
50: test_50_large.log
60: test_60_int.log

tests_minus_int: \
       01 02 03 \
       10 11 12 13 14 15 16 \
       20 21 22 23 24 25 26 27 28 29 30 \
       50

# test 60 requires toggling of interrupt pin
testlist: tests_minus_int 60

tests: testlist
	@if [ "`grep FAILED *.log | wc -l`" != 0 ]; then \
            echo "************************ "; \
            echo "*** Some tests fail. *** "; \
            echo "************************ "; \
            grep -l FAILED *.log; \
            echo "************************ "; \
            exit 1; \
        fi
	@echo "All tests OK."

clean:
	@ -rm -rf *.log DVEfiles inter.vpd ucli.key
	@ -rm -rf *.ll
	@ -rm -rf *.x
	@ -rm -rf *.x.as
	@ -rm -rf work

