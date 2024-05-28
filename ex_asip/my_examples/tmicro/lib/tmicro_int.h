/*
-- File : tmicro_int.h
--
-- Contents : Integer application layer for the Tmicro core.
--
-- Copyright (c) 2014-2016 Synopsys, Inc. This Synopsys processor model 
-- captures an ASIP Designer Design Technique. The model and all associated 
-- documentation are proprietary to Synopsys, Inc. and may only be used 
-- pursuant to the terms and conditions of a written license agreement with 
-- Synopsys, Inc.  All other use, reproduction, modification, or distribution 
-- of the Synopsys processor model or the associated  documentation is 
-- strictly prohibited. 
*/





#ifndef _tmicro_int_h
#define _tmicro_int_h


// declaration of built-in type representations

chess_properties {
    representation int, unsigned     : word;
    representation signed short      : int;
    representation unsigned short    : unsigned;

    representation char, signed char : int;
    representation unsigned char     : unsigned;

    representation void* : addr;

    representation float, double, long double : undefined;
}

namespace tmicro_primitive { promotion addr(int) = nil; }

// type conversions

promotion operator unsigned(int) = nil;
promotion operator int(unsigned) = nil;

// pointer conversions

promotion operator void* (int) = nil; 
promotion operator int (void*) = nil; 
promotion operator void* (unsigned) = nil; 
promotion operator unsigned (void*) = nil; 

// pointer operators :

promotion void* operator+(void*,int) = { word add(word,word,uint1&),
				         word add(word,word) };

promotion void* operator-(void*,int) = word sub(word,word,uint1&);

promotion int operator-(void*,void*) = word sub(word,word,uint1&);

// add, subtract and bitwise operators on ALU 

promotion int operator+(int,int) = { word add(word,word,uint1&),
			             word add(word,word) };
promotion int operator-(int,int) = word sub (word,word,uint1&);
promotion int operator&(int,int) = word andw(word,word);
promotion int operator|(int,int) = word orw (word,word);
promotion int operator^(int,int) = word xorw(word,word);
promotion int operator~(int)     = word complement(word);

promotion unsigned operator+(unsigned,unsigned) = {
                                         word add(word,word,uint1&),
                                         word add(word,word) };
promotion unsigned operator-(unsigned,unsigned) = word sub (word,word,uint1&);
promotion unsigned operator&(unsigned,unsigned) = word andw(word,word);
promotion unsigned operator|(unsigned,unsigned) = word orw (word,word);
promotion unsigned operator^(unsigned,unsigned) = word xorw(word,word);
promotion unsigned operator~(unsigned)          = word complement(word);

// multiply operators

namespace tmicro_primitive {
    inline word mul(word a, word b) { word x,y; mulss(a,b,x,y); return x; }
};

promotion      int operator*(int,int)           = word mul(word,word);
promotion unsigned operator*(unsigned,unsigned) = word mul(word,word);

// shift operators 

promotion      int operator<<(int,int)      = word lsl(word,word);
promotion      int operator>>(int,int)      = word asr(word,word);
promotion unsigned operator<<(unsigned,int) = word lsl(word,word);
promotion unsigned operator>>(unsigned,int) = word lsr(word,word);

// compare operators

promotion bool operator< (int,int) = bool lts(word,word);
promotion bool operator<=(int,int) = bool les(word,word);
promotion bool operator> (int,int) = bool gts(word,word);
promotion bool operator>=(int,int) = bool ges(word,word);
promotion bool operator==(int,int) = bool eq(word,word);
promotion bool operator!=(int,int) = bool ne(word,word);

promotion bool operator< (unsigned,unsigned) = bool ltu(word,word);
promotion bool operator<=(unsigned,unsigned) = bool leu(word,word);
promotion bool operator> (unsigned,unsigned) = bool gtu(word,word);
promotion bool operator>=(unsigned,unsigned) = bool geu(word,word);
promotion bool operator==(unsigned,unsigned) = bool eq(word,word);
promotion bool operator!=(unsigned,unsigned) = bool ne(word,word);

promotion bool operator< (void*,void*) = bool ltu(word,word);
promotion bool operator<=(void*,void*) = bool leu(word,word);
promotion bool operator> (void*,void*) = bool gtu(word,word);
promotion bool operator>=(void*,void*) = bool geu(word,word);
promotion bool operator==(void*,void*) = bool eq(word,word);
promotion bool operator!=(void*,void*) = bool ne(word,word);

// unsigned divide and modulo

promotion void divstep(unsigned, unsigned, unsigned, unsigned&, unsigned&)
        = void divstep(word,word,word,word&,word&);

inline unsigned div_remainder(unsigned a, unsigned b, unsigned& rem) 
    property(functional dont_generate)
{
    unsigned q = a;
    unsigned r = 0;
    for (int i = 0; i < 16; i++)
        divstep(b,q,r,q,r);
    rem = r;
    return q;
}

inline unsigned operator/(unsigned a, unsigned b) property(dont_generate)
{
    unsigned r;
    return div_remainder(a,b,r);
}

inline unsigned operator%(unsigned a, unsigned b) property(dont_generate)
{
    unsigned r;
    div_remainder(a,b,r);
    return r;
}

// signed divide and modulo

inline int operator/(int a, int b) property(dont_generate)
{
    unsigned abs_a = a < 0 ? -(unsigned)a : a;
    unsigned abs_b = b < 0 ? -(unsigned)b : b;
    unsigned q = abs_a / abs_b;
    return (a^b) < 0 ? -q : q;
}

inline int operator%(int a, int b) property(dont_generate)
{
    unsigned abs_a = a < 0 ? -(unsigned)a : a;
    unsigned abs_b = b < 0 ? -(unsigned)b : b;
    unsigned r = abs_a % abs_b;
    return a < 0 ? -r : r;
}

#endif /* _tmicro_int_h */
