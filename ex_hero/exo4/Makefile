

TARGET_HOST := riscv64-hero-linux-gnu
DEVS := hero1
TARGET_DEVS := $(foreach dev,$(DEVS),riscv32-hero-$(dev)-elf)

CSRCS = main.c

CFLAGS   += -O2
CFLAGS   +=

### HOST ###

LDFLAGS  += -L$(HERO_ROOT)/sw/libhero/lib -lhero_occamy

### DEVICE 1 ###

CFLAGS   += --hero1-sysroot=$(HERO_INSTALL)/rv32imafd-ilp32d/riscv32-unknown-elf
CFLAGS   += -hero1-march=rv32imafd_xdma
CFLAGS   += -hero1-D__HERO_1 -hero1-D__HERO_DEV

LDFLAGS  += -hero1-I../common

CFLAGS   += -hero1-I$(OCCAMY_ROOT)/target/sim/sw/device/runtime/src
CFLAGS   += -hero1-I$(OCCAMY_ROOT)/target/sim/sw/shared/platform/generated/
CFLAGS   += -hero1-I$(OCCAMY_ROOT)/target/sim/sw/shared/platform/
CFLAGS   += -hero1-I$(OCCAMY_ROOT)/target/sim/sw/shared/runtime/
CFLAGS   += -hero1-I$(OCCAMY_ROOT)/deps/snitch_cluster/sw/snRuntime/api
CFLAGS   += -hero1-I$(OCCAMY_ROOT)/deps/snitch_cluster/sw/snRuntime/src
CFLAGS   += -hero1-I$(OCCAMY_ROOT)/deps/snitch_cluster/sw/snRuntime/api/omp
CFLAGS   += -hero1-I$(OCCAMY_ROOT)/deps/snitch_cluster/sw/snRuntime/src/omp
CFLAGS   += -hero1-I$(OCCAMY_ROOT)/deps/snitch_cluster/sw/deps/riscv-opcodes

LDFLAGS   += -hero1-L$(HERO_INSTALL)/lib/clang/15.0.0/rv32imafd-ilp32d/lib/
LDFLAGS   += -hero1-lclang_rt.builtins-riscv32

LDFLAGS  += -hero1-T$(OCCAMY_ROOT)/target/sim/sw/device/apps/libomptarget_device/link.ld
LDFLAGS  += -hero1-L$(OCCAMY_ROOT)/target/sim/sw/device/apps/libomptarget_device/build
LDFLAGS  += -hero1-lomptarget_device

LDFLAGS  += --hero1-ld-path=$(HERO_INSTALL)/bin/ld.lld

-include ../common/default.mk

.PRECIOUS: helloworld-hero1.OMP.ll helloworld-host.OMP.ll

### RUN

run-sg2042: $(EXE)
	rm -rf payloads
	convert -size 128x128 input_128x128.png input_128x128.rgb
	python3 /home/soc_master/ex_hero/ssh_queue/console_client.py --binary $(EXE) --in_file input_128x128.rgb --out_file output_128x128.gray --hardware pcie --server tardis-a15
	convert -size 128x128 -depth 8 payloads/${USER}/output_128x128.gray output.png

run-cva6: $(EXE)
	rm -rf payloads
	convert -size 128x128 input_128x128.png input_128x128.rgb
	python3 /home/soc_master/ex_hero/ssh_queue/console_client.py --binary $(EXE) --in_file input_128x128.rgb --out_file output_128x128.gray --hardware linux --server tardis-a15
	convert -size 128x128 -depth 8 payloads/${USER}/output_128x128.gray output.png
