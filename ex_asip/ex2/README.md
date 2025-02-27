# Log-in into the account

Reproduce the steps described in the README under the `ex_asip` root directory.

# Exercise 2

Start the tool with `./start_asiptool`

## Processor and Libraries

In this example, we will use the `tzscale` processor.
Its architecture and encoding are different than that of the `tmicro` processor, but the same principles still apply.

Copy the `tzscale` folder from the `official_examples` folder to `my_examples`.

Replace the copied file `my_examples/tzscale/lib/tzscale_mcpy.h` with the one in
`ex2/tzscale/tzscale_mcpy.h`

```
cp ex2/tzscale/tzscale_mcpy.h my_examples/tzscale/lib/tzscale_mcpy.h
```

Compile the needed libraries `libc` and `libtzscale` for this processor.

`libc` contains the C standard library, `libtzscale` contains helper functions
for the core.

## Generate the ISS

Open and compile the ISS provided under `tzscale/iss`.

## Application

We will use the application `ex2/dot_product`. Copy it into the `tzcale` directory.
```
cp -r ex2/dot_product my_examples/tzscale/
```

Before compiling it, make sure you compiled the necessary libraries for the
processor.

**Important** : You do not need to recompile the `tzscale_ia`. If you do so, there will be some errors, which you can ignore. Simply, continue with the next steps.

Now open the `dotproduct.prx` project and compile it.

## Application

First, have a look at the source code in `dot_product/dotproduct.c`. The program
computes the dot-product of two vectors consisting of `short` entries (16 bit
each).

Run it (the result should be 37400) and report the number of cycles (they should
be 99)

Look at the assembly in `dot_product/Release/dot_product.lst`:

```
addi x10,x0,0
LOOP_BODY
lh x3,0(x11)
lh x4,0(x12)
addi x11, 2
mul x3,x4,x3
addi x12, 2
add x10, x3
BRANCH_LOOP
```

The loop effectively consists of the following:
- Load two `short` values (`lh` = load halfword) from the vector into the registers
of the processor.
- Add 2 (since we're handling 16-bit wide values) to the registers containing the
pointer addresses of the vector elements we read as a preparation for the next
loop iteration.
- Multiply the two vector values.
- Add the result to an accumulator register (`x10` in our case).

How can we lower the code size as well as improve the speed of the
application? It all boils down to *doing more work in one cycle*.

## EX - Add the MAC instruction

Following what you learned in the previous exercise, add a MAC
(multiply-accumulate) instruction (`a = a + b*c`).

This instruction reads 3 OPERANDS, but one of the operands has the same address
as the destination address, thus the encoding is kept simple.

We want to encode the MAC instruction together with the MUL instructions, so we
need to use as INSTRUCTION CODE:

```
010 0001  src2  src1  000 dest  011 0011
```

Open the `lib/opcode.n` file. If you look at the multiplication/division
instructions in `tzscale`, you will see that the opcode (the lowest 7 bits of the
instruction) is 011 0011 (0x33), then 3 bits are used to select among mul and
div variants (`funct3_mul_div`). Indeed in the `alu.n` file, you can see the
image of the multiplication instruction like:

```
funct7_muldiv.mul_div::rs2::rs1::op::rd::opc.mul_div_e
```

which is 0x1::src2::src1::funct3_mul_div::dest::0x33.

The uppermost 7 bits (the `funct7_muldiv` field) have only one useful
configuration, so add `0x21` to decode the `mac` to the `funct7_muldiv` set.

```
enum funct7_muldiv {
    mul_div = 0x1,
    *mac     = 0x21,*
    seven_bits_force = 0x7F
};
```

Open the `lib/alu.n` file. The `alu_rrr_mul` operation is part of the OR-rule of
the `alu_rrr` opn. Define a new rule

```
opn macmul_instr(mul_rrr | mac_rrr);
```

to select either a classic mul/div instruction or the new `mac` instruction.

We remove the `alu_rrr_mul` instruction from the `alu_rrr` opn since we're
handling it separately now.

Rename all mentions of the old `alu_rrr_mul` instruction to its new name
`mul_rrr`.

Add a new rule for `opn mac_rrr(op: funct7_muldiv, rd: mR3, rs1: mR1, rs2: mR2)`
by basing it off `mul_rrr`.

Since the `mac` operation reads three registers, we will need to add a third
read port to the register file (cf. `mR3` in the rule above).

Here is a possible example:


```
opn mac_rrr(op: funct7_muldiv, rd: mR3, rs1: mR1, rs2: mR2)
{
    action {
    stage DE:
    switch (op) {
        case mac:   mpyC = mac   (mpyA=rs1,mpyB=rs2, mpyD=rd) @mpy;
     }
     PD = mpyC;
     stage WB:
        rd = PD;
    }
    syntax   : op " " rd "," rs1 "," rs2;
    image    : op::rs2::rs1::funct3_mul_div.mul::rd::opc.mul_div_e;
}
```

As you see from this example, the `funct3_mul_div` is constant to
`funct3_mul_div.mul (0)`, the first 7 bits can only be mac (0x21). This is a valid
`mac` instruction implemented as specified before.

Further Steps:

Do not forget to update also the `lib/tzscale.n` file to add the new
`macmul_instr` rule and register file ports.

Add one extra read-port in the Register File (`regifile.n`), check the HAZARD
for the pipeline (`hazard.n`) for operands forwarding (as we have a new
read-port).

The 3rd register port can be added like this:

In the `tzscale.n` file add the r3 read port to the register file

```
reg R[1..31]<w32,uint5> syntax ("X") read(r1 r2 r3) write(w1 wd);
```

In the  `regfile.n` add

```
mode mR3(mR3nz | mR3_dead);


mode mR3_dead() {
    read_value   : r3;
    write_value  : w1_dead;
    read_action  { r3 = 0;}
    syntax       : "x0";
    image        : "00000";
}

mode mR3nz(r: c5unz) {
    read_value   : R[r] read(r3);
    write_value  : R[r] write(w1);
    syntax       : "x" dec r;
    image        : r;
}
```

This tells us that the mR3 type reads from the r3 port and writes to the w1 port
(plus the special case for address 0).

Finally, adding the stalls in the  `hazards.n`

```
bypass 1 cycles () {
    stage WB: R$[#] = #PD;
} -> {
    stage DE: #r3 = R$[#];
}
```

Lastly, describe the PDG code for new instruction as done with `ext_abs` in the
previous exercise and don't forget to add a rewrite pattern for the compiler.
The rewrite pattern for the compiler can be added in the compiler header file
`tzscale_chess.h`. Remember that we do not only need to define a
```chess_rewrite``` pattern, but also a ```promotion``` function for the mac.

Recompile the core, the ISS and the `libc` and the `dotproduct` application. 

**Important**: Again, it is not necessary to recompile the `tzscale_ia`. 

The final assembler should have one instruction less and the execution speed
should be 10 cycles faster. Of course, the results should also be correct.

```
lh x3,0(x11)
lh x4,0(x12)
addi x11, 2
mac x3,x4,x3
addi x12, 2
BRANCH_LOOP
```


## EX - Add the dot product instruction (optional)

Since our program only operates on `short` operands but the processor datapath
is 32-bit wide, all `short` values are held as sign-extended `word`
values.

We will now define a new type in the compiler header called `v2short`. This type
is represented by `word`s (so 32 bits) and we will use it to contain 2 operands
of type `short` (16 bits each). In this way, we can pack 2 operands in 1 register
without wasting 16 bits for the sign extension.

This technique is called packed-SIMD (single instruction multiple data) and is
common in embedded systems with DSP extensions.

The processor with packed-SIMD extensions will load 2 `word`s instead of 2
`short` values, and will perform a dot product instruction (basically 2 `mac`
operations). This needs only half of the loop iteration as the processors loads
2 operands and performs 2 `mac`s per iteration.

To do so, open the compiler header (`tzscale_chess.h`) and define our new
v2short type:

```
class v2short        property(vector short[2]);
```

In `chess_properties`, we need to specify that we want to represent this class with 32-bit operands, so w32.

```
representation v2short : w32;
```

Also, after the class definition of v2short, define the cast from the int type
to the v2short as nil (as they are the same type).

```
class v2short {
    v2short(int);
};
promotion v2short(int) = nil;
```

The final assembler that we want will look like:

```
lw x3,0(x11)
lw x4,0(x12)
addi x11, 4
sdotp x3,x4,x3
addi x12, 4
BRANCH_LOOP
```

As you can see, now the loads are the `word` variants, and their addresses are
incremented by 4 instead of 2 and the `mac` is replaced by the `sdotp` (sum of
dot-products) instruction that performs the following operation:

```
s = s + a[15:0]*b[15:0] + a[31:16]*b[31:16]
```

The compiler will also need the variant where s is equal to 0 (the `mul` variant
between 2 v2short), which is a simple dot-product `dotp`. Thus you have to
implement both.

Use
```
010 0010  src2  src1  000 dest  011 0011
```

and

```
010 0011  src2  src1  000 dest  011 0011
```

for the `dotp` and `sdotp` instructions, extend the `funct7_muldiv` field and
map the new instruction to the `mac_rrr` operation defined before. Define the
PDG behavior and extend the compiler to add the rules for doing dot products
(`dotp`) and the sum of the dot product (`sdotp`) (you can override the operator `*` for
the `dotp` variant).

Modify the `dotproduct.c` application to use the new `v2short` type.

You can simply declare a pointer, `v2short* vec_ptr` and assign it to `my_array`
like:

```
vshort *vec_ptr = (v2short *)&my_array[0];
```

Adapt the `dotproduct` function as well.

After running the new program on your enhanced processor, make sure you are
receiving the same result as before. Note the number of cycles and have a look
at the assembly.

You should see that this addition benefits the performance quite a lot, now the
the program only needs 54 cycles to complete.
