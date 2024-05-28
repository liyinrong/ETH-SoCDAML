RiscV is the opensource ISA from University of California Berkeley.
http://tzscale.org/

This RiscV model is comparable to the Zscale implementation.  It implements the RV32E (embedded) instruction set and uses a shallow pipeline identical to 
the Zscale pipeline.

The RV32E ISA is specifies as being identical to RV32I, but with only 16
registers and without performance counters.

Overview of the implementation:

1. A 32 bit implementation

2. A shallow FE-DcEx-WB pipeline. Decode and Execute takes place in the same 
pipeline.  

3. The base integer ISA:
   LUI JAL JALR BEQ BNE BLT BGE BLTU BGEU LB LH LW LBU LHU SB SH SW ADDI 
   SLTI SLTIU XORI ORI ANDI SLLI SRLI ADD SUB SLL SLT SLTU XOR SRL SRA OR

4. We will not model AUIPC

5. From the multiplication and division extension, we model MUL, DIV, DIVU,
   REM and REMU.  For MUL, we model a hardware, for DIV and REM we use an MCFU.

6. We do not model On Chip Debugging suport for RisvV.


Some known limitations:

1. Jump instructions are not using step size of 2 at the moment (program 
   memory needs to be a byte memory for this).
2. Constant generation at the moment is using an ALU operation with unsigned 
   12 bit immediate as input, while the original specification of RiscV only 
   allows signed 12 bit immediates.


Building the core:

1. The core can be built by running the make_model.sh script.
2. The oneliners.prx project can be compiled by "cd lib/oneliners" and then :
 chessmk oneliners.prx
3. The core can be tested by running the regression tests:
       cd regression
   and then running the run-tests.tcl script 
       tct_tclsh run-tests.tcl

