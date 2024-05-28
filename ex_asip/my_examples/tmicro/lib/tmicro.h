/*
-- File : tmicro.h
--
-- Contents : Processor header-file for the Tmicro core.
--
-- Copyright (c) 2014-2016 Synopsys, Inc. This Synopsys processor model
-- captures an ASIP Designer Design Technique. The model and all associated
-- documentation are proprietary to Synopsys, Inc. and may only be used
-- pursuant to the terms and conditions of a written license agreement with
-- Synopsys, Inc.  All other use, reproduction, modification, or distribution
-- of the Synopsys processor model or the associated  documentation is
-- strictly prohibited.
*/


#ifndef _tmicro_h
#define _tmicro_h

// declaration of primitive data types used in nML model

namespace tmicro_primitive
{

    class word  property( 16 bit signed);    // main data type
    class addr  property( 16 bit unsigned);  // type of address busses

    class nint9 property(  9 bit signed min=-256 max=-1);
    class sbyte property(  8 bit signed);
    class ubyte property(  8 bit unsigned);

    class uint1 property(  1 bit unsigned);
    class uint2 property(  2 bit unsigned);
    class uint3 property(  3 bit unsigned);
    class uint4 property(  4 bit unsigned);

    class iword property(16 bit unsigned); // type of instruction word

// declaration of primitive operations

    word add (word,word)               property(commutative);
    word add (word,word,uint1&)        property(commutative);
    word addc(word,word,uint1,uint1&)  property(commutative);
    word sub (word,word,uint1&);
    word subb(word,word,uint1,uint1&);
    word andw(word,word)               property(commutative);
    word orw (word,word)               property(commutative);
    word xorw(word,word)               property(commutative);

    word minw(word,word);
    word maxw(word,word);
    word select(bool,word,word);
    word ext_abs(word);

    bool lts(word,word);
    bool ltu(word,word);
    bool les(word,word);
    bool leu(word,word);
    bool gts(word,word);
    bool gtu(word,word);
    bool ges(word,word);
    bool geu(word,word);
    bool eq (word,word);
    bool ne (word,word);

    word complement(word);
    word extend_sign(word);

    word asr(word,word);
    word lsr(word,word);
    word lsl(word,word);

    void mulss(word,word,word&,word&);
    void muluu(word,word,word&,word&);
    void divstep(word,word,word,word&,word&);

    void  jump(sbyte)      property(relative jump);
    void  jump(addr)       property(absolute jump);
    addr  jti(addr)        property(absolute jti);
    void  jump(bool,sbyte) property(relative jump);
    void  jump(bool,addr)  property(absolute jump);
    void  ret(addr)        property(ret);
    addr  bsr(addr)        property(absolute call);
    void  hwdo(addr,addr)  property(absolute doloop);
#if !defined(__programmers_view__)
    uint2 incr(uint2);     // increment doloop level
#endif
    uint2 decr(uint2);     // decrement doloop level

#if defined(__go__)
    addr incr(addr);       // used in OCD addressing
#endif

    void rti(addr)         property(rti);
    void halt()            property(halt);

    void nop()             property(nop);

// class definitions for primitive data-types

    class word {
        word(uint1);
        word(nint9);
        word(sbyte);
        word(addr);
        word(iword); // needed form PM load
    };

    class addr {
        addr(word);
        addr(uint4);
        addr(int);   // needed for DO loop reduction
    };

    class iword {
        iword(word);
    };
}

#endif /* _tmicro_h */
