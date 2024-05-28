/*
-- File : tzscale.h
--
-- Contents : Processor header-file for the tzscale processor.
--
-- Copyright (c) 2015-2016 Synopsys, Inc. This Synopsys processor model 
-- captures an ASIP Designer Design Technique. The model and all associated 
-- documentation are proprietary to Synopsys, Inc. and may only be used 
-- pursuant to the terms and conditions of a written license agreement with 
-- Synopsys, Inc.  All other use, reproduction, modification, or distribution 
-- of the Synopsys processor model or the associated  documentation is 
-- strictly prohibited. 
*/

#ifndef _tzscale_h
#define _tzscale_h

namespace tzscale_primitive {
    
// declaration of primitive data types 

    // main data types
    class w08     property( 8 bit signed);
    class w16     property(16 bit signed);
    class w32     property(32 bit signed);

    class addr    property(32 bit unsigned);
    class iword   property(32 bit unsigned);
    
    // types for immediates
    class uint1   property( 1 bit unsigned);
    class uint3   property( 3 bit unsigned);
    class uint4   property( 4 bit unsigned);
    class uint5   property( 5 bit unsigned);
    class uint5nz   property( 5 bit unsigned, min=1, max=31);
    class uint6_1_31 property ( 6 bit unsigned, min=1, max=31);
    class uint7s4 property( 7 bit unsigned, step=4);
    class uint8   property( 8 bit unsigned);
    class uint8s4  property( 8 bit unsigned, step=4);
    class uint10nz4 property(10 bit unsigned, min=4, step=4);
    class uint12  property(12 bit unsigned);
    class uint16  property(16 bit unsigned);

    class int3    property(3 bit signed);
    class int5    property( 5 bit signed);
    class int6n   property(6 bit signed, min=-32, max=-1);
    class int6p   property(6 bit signed, min=1, max=31);
    class int6    property( 6 bit signed);
    class int9s2   property( 9 bit signed, step =2);
    class int10ns16   property( 10 bit signed, min=-512, max = -4, step =16);
    class int10ps16   property( 10 bit signed, min=4, max = 496, step =16);
    class int12   property( 12 bit signed);
    class int12s2 property(12 bit signed, step=2);
    class int13s2 property(13 bit signed, step=2);
    class int16   property(16 bit signed);
    class int20   property(20 bit signed);
    class uint20p  property(20 bit unsigned); //right padded with zeros
    class int21s2 property(21 bit signed, step=2);
    class int26   property(26 bit signed);

    // types for IO interface 
    class v4uint1 property( vector uint1[4]);
    class v4uint8 property( vector uint8[4]);

// integer primitives 
    w32 add(w32,w32)                     property(commutative);
    w32 sub(w32,w32); 
    w32 band(w32,w32)                    property(commutative);
    w32 bor (w32,w32)                    property(commutative);
    w32 bxor(w32,w32)                    property(commutative);

    w32 mul(w32,w32)                     property(commutative);
    w32 mulh(w32,w32)                    property(commutative);
    w32 mulhsu(w32,w32);
    w32 mulhu(w32,w32)                   property(commutative);
    w32 mac(w32,w32, w32);
    w32 sdotp(w32 a, w32 b, w32 c);
    w32 dotp(w32 a, w32 b) property (commutative);
    w32 sll(w32,w32);
    w32 srl(w32,w32);
    w32 sra(w32,w32);

    w32 slt (w32,w32);
    w32 sltu(w32,w32);
    
    
    bool eq (w32,w32);
    bool ne (w32,w32);
    bool lt (w32,w32);
    bool ge(w32,w32);
    bool ltu (w32,w32);
    bool geu(w32,w32);
    
    w32 lui(uint20p) property(right_padding_12 promotion_conversion_alternate);

    w32 extend_sign(w08)  property(promotion_conversion_alternate); 
    w32 extend_zero(w08)  property(promotion_conversion_alternate);
    w32 extend_sign(w16)  property(promotion_conversion_alternate);
    w32 extend_zero(w16)  property(promotion_conversion_alternate);
    w08 extract_w08(w32)  property(promotion_conversion_alternate); 
    w16 extract_w16(w32)  property(promotion_conversion_alternate);  

// iterative division primitive

    w32 divs(w32 a, w32 b) property(multicycle_32);
    w32 rems(w32 a, w32 b) property(multicycle_32);
    
    w32 divu(w32 a, w32 b) property(multicycle_32);
    w32 remu(w32 a, w32 b) property(multicycle_32);

// control primitives 

    void br(bool,int21s2) property(relative jump);

    w32 jal(int21s2)      property(relative call);
    w32 jalr(w32)         property(absolute call);

    void j(int21s2)       property(relative jump programmers_view);
    void jr(w32)	  property(jump absolute ret programmers_view);

    void nop()            property(nop programmers_view);

    w32 zero_extend_08(w32)  property(programmers_view);
    w32 zero_extend_16(w32)  property(programmers_view); 

#if defined(__go__)
    addr incr1(addr); // OCD addr + 1 
    addr incr4(addr); // OCD addr + 4
#endif

// definition of primitive data types
    class uint5 {
        uint5(uint5nz); 
    };
    class w32 {
        w32(uint5);
        w32(int6);
        w32(int6p);
        w32(int6n);
        w32(uint6_1_31);
        w32(uint7s4);
        w32(uint8s4);
        w32(int10ns16);
        w32(int10ps16);
        w32(int12);
        w32(uint12);
        w32(uint10nz4);
        
    };
    
    class addr {
        addr(w32);
    };

    class int21s2 {
        int21s2(int13s2);
        int21s2(int12s2);
        int21s2(int9s2);
    };
}

#endif // _tzscale_h

