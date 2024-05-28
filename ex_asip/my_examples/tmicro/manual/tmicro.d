# -*-Tcl-*-
#
# File: tmicro.d
# Contents: documentation file for the Tmicro core.
#
# Process with: nmlview -I../lib -d tmicro.d tmicro

set Tmicro {<span style="font-variant:small-caps">Tmicro</span>}

copy Synopsys.ico
copy Snps_logo.png
copy pipe_diagram.html
copy alu_dp.png

favicon Synopsys.ico

page index {
    head {Tmicro manual}
    title {
        <img src="Snps_logo.png" style="float:right;margin-bottom:20px;margin-left:20px"/>
        $Tmicro core - Processor manual
    }
    text {
        This document describes Synopsys' $Tmicro example core. It was generated
        with the <span style="font-variant:small-caps"> Nmlview</span>
        documentation generation tool, which is part of the <span
        style="font-variant:small-caps">ASIP Designer</span> tool suite.
    }
    section {link -page introduction}
    section {
        title "Primitive layer"
        text {
            The primitive layer describes the data types and operations which
            are supported in the $Tmicro assembly language.
        }
        section {link -page types}
        section {link -page operations}
        section {link -page pdg}
    }
    section {
        title "Hardware description"
        section {link -page funits}
        section {link -page memories}
        section {link -page registers}
    }
    section {link -page pipeline}
    section {
        title "Instruction set"
        section {link -page encoding}
        section {link -page syntax}
        section {link -rule tmicro}
    }
    section {link -page hazards}
    text {
        <hr/>
        <address>[nml copyright]</address>
    }
}


page types {
    title {Primitive data types}
    table types {}
}

page operations {
    title {Primitive operations}
    table operations {}
}

page pdg {
    head {Tmicro implementation}
    title {Primitive implementation}
    table pdg {}
}

page funits {
    head {Tmicro units}
    title {Functional units}
    table funits {}
}

page memories {
    section {
        title "Overview"
        text {<p>The $Tmicro core has two memories:</p>}
        table memories {
            columns {name description}
        }
    }
    section {
        title "Details"
        table memories {
            columns {name type addr range readports writeports}
        }
    }
}

page registers {
    section {
        title "General"
        table registers {
            columns {name type range aliasof readports writeports description}
            exclude {SR CND CB IE SRa SRb IM}
            exclude {ocd_addr ocd_data ocd_instr}
        }
    }
    section {
        title "Status register"
        table registers {
            columns {name type record readports writeports description}
            include {SR CND CB IE SRa SRb IM}
        }
    }
}


page pipeline {
    title "Instruction pipeline"
    text {
        <p>
        To meet the timing constraints imposed by the clock frequency, $Tmicro
        executes instructions in a pipelined fashion. There are three pipeline
        stages: IF, ID and E1.
        </p>
    }
    table pipeline {}
    text {
        <p>
        The operation of the pipeline is depicted below.
        Time progresses from left to right, and the program instructions
        progress from top to bottom. In cycle 3, instruction A is executing the
        actions of its execute stage E1. At the same time, instruction B is
        being decoded; and instruction C is being fetched from the program
        memory. Also in cycle 3, the next PC value of 3 is placed on the program
        memory address bus.
        </p>
        <iframe src="pipe_diagram.html" width="100%" height="200" frameborder="0"
        scrolling="no"/>
    }
}


page introduction {
    text {
        <p>
        This document describes the $Tmicro micro controller, an
        application-specific instruction-set processor (ASIP) designed with the
        <span style="font-variant:small-caps">ASIP Designer</span> tool suite. The
        $Tmicro core is an example processor intended to illustrate various
        concepts related to processor modelling, as well as tool capabilities
        such as on chip debugging and processor verification. $Tmicro can also
        be used as a starting point for the development of other ASIPs. It
        contains a collection of architecture features that are common in 16 bit
        micro controllers, such as:
        </p>
        <ul>
        <li>16 bit integer arithmetic, bitwise logical and compare instructions.
        These instructions are executed on a 16 bit ALU and operate on an 8
        field register file.</li>
        <li>Integer multiplications with 16 bit operands and 32 bit
        results.</li>
        <li>16 bit shift instructions.</li>
        <li>16 bit division step instruction.</li>
        <li>Load and store instructions from and to a 16 bit data memory with an
        address space of 64k words, using indirect addressing. Address
        computations are executed on a 16 bit AGU.</li>
        <li>Various control instructions such as jumps and subroutine call and
        return.</li>
        <li>Zero overhead loops.</li>
        <li>Support for interrupts.</li>
        <li>Support for on chip debugging.</li>
        </ul>
        <p>
        In addition to these predefined instructions, the user can add
        application specific instructions to the $Tmicro core.
        </p>
    }
}


page hazards {
    text {
        Hazards are artifacts of the pipelined execution of instructions. Three
        types of hazards are commonly identified in literature.
    }
    section {
        title "Structural hazards"
        text {
            <p>
            Structural hazards occur when a hardware resource (a transitory in
            the nML model) is used in different pipeline stages by different
            instructions.
            </p>
            <ul>
            <li>Structural hazard for cycle offset 1 on <tt>dm_addr</tt>: The
            address bus dm_addr is used by load instructions in the ID stage;
            and is used by store instructions in the E1 stage.</li>
            <li>Structural hazard for cycle offset 1 on <tt>offs</tt>: The jump
            offset transitory <tt>offs</tt> is used by the [ref -rule jrd] and
            [ref -rule jr] instructions in the ID stage; and is used by the [ref
            -rule jcr] instruction in the E1 stage.</li>
            <li>A hazard also occurs when a program memory store is programmed
            as the first delay slot instruction of a control flow instruction
            with two delay slots. The PM load drives the <tt>pm_addr</tt> bus in
            the ID stage. At the same time. the control flow instruction is in
            the EX stage, where it assigns the next fetch address to
            <tt>pm_addr</tt>.</li>
            </ul>
        }
    }
    section {
        title "Data hazards"
        text {
            Data hazards occur when a register is accessed in different stages
            by different instructions. A typical example is the read-after-write
            (RAW) hazard that occurs when a register is written in a late stage
            and that register is also read (by another instruction) in an early
            stage.
        }
        section {
            title "Read-after-write hazards between ID and E1"
            text {
                <p>
                This hazard occurs when a register is written by one instruction
                in a late stage (stage E1), and is read by another instruction
                in an early stage (stage ID). An example is an [ref -rule alu_rrr
                <tt>add</tt>] instruction, followed by a [ref -rule
                load_store_wreg_indirect <tt>ld</tt>] instruction. The
                <tt>add</tt> writes to register R\[0\] in the same cycle as the
                <tt>ld</tt> reads R\[0\]. In case there is a data dependency,
                this hazard must be resolved by inserting at least one
                intermediate instruction.
                </p>
                <p>
                The following read-after-write hazards between ID and E1 are
                present on the $Tmicro core:
                </p>
                <ul>
                <li>RAW hazard for cycle offset 1 on R</li>
                <li>RAW hazard for cycle offset 1 on SP</li>
                <li>RAW hazard for cycle offset 1 on ILR</li>
                </ul>
                <p>
                All hazards of this kind are resolved in software. This is
                expressed by adding <tt>sw_stall</tt> rules to the nML model.
                </p>
            }
        }
        section {
            title "Write-after-write hazards between ID and E1"
            text {
                This hazard occurs when a register is written by one instruction
                in a late stage (stage E1), and is also written by another
                instruction in an early stage (stage ID). An example is a [ref
                -rule mv_wreg <tt>mv</tt>] instruction, followed by a [ref -rule
                cl] instruction. The <tt>mv</tt> writes to register LR in the
                same cycle as the <tt>cl</tt>. By default, the tools avoid this
                hazard by preferring the update of the second instruction over
                that of the first instruction.
            }
        }
        section {
            title "Data hazards caused by the end-of-loop test"
            text {
                <p>
                The end-of-loop test, which takes place for the last instruction
                of a hardware loop, will update the PC when the loop has not
                completed. This update may conflict with the PC update that is
                part of a jump instruction. To avoid the hazard, the jump must
                not be scheduled near the end of the loop. This is avoided with
                a stall rule in the nML.
                </p>
                <p>
                Another problem arises when a [ref -rule clid] instruction is
                executed near the end of the loop. When the delay slots are
                executed, the PC is incremented. Suppose it reaches the loop end
                address in the cycle where the call is executed. Then, the call
                takes precedence and the end-of-loop test is not executed. The
                called function then returns to PC+1, which is after the loop.
                This hazard is also avoided through a stall rule in the nML.
                </p>
                <p>
                In order to avoid that two nested hardware loops terminate at
                the same address, still another stall rule is defined in the
                nML.
                </p>
            }
        }
    }
    section {
        title "Control hazards"
        text {
            Control hazards occur when a jump instruction is issued that results
            in a change of the program counter in a later pipeline stage. They
            are identified in nML by means of the <tt>cycles</tt> and
            <tt>delay_slots</tt> properties of the different [ref -rule
            control_instr "control instructions"].
        }
    }
}


page encoding {
    head "Tmicro encoding"
    title "Encoding overview"
    overview -mode align -bits 0 -numbering L -rule tmicro -trace {
        alu_instr {alu_rrr {} shift_rrr {} mul_rr {} div_r {} compare_rr {} equal_rr {} alu_rr {} minmax_rrr {} select_rrr {}}
        move_instr {mv_wreg {} mvi_wreg_word {} mvi_wreg_byte {} mvi_im {} ei {} di {} mv_dbg_wreg {} mv_wreg_dbg {}}
        load_store_instr {
            load_store_wreg_sp_indexed {}
            load_store_wreg_indirect {}
            load_store_pm_wreg_indirect {load_pm_wreg_indirect {} store_pm_wreg_indirect {}}
            add_sp_word {}
            add_sp_byte {}
        }
        control_instr {jrd {} jr {} jcr {} j {} jc {} ji {} cl {} clid {} ret {} rtd {} do {} doi {} dlf {} swi {} rti {} halt {} swbrk {} nop {}}
    }
}


page syntax {
    head "Tmicro syntax"
    title "Syntax overview"
    overview -mode syntax -rule tmicro -trace {
        alu_instr {
            alu_rrr {op {add addc sub subb and or xor} t {r {}} r {r {}} s {r {}}}
            shift_rrr {op {asr lsr lsl} t {r {}} r {r {}} s {r {}}}
            mul_rr {op {mulss muluu macl} r {r {}} s {r {}}}
            div_r {r {r {}}}
            compare_rr {op {lt ltu le leu gt gtu ge geu} r {r {}} s {r {}}}
            equal_rr {op {eq ne} r {r {}} s {r {}}}
            alu_rr {op {cmpl xs} t {r {}} s {r {}}}
            minmax_rrr {op {min max} t {r {}} r {r {}} s {r {}}}
            select_rrr {t {r {}} r {r {}} s {r {}}}
        }
        move_instr {
            mv_wreg {dst {} src {}}
            mvi_wreg_word {rr {} imm {}}
            mvi_wreg_byte {rr {} imm {}}
            mvi_im {imm {}}
            ei {* {}}
            di {* {}}
            mv_dbg_wreg {dst {}}
            mv_wreg_dbg {src {}}
        }
        load_store_instr {
            load_store_wreg_sp_indexed {ls {ld st} rr {} offs {}}
            load_store_wreg_indirect {op {ld st} rr {} ag {r {r {}} op {indir incr decr}}}
            load_store_pm_wreg_indirect {
                load_pm_wreg_indirect {rr {} ag {r {r {}} op {indir incr decr}}}
                store_pm_wreg_indirect {rr {} ag {r {r {}} op {indir incr decr}}}
            }
            add_sp_word {imm {}}
            add_sp_byte {imm {}}
        }
        control_instr {
            jrd {of {}} jr {of {}} jcr {of {}} j {tg {}} jc {tg {}} ji {r {r {}}} cl {tg {}}
            clid {r {r {}}} ret {* {}} rtd {* {}} do {r {r {}} l {last {}}} doi {count {} l {last {}}}
            dlf {* {}} swi {tg {}} rti {* {}} halt {* {}} swbrk {* {}} nop {* {}}}
    }
}


# Data types

type addr {
    description "Address type for memories."
}
type iword {
    description "Instruction word type."
}
type nint9 {
    description "Used for negative offsets to the stack pointer register."
}
type sbyte {
    description "Used for the relative offset of short jump instructions, and
        for short immediate values."
}
type ubyte {
    description "Used to represent the interrupt registers."
}
type word {
    description "Data type of most registers and memories."
}
type uint1 {
    description "Used to address register files."
}
type uint2 {
    description "Used to address register files."
}
type uint3 {
    description "Used to address register files."
}
type uint4 {
    description "Used to address register files."
}


# Functional units

funit alu {
    description "16 bit general purpose ALU."
}
funit sh {
    description "16 bit shift unit."
}
funit mul {
    description "16x16 multiplier unit producing a 32 bit product."
}
funit ag1 {
    description "16 bit address computation unit."
}
funit dlflg {
    description "Hardware loop flag update unit."
}


# Memories

memory DM {
    description "Default memory for the C compiler. All variables that are
        declared without a storage specifier are assigned to DM. The software
        stack that is needed to support C programs is organised in DM. The DM
        memory does not support memory wait states."
}
memory PM {
    description "Program memory"
}


# Registers

register R {
    description "General purpose register file. The ALU, shift and multiply
        instructions operate on this register. Also used as address register for
        indirect load and store instructions. Finally, some control instructions
        also make use of this register"
}
register PL {
    description "Low product register. Holds the 16 least significant bits of a
        32 bit product"
}
register PH {
    description "High product register. Holds the 16 most significant bits of a
        32 bit product"
}
register LR {
    description "Link register. Used to store the return address of a subroutine
        call."
}
register SP {
    description "Stack pointer register."
}
register PC {
    description "Program counter register."
}
register LF {
    description "Loop flag register. The value in this register indicates how
        many hardware loops are active. The $Tmicro processor supports up to
        three levels of hardware controller loops. LF has an initial value of 3
        (after a reset, the content of LF will be 3) to indicate the absence of
        active hardware loops."
}
register LS {
    description "Loop start address register (indexed by LF)."
}
register LE {
    description "Loop end address register (indexed by LF)."
}
register LC {
    description "Loop count register (indexed by LF)."
}
register SR {
    description "Status register."
}
register CND {
    description "Condition register. Set by compare instructions on the ALU, and
       read by conditional jump instructions."

}
register CB {
    description "Carry/borrow register. Set when the ALU executes an add or
        subtract instruction. Read when the ALU executes an add with carry or
        subtract with borrow instruction."
}
register IE {
    description "Interrupt enable register."
}
register IM {
    description "Interrupt mask register."
}
register ILR {
    description "Interrupt link register."
}
register ISR {
    description "Interrupt status register."
}
register SRa {
    description "Unused status bits."
}
register SRb {
    description "Unused status bits."
}


# Pipeline

stage IF {
    description {
        Instruction fetch
        <ul style="padding-left:10px;margin:2px">
        <li> During the instruction fetch stage, a new instruction is read from
        the program memory PM. The program memory address has been placed on the
        PM address bus at the end of the previous clock cycle (a synchronous
        memory is assumed). </li>
        </ul>
    }
}

stage ID {
    description {
        Instruction decode
        <ul style="padding-left:10px;margin:2px">
        <li>During the decode stage, the instruction that was fetched in the
        previous cycle is decoded</li>
        <li>The effective address of load instructions is placed on the DM
        address bus.</li>
        <li>Address modifications and stand alone address computations on the
        address generation units are executed.</li>
        <li>Unconditional control instructions modify the flow of control.</li>
        </ul>
    }
}

stage E1 {
    description {
        Execute 1
        <ul style="padding-left:10px;margin:2px">
        <li>ALU, shift, multiply, and division step operations are executed.</li>
        <li>Move instructions take place in this stage.</li>
        <li>The effective address of store instructions is placed on the DM
        address bus. The source register is placed on the data bus.</li>
        <li>For load instructions, the memory places the data on the data bus.
        The data is then latched into the destination register.</li>
        <li>Conditional control instructions modify the flow of control.</li>
        </ul>
    }
}


# Instruction set

rules {
    sections {
        syntax
        encoding
        action
        value
        accesses
        properties
        operations
        description
    }
    exclude {
        swi halt
    }
}


rule tmicro {
    head "Tmicro hierarchy"
    title "Instruction set hierarchy"
    text {
        The instruction set hierarchy starts at the top-level of the nML
        processor description. Blue items refer to OR-rules (containing
        different alternatives), while green items refer to AND-rules
        (containing a number of (parallel) actions).
    }
    description {
        A basic instruction word of the $Tmicro processor is 16 bits wide (data
        type <tt>iword</tt>). $Tmicro supports both single word and multi word
        instructions. Most instructions are single word instructions, where one
        16 bit instruction word encodes one or more actions that are performed
        by the processor. In the case of multi word instructions, the first
        instruction word also encodes the instruction. The second instruction
        word extends the first word with a 16 bit immediate value. There is one
        instruction, <tt>doi</tt>, which has three instruction words. The second
        and third instruction word never contain encoding bits.
    }
}

rule alu_instr {
    title "ALU instructions"
    description {
        The $Tmicro core has a 16 bit ALU. The instructions of this unit are
        intended to execute ANSI C arithmetic, logical and relational
        operations. All ALU operations execute in the E1 stage. The ALU data
        path is shown below:
        <img src="alu_dp.png" style="margin:auto;display:block">
    }
}

rule alu_rrr {
    name "Binary ALU instructions"
    title "Binary Arithmetic and Logical instructions"
    expand *
    description {
        The ALU supports the following arithmetic and logical operations:
        addition, addition with carry, subtraction, subtraction with borrow,
        bitwise AND, bitwise OR, and bitwise exclusive OR. The arithmetic and
        logical instructions are three register instructions; the operand
        registers are specified by the <i>r</i> and <i>s</i> fields, the result
        register is specified by the <i>t</i> field.
    }
}

rule compare_rr {
    name "Compare instructions"
    expand *
    description {
        <p>
        The ALU supports the following compare operations on two fields of the R
        register file: signed less than <tt>(lt)</tt>, unsigned less than
        <tt>(ltu)</tt>, signed less than or equal <tt>(le)</tt>, unsigned less
        than or equal <tt>(leu)</tt>, signed greater than <tt>(gt)</tt>,
        unsigned greater than <tt>(gtu)</tt>, signed greater than or equal
        <tt>(ge)</tt>, unsigned greater than or equal <tt>(geu)</tt>, equal
        <tt>(eq)</tt> and not equal <tt>(ne)</tt> (see [ref -rule equal_rr
        "equality instructions"] for the latter two). The result is stored in
        the CND register.
        </p>
        <p>
        Signed compares interpret the 16 bit operands as signed values. This
        means that a value that starts with a 1 bit (a negative value) is
        smaller than a value of which the most significant but is 0 (which means
        it is a positive value). Unsigned compares interpret the 16 bit operands
        as unsigned values. This means that a value with an MSB of 1 bit is
        larger than a value with and MSB of 0.
        </p>
    }
}

rule equal_rr {
    name "Equality instructions"
    expand *
    description {
        See [ref -rule compare_rr "compare instructions"].
    }
}

rule alu_rr {
    name "Unary ALU instructions"
    expand *
    description {
        The ALU supports the following unary (two register) operations: logical
        complement and sign extraction. The operand register of these
        instructions is specified by the <i>s</i> field, the result register is
        specified by the <i>t</i> field. The <tt>xs</tt> instruction produces a
        value 0 when <i>r</i> contains a positive value (including zero); and
        produces a value 1 when <i>r</i> is negative.
    }
}

rule minmax_rrr {
    name "Min/max instructions"
    expand *
    description {
        The ALU supports the three conditional move operations: minimum value
        selection, maximum value selection and [ref -rule select_rrr "conditional
        move based on the CND bit"]. The operand registers are specified by the
        <i>r</i> and <i>s</i> fields, the result register is specified by the
        <i>t</i> field.
    }
}

rule select_rrr {
    name "Select instruction"
    expand *
    description -nocommands {
        Conditional move : <tt>R[t] &larr; CND ? R[r] : R[s]</tt>
    }
}

rule shift_rrr {
    name "Shift instructions"
    expand *
    description -nocommands {
        <p>
        The $Tmicro core has a 16 bit shift unit. The instructions that are
        executed on this unit are intended to execute ANSI C shift operations.
        All shift operations execute in the E1 stage.
        </p>
        <p>
        The shift unit supports the following operations: arithmetic shift
        right, logical shift right and logical shift left. The shift
        instructions are three register instructions; the operand register is
        specified by the <i>r</i> field, the shift factor register is specified
        by the <i>s</i> field, the result register is specified by the <i>t</i>
        field.
        </p>
        <p>
        The <tt>asr</tt> instruction extends the result at the MSB side with
        sign bits. The <tt>lsr</tt> instruction extends the result at the MSB
        side with zero bits. The <tt>lsl</tt> instruction extends the result at
        the LSB side with zero bits. The actual shift factor corresponds to the
        4 least significant bits of the value in R[s]. The range of the shift
        factor is therefore 0..15.
        </p>
    }
}

rule mul_rr {
    name "Multiply instructions"
    expand *
    description -nocommands {
        <p>
        The $Tmicro core has a 16 by 16 bit multiplier, which produces a 32 bit
        product. The instructions that are executed on this unit are intended to
        execute ANSI C integer multiplication operations. All multiplications
        execute in the E1 stage. The multiplier operates on the R register file,
        and produces a result in the PH and PL registers.
        </p>
        <p>
        The multiplier unit supports signed and unsigned multiplications and
        multiply accumulate operations, as indicated in the table below. The 16
        bit operands are read from the <i>r</i> and <i>s</i> fields of the R
        register file. The 32 bit product is stored as two separate 16 bit words
        in the PH and PL registers.
        </p>
        <dl style="font-family:monospace">
        <dt>mulss</dt>
        <dd>(PH,PL) &larr; R[r]<sub>signed</sub> &times; R[s]<sub>signed</sub></dd>
        <dt>muluu</dt>
        <dd>(PH,PL) &larr; R[r]<sub>unsigned</sub> &times; R[s]<sub>unsigned</sub></dd>
        <dt>macl</dt>
        <dd>(PH,PL) &larr; (PH,PL) + (R[r]<sub>unsigned</sub> &times; R[s]<sub>unsigned</sub>) \u226a 16</dd>
        </dl>
        <p>
        The <tt>mulss</tt> and <tt>muluu</tt> instructions are intended to
        execute 16 bit signed and unsigned integer multiplications. The
        <tt>macl</tt> instruction is intended for the software emulation of 32
        bit integer multiplication.
        </p>
    }
}

rule div_r {
    name "Division step instruction"
    expand *
    description {
        The ALU supports an instruction that implements a basic step of the
        non-restoring division algorithm. The denominator is located in the
        <i>r</i> field of the R register file. The PL and PH registers are used
        to store the intermediate result of the division. Initially, the
        numerator is located in PL, and PH is set to zero. After 16 invocations
        of this instruction, the quotient is located in PL and the remainder in
        PH.
    }
}


rule move_instr {
    title "Move instructions"
}

rule mv_wreg {
    title "Word register move"
    expand *
    description {
        This instruction moves the content of one register of type word to
        another register of type word. The register transfer takes place in
        pipeline stage E1.
    }
}

rule mvi_wreg_word {
    title "Load word immediate"
    expand *
    description -nocommands {
        <p>
        This instruction loads a register of type <tt>word</tt> with a signed
        immediate value in the range [-32768..32767]. The register is written in
        pipeline stage E1.
        </p>
        <p>
        This instruction is a two word and two cycle instruction. The first
        instruction word consists of opcode bits and a field that selects the
        destination register. The second instruction word is the 16 bit
        immediate value.
        </p>
    }
}

rule mvi_wreg_byte {
    title "Load byte immediate"
    expand *
    description -nocommands {
        This instruction loads a register of type <tt>word</tt> with a signed
        immediate value of type <tt>byte</tt> which has a range [-128..127]. The
        value of type <tt>byte</tt> is sign extended to obtain a value of type
        <tt>word</tt>. The register is written in pipeline stage E1.
    }
}

rule mvi_im {expand *}
rule mv_dbg_wreg {expand *}
rule mv_wreg_dbg {expand *}

rule load_store_instr {
    title "Load/store instructions"
}

rule load_store_wreg_sp_indexed {
    title "SP indexed load/store instructions"
    expand *
    description -nocommands {
        <p>
        These instructions load or store a register of type <tt>word</tt> from
        or to the DM memory. The address is given by the value of the stack
        pointer plus a negative offset. The index addition is executed on the
        AGU. The offset is in the range [-256..0]. Note that only the lower 8
        bits of the 9 bit <i>offs</i> field are encoded in the instruction. The
        ninth bit is assumed to be always one.
        </p>
        <dl style="font-family:monospace">
        <dt>ld</dt>
        <dd>wreg &larr; DM[SP+offs]</dd>
        <dt>st</dt>
        <dd>DM[SP+offs] &larr; wreg</dd>
        </dl>
        <p>
        These instructions are intended for the C compiler, to save registers on
        the stack frame as part of the context switch of a function call or
        interrupt.
        </p>
    }
}

rule load_store_wreg_indirect {
    title "Load/store instructions with linear addressing"
    expand *
    description -nocommands {
        <p>
        These instructions load or store a register of type <tt>word</tt> from
        or to the DM memory. The address is taken from a field of the R register
        file. Optionally, this field is post-incremented or post-decremented.
        </p>
        <dl style="font-family:monospace">
        <dt>ld</dt>
        <dd>wreg &larr; DM[R[r]]<br/>optionally R[r] &larr; R[r]+1 or R[r] &larr; R[r]-1</dd>
        <dt>st</dt>
        <dd>DM[R[r]] &larr; wreg<br/>optionally R[r] &larr; R[r]+1 or R[r] &larr; R[r]-1</dd>
        </dl>
    }
}

rule ag1_opn {expand *}

rule load_store_pm_wreg_indirect {
    title "Load/store instructions on the program memory"
    expand *
    description {
        <p>
        These instructions load or store a register of type <tt>word</tt> from
        or to the PM memory. The address is taken from a field of the R register
        file. Optionally, this field is post-incremented or post-decremented.
        </p>
        <p>
        Since the program memory is a single ported memory, it is impossible to
        execute a PM load or store, and simultaneously fetch the next
        instruction. Therefore, the PM load is a <tt>cycles(2)</tt> instruction,
        and the PM store is a <tt>cycles(3)</tt> instruction.
        </p>
    }
}

rule load_pm_wreg_indirect {expand *}
rule store_pm_wreg_indirect {expand *}

rule add_sp_word {
    title "Stack pointer word addition"
    expand *
    description {
        Add a 16 bit signed immediate value to stack pointer register. This
        instruction consists of two words. The first word specifies the
        instruction, the second word holds the immediate value. The addition is
        executed on the linear AGU, in the ID stage (see [ref -page pipeline]).
        This instruction is used to allocate a stack frame in the context of a C
        subroutine call.
    }
}

rule add_sp_byte {
    title "Stack pointer byte addition"
    expand *
    description {
        Add an 8 bit signed immediate value to stack pointer register. This is a
        single word instruction. The addition is executed on the linear AGU, in
        the ID stage (see [ref -page pipeline]). This instruction is used to
        allocate a stack frame in the context of a C subroutine call.
    }
}

rule control_instr {
    title "Control instructions"
    description {
        Ordinary instructions increment the program counter so that the next
        instruction is fetched from the program memory. Control instructions
        change the flow to another part of the program. They include jumps,
        subroutine call and return, hardware loops and interrupts.
    }
}

rule jrd {
    title "Unconditional relative jump (with delay slot)"
    description {
        This instruction unconditionally transfers control from the current PC
        to a new address at PC + <i>of</i>, where <i>of</i> is a signed 8 bit
        offset. It has one delay slot.
    }
}

rule jr {
    title "Unconditional relative jump (without delay slot)"
    description {
        This instruction unconditionally transfers control from the current PC
        to a new address at PC + <i>of</i>, where <i>of</i> is a signed 8 bit
        offset.
    }
}

rule jcr {
    title "Conditional relative jump"
    description {
        This instruction conditionally transfers control from the current PC to
        a new address at PC + <i>of</i>, where <i>of</i> is a signed 8 bit
        offset. The jump is taken when the CND register contains a 1. Because
        the CND register is written in the E1 stage, the conditional jump
        instruction also reads this register in E1.
    }
}

rule j {
    title "Unconditional absolute jump"
    description {
        This instruction unconditionally transfers control from the current PC
        to a new address given by the <i>tg</i> parameter. It is a two word
        instruction: the first word encodes the instruction, the second word
        contains the target address.
    }
}


rule jc {
    title "Conditional absolute jump"
    description {
        This instruction conditionally transfers control from the current PC to
        a new address given by the <i>tg</i> parameter. It is a two word
        instruction: the first word encodes the instruction, the second word
        contains the target address
    }
}

rule ji {
    title "Unconditional indirect jump"
    expand *
    description -nocommands {
        This instruction unconditionally transfers control from the current PC
        to a new address specified in the R[r] register.
    }
}

rule cl {
    title "Direct call"
    description {
        This instruction unconditionally transfers control from the current PC
        to a new address given by the <i>tg</i> parameter. It is a two word
        instruction: the first word encodes the instruction, the second word
        contains the target address. This instruction saves the PC value to the
        link register LR in the ID stage.
    }
}

rule clid {
    title "Indirect call"
    expand *
    description -nocommands {
        This instruction unconditionally transfers control from the current PC
        to a new address specified in the R[r] register. The new PC value is
        written in the E1 stage. This instruction saves the PC value to the link
        register LR in the E1 stage.
    }
}

rule ret {
    title "Return from subroutine"
    description {
        This instruction unconditionally transfers control from the current PC
        to a new address given by the link register plus one (LR+1).
    }
}

rule rtd {
    title "Return from subroutine (with delay slots)"
    description {
        This instruction unconditionally transfers control from the current PC
        to a new address given by the link register plus one (LR+1).
    }
}

rule nop {
    title "NOP instruction"
    description {
        The effect of a <tt>nop</tt> is that for 1 cycle, no actions are issued.
    }
}

rule do {
    title "Hardware do loop (register count)"
    expand *
    description {
        This instruction initiates a zero overhead loop. The <i>r</i> parameter
        specifies the loop count register. The second instruction word specifies
        the loop end address. There is one delay slot
    }
}

rule doi {
    title "Hardware do loop (immediate count)"
    expand *
    description {
        This instruction initiates a zero overhead loop. The second instruction
        word specifies the loop end address, and the third instruction word
        specifies the loop count.
    }
}

rule dlf {
    title "Decrement loop flag"
    description {
        This instruction decrements the content of the loop flag register LF. In
        case LF contains 0, the new value becomes 3. The purpose of this
        instruction is to decrement the loop flag register after a jump out of a
        zero overhead loop. Note that such a jump can be programmed in assembly
        code but will not be generated when compiling C code.
    }
}

rule wreg {
    title "Word registers"
    expand *
    description "Mode for selecting registers of type word"
}


enum unary_op {
    name "Unary operations"
    descriptions {
        cmpl "Logical complement"
        xs   "Sign extraction"
    }
}

enum alu_op {
    name "ALU operations"
    descriptions {
        add "Add"
        addc "Add with carry"
        sub "Subtract"
        subb "Subtract with borrow"
        and "Binary and"
        or "Binary or"
        xor "Binary xor"
        compare ""
        asr "Arithmetic shift right"
        lsr "Logical shift right"
        lsl "Logical shift left"
        unary ""
        mul ""
        equal ""
        min "Minimum"
        max "Maximum"
    }
}
