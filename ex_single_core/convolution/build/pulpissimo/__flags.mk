PULP_LDFLAGS      += 
PULP_CFLAGS       += 
PULP_FC_ARCH_CFLAGS ?=  -march=rv32imfcxpulpv2 -mfdiv -D__riscv__
PULP_FC_CFLAGS    += -fdata-sections -ffunction-sections -I/home/soc_12fs24/ex01_socdaml/pulp-sdk/pkg/sdk/dev/install/include/io -I/home/soc_12fs24/ex01_socdaml/pulp-sdk/pkg/sdk/dev/install/include -include /home/soc_12fs24/ex01_socdaml/convolution/build/pulpissimo/fc_config.h
PULP_FC_OMP_CFLAGS    += -fopenmp -mnativeomp
ifdef PULP_RISCV_GCC_TOOLCHAIN
PULP_FC_CC = $(PULP_RISCV_GCC_TOOLCHAIN)/bin/riscv32-unknown-elf-gcc 
PULP_CC = $(PULP_RISCV_GCC_TOOLCHAIN)/bin/riscv32-unknown-elf-gcc 
PULP_AR ?= $(PULP_RISCV_GCC_TOOLCHAIN)/bin/riscv32-unknown-elf-ar
PULP_LD ?= $(PULP_RISCV_GCC_TOOLCHAIN)/bin/riscv32-unknown-elf-gcc
PULP_FC_OBJDUMP ?= $(PULP_RISCV_GCC_TOOLCHAIN)/bin/riscv32-unknown-elf-objdump
PULP_OBJDUMP ?= $(PULP_RISCV_GCC_TOOLCHAIN)/bin/riscv32-unknown-elf-objdump
else
PULP_FC_CC = $(PULP_RISCV_GCC_TOOLCHAIN_CI)/bin/riscv32-unknown-elf-gcc 
PULP_CC = $(PULP_RISCV_GCC_TOOLCHAIN_CI)/bin/riscv32-unknown-elf-gcc 
PULP_AR ?= $(PULP_RISCV_GCC_TOOLCHAIN_CI)/bin/riscv32-unknown-elf-ar
PULP_LD ?= $(PULP_RISCV_GCC_TOOLCHAIN_CI)/bin/riscv32-unknown-elf-gcc
PULP_FC_OBJDUMP ?= $(PULP_RISCV_GCC_TOOLCHAIN_CI)/bin/riscv32-unknown-elf-objdump
PULP_OBJDUMP ?= $(PULP_RISCV_GCC_TOOLCHAIN_CI)/bin/riscv32-unknown-elf-objdump
endif
PULP_ARCH_FC_OBJDFLAGS ?= -Mmarch=rv32imfcxpulpv2
PULP_ARCH_OBJDFLAGS ?= -Mmarch=rv32imfcxpulpv2
PULP_ARCH_LDFLAGS ?=  -march=rv32imfcxpulpv2 -mfdiv -D__riscv__
PULP_LDFLAGS_convolution = -nostartfiles -nostdlib -Wl,--gc-sections -L/home/soc_12fs24/ex01_socdaml/pulp-sdk/pkg/sdk/dev/install/rules -Tpulpissimo/link.ld -L/home/soc_12fs24/ex01_socdaml/pulp-sdk/pkg/sdk/dev/install/lib/pulpissimo -L/home/soc_12fs24/ex01_socdaml/pulp-sdk/pkg/sdk/dev/install/lib/pulpissimo/pulpissimo -lrt -lrtio -lrt -lgcc
PULP_OMP_LDFLAGS_convolution = -lomp
pulpRunOpt        += --dir=/home/soc_12fs24/ex01_socdaml/convolution/build/pulpissimo --binary=convolution/convolution
