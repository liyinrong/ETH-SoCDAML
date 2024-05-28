
CURRENTDIR=$(abspath $(shell pwd))
DESIGN_NAME=tmicro

ifndef ASIP_SETUP
ASIP_SETUP=$(CURRENTDIR)/asip_setup
endif
ASIP_LIB_SETUP_SAED32=$(ASIP_SETUP)/saed32

default: asip

asip:
	@if test -z ${ASIP_LIB_SETUP} ;\
	then \
	  echo "Error: Please set (environment) variable ASIP_LIB_SETUP or run 'make saed32'!"; exit 1;\
	else \
	  mkdir -p rm_dc/tmp rm_dc/logs/dc; \
	  export ASIP_SETUP=$(abspath $(ASIP_SETUP)); \
	  export ASIP_LIB_SETUP=$(abspath $(ASIP_LIB_SETUP)); \
	  cd rm_dc/tmp; dc_shell -topo -f ../../scripts_block/rm_dc_scripts/dc.tcl | tee ../logs/dc/dc.log; \
	fi;

saed32:
	mkdir -p rm_dc/tmp rm_dc/logs/dc
	export ASIP_SETUP=$(ASIP_SETUP); \
	export ASIP_LIB_SETUP=$(ASIP_LIB_SETUP_SAED32); \
	cd rm_dc/tmp; dc_shell -topo -f ../../scripts_block/rm_dc_scripts/dc.tcl | tee ../logs/dc/dc.log

de:
	@if test -z ${ASIP_LIB_SETUP} ;\
	then \
	  echo "Error: Please set (environment) variable ASIP_LIB_SETUP!"; exit 1;\
	else \
	  mkdir -p rm_dc/tmp rm_dc/logs/de; \
	  export ASIP_SETUP=$(abspath $(ASIP_SETUP)); \
	  export ASIP_LIB_SETUP=$(abspath $(ASIP_LIB_SETUP)); \
	  cd rm_dc/tmp; de_shell -topo -f ../../scripts_block/rm_dc_scripts/dc.tcl | tee ../logs/de/de.log; \
	fi;

dv:
	export ASIP_SETUP=$(abspath $(ASIP_SETUP)); \
	export ASIP_LIB_SETUP=$(abspath $(ASIP_LIB_SETUP)); \
	cd rm_dc/work; \
	design_vision-xg -topo -f $(ASIP_SETUP)/asip_dc_setup.tcl -x "read_file -format ddc {dc/$(DESIGN_NAME).mapped.ddc}"

orig:
	mkdir -p rm_dc/tmp rm_dc/logs/dc
	export -n ASIP_SETUP; \
	cd rm_dc/tmp; dc_shell -topo -f ../../scripts_block/rm_dc_scripts/dc.tcl | tee ../logs/dc/dc.log

clean:
	-rm -rf rm_dc/logs/dc/*
	-rm -rf rm_dc/rpts
	-rm -rf rm_dc/tmp/*
	-rm -rf rm_dc/work


