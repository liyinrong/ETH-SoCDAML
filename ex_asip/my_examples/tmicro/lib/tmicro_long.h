/*
-- File : tmicro_long.h
--
-- Contents : C builtin long types and operators for the Tmicro core.
--
-- Copyright (c) 2014-2016 Synopsys, Inc. This Synopsys processor model 
-- captures an ASIP Designer Design Technique. The model and all associated 
-- documentation are proprietary to Synopsys, Inc. and may only be used 
-- pursuant to the terms and conditions of a written license agreement with 
-- Synopsys, Inc.  All other use, reproduction, modification, or distribution 
-- of the Synopsys processor model or the associated  documentation is 
-- strictly prohibited. 
*/




#ifndef _tmicro_long_h
#define _tmicro_long_h

// dual int, representation of long type

namespace tmicro_primitive {
    struct dint property(keep_in_registers llvm_emulated) {
        unsigned lo;   // Tmicro is little endian hence LSBs first
        unsigned hi;
        dint(unsigned l, unsigned h) : lo(l), hi(h) { }
    };
}

// declaration of built-in long type representations

chess_properties {
    representation signed long     : dint;
    representation unsigned long   : dint;
}

// type conversions

promotion operator unsigned long(signed long) = nil;
promotion operator signed long(unsigned long) = nil;

promotion operator void*(signed long)   = undefined;
promotion operator void*(unsigned long) = undefined;
promotion operator signed long(void*)   = undefined;
promotion operator unsigned long(void*) = undefined;

namespace tmicro_primitive {
    promotion int extend_sign(int) = word extend_sign(word);
    
    inline dint to_dint_se(int i) property(dont_generate) { return dint(i,extend_sign(i)); }
    inline dint to_dint_ze(int i) property(dont_generate) { return dint(i,0); }

    inline int to_int(dint w) property(dont_generate) { return w.lo; }
}

promotion operator signed long(int)        = dint to_dint_se(int);
promotion operator signed long(unsigned)   = dint to_dint_ze(int);
promotion operator unsigned long(int)      = dint to_dint_se(int);
promotion operator unsigned long(unsigned) = dint to_dint_ze(int);

promotion operator int(signed long)        = int to_int(dint);
promotion operator int(unsigned long)      = int to_int(dint);
promotion operator unsigned(signed long)   = int to_int(dint);
promotion operator unsigned(unsigned long) = int to_int(dint);

// add and subtract

namespace tmicro_primitive {

    promotion unsigned add (unsigned,unsigned,uint1&)
        property(duplicate_at_using_opn2 addc)
                                     = word add (word,word,uint1&);
    promotion unsigned addc(unsigned,unsigned,uint1,uint1&)
        property(duplicate_at_using_opn2 adde)
                                     = word addc(word,word,uint1,uint1&);
    promotion unsigned sub (unsigned,unsigned,uint1&)
        property(duplicate_at_using_opn2 subc)
                                     = word sub (word,word,uint1&);
    promotion unsigned subb(unsigned,unsigned,uint1,uint1&)
        property(duplicate_at_using_opn2 sube)
                                     = word subb(word,word,uint1,uint1&);

    inline dint l_add(dint a, dint b) property(dont_generate) {
        dint r;
        uint1 carry, carry2;
        r.lo = add(a.lo, b.lo,carry);
        r.hi = addc(a.hi, b.hi,carry,carry2);
        return r;
    }
    
    inline dint l_sub(dint a, dint b) property(dont_generate) {
        dint r;
        uint1 borrow, borrow2;
        r.lo = sub(a.lo, b.lo,borrow);
        r.hi = subb(a.hi, b.hi,borrow,borrow2);
        return r;
    }

}

promotion signed long operator+(signed long,signed long)
                                          = dint l_add(dint,dint);
promotion signed long operator-(signed long,signed long) 
                                          = dint l_sub(dint,dint);

promotion unsigned long operator+(unsigned long,unsigned long) 
                                          = dint l_add(dint,dint);
promotion unsigned long operator-(unsigned long,unsigned long) 
                                          = dint l_sub(dint,dint);

// bitwise operators 

namespace tmicro_primitive {

    inline dint l_and(dint a, dint b) property(dont_generate) {
        return dint(a.lo & b.lo, a.hi & b.hi);
    }
    
    inline dint l_or(dint a, dint b) property(dont_generate) {
        return dint(a.lo | b.lo, a.hi | b.hi);
    }
    
    inline dint l_xor(dint a, dint b) property(dont_generate) {
        return dint(a.lo ^ b.lo, a.hi ^ b.hi);
    }
    
    inline dint l_complement(dint a) property(dont_generate) {
        return dint(~a.lo,~a.hi);
    }

}

promotion signed long operator&(signed long,signed long) 
                                          = dint l_and(dint,dint);
promotion signed long operator|(signed long,signed long) 
                                          = dint l_or (dint,dint);
promotion signed long operator^(signed long,signed long) 
                                          = dint l_xor(dint,dint);
promotion signed long operator~(signed long)       
                                          = dint l_complement(dint);

promotion unsigned long operator&(unsigned long,unsigned long) 
                                          = dint l_and(dint,dint);
promotion unsigned long operator|(unsigned long,unsigned long) 
                                          = dint l_or (dint,dint);
promotion unsigned long operator^(unsigned long,unsigned long) 
                                          = dint l_xor(dint,dint);
promotion unsigned long operator~(unsigned long)       
                                          = dint l_complement(dint);

// multiply operators

namespace tmicro_primitive {

    promotion void mulss(int,int,int&,int&)  property(commutative smul_lohi)
        = void mulss(word,word,word&,word&); 
    promotion void muluu(int,int,int&,int&)  property(commutative umul_lohi)
        = void muluu(word,word,word&,word&); 

    inline dint l_mul(dint a, dint b) property(dont_generate) {
        int x=0, y=0;
	// Strength reductions of parts of long
	if (!chess_manifest(a.lo==0) && !chess_manifest(b.lo==0))
	    muluu(a.lo,b.lo,x,y); 
        y += a.hi * b.lo;
        y += b.hi * a.lo;
        return dint(x,y);
    }

    inline dint di_mul(int a, int b) property(dont_generate)
    {
        int x, y;
        mulss(a,b,x,y);
        return dint(x,y);
    }
}

promotion   signed long operator*(  signed long,  signed long)
                                          = dint l_mul(dint,dint);
promotion unsigned long operator*(unsigned long,unsigned long)
                                          = dint l_mul(dint,dint);

promotion long lmul(int,int) property(dont_generate) = dint di_mul(int,int);

// compare operators

namespace tmicro_primitive {

    inline bool lts(dint a, dint b) property(dont_generate) {
        if ((signed)a.hi < (signed)b.hi)
	    return true;
        else
	    if (a.hi == b.hi)
	        return a.lo < b.lo;
	    else
	        return false;
    }

    inline bool les(dint a, dint b) property(dont_generate) {
        if ((signed)a.hi < (signed)b.hi)
	    return true;
        else
	    if (a.hi == b.hi)
	        return a.lo <= b.lo;
	    else
	        return false;
    }
    
    inline bool ltu(dint a, dint b) property(dont_generate) {
        if ((unsigned)a.hi < unsigned(b.hi))
	    return true;
        else
	    if (a.hi == b.hi)
	        return a.lo < b.lo;
	    else
	        return false;
    }

    inline bool leu(dint a, dint b) property(dont_generate) {
        if ((unsigned)a.hi < unsigned(b.hi))
	    return true;
        else
	    if (a.hi == b.hi)
	        return a.lo <= b.lo;
	    else
	        return false;
    }
    
    inline bool eq(dint a, dint b) property(dont_generate) {
        return a.hi == b.hi && a.lo == b.lo;
    }
    
    inline bool ne(dint a, dint b) property(dont_generate) {
        return a.hi != b.hi || a.lo != b.lo;
    }

}

promotion bool operator< (signed long a, signed long b) 
                                          = bool lts(dint,dint);
promotion bool operator<=(signed long a, signed long b) 
                                          = bool les(dint,dint);
promotion bool operator==(signed long a, signed long b) 
                                          = bool eq(dint,dint);
promotion bool operator!=(signed long a, signed long b)
                                          = bool ne(dint,dint);
inline bool operator> (signed long a, signed long b) { return b < a; }
inline bool operator>=(signed long a, signed long b) { return b <= a; }

promotion bool operator< (unsigned long a, unsigned long b)
                                          = bool ltu(dint,dint);
promotion bool operator<=(unsigned long a, unsigned long b)
                                          = bool leu(dint,dint);
promotion bool operator==(unsigned long a, unsigned long b) 
                                          = bool eq(dint,dint);
promotion bool operator!=(unsigned long a, unsigned long b) 
                                          = bool ne(dint,dint);
inline bool operator> (unsigned long a, unsigned long b) { return b < a; }
inline bool operator>=(unsigned long a, unsigned long b) { return b <= a; }

// shift operators

namespace tmicro_primitive {

    inline dint l_lsl(dint a, int f) property(dont_generate) {
        unsigned carries;
        dint r;
        if (chess_manifest(f == 1)) {
            return l_add(a, a);
        }
        if (f == 0) return a;
        if (f < 16) { 
            carries = a.lo >> (16 - f);
            r.lo = chess_dont_warn_range(a.lo << f);
            r.hi = chess_dont_warn_range(a.hi << f) | carries;
        }
        else {  // f >= 16
            carries = a.lo << (f - 16);
            r.lo = 0;
            r.hi = carries;
        }
        return r;
    }

    inline dint l_asr(dint a, int f) property(dont_generate) {
        unsigned carries;
        dint r;
        if (f == 0) return a;
        if (f < 16) { 
            carries = a.hi << (16 - f);
            r.lo = chess_dont_warn_range(a.lo >> f) | carries;
            r.hi = chess_dont_warn_range((signed)a.hi >> f);
        }
        else { // f >= 16
            carries = (signed)a.hi >> (f - 16);
            r.lo = carries;
            r.hi = extend_sign(r.lo);
        }
        return r;
    }

    inline dint l_lsr(dint a, int f) property(dont_generate) {
        unsigned carries;
        dint r;
        if (f == 0) return a;
        if (f < 16) { 
            carries = a.hi << (16 - f);
            r.lo = chess_dont_warn_range(a.lo >> f) | carries;
            r.hi = chess_dont_warn_range(a.hi >> f);
        }
        else { // f >= 16
            carries = a.hi >> (f - 16);
            r.lo = carries;
            r.hi = 0;
        }
        return r;
    }
}

promotion   signed long operator<<(  signed long,int) = dint l_lsl(dint,int);
promotion   signed long operator>>(  signed long,int) = dint l_asr(dint,int);
promotion unsigned long operator<<(unsigned long,int) = dint l_lsl(dint,int);
promotion unsigned long operator>>(unsigned long,int) = dint l_lsr(dint,int);

// signed divide and modulo

signed long div_called(signed long,
                       signed long,
                       chess_output signed long&) property(functional);

namespace tmicro_primitive {
    inline signed long div_remainder(signed long a,
                                     signed long b,
                                     signed long& r) property(functional
				     dont_generate) {
        return div_called(a,b,r);
    }
}

inline signed long operator/(signed long a, signed long b)
{
    signed long r;
    return tmicro_primitive::div_remainder(a,b,r);
}

inline signed long operator%(signed long a, signed long b)
{
    signed long r;
    tmicro_primitive::div_remainder(a,b,r);
    return r;
}

// unsigned divide and modulo

unsigned long div_called(unsigned long,
                         unsigned long,
                         chess_output unsigned long&) property(functional);

namespace tmicro_primitive {
    inline unsigned long div_remainder(unsigned long a,
                                       unsigned long b,
                                       unsigned long& r) property(functional
				       dont_generate) {
        return div_called(a,b,r);
    }
}

inline unsigned long operator/(unsigned long a, unsigned long b)
{
    unsigned long r;
    return tmicro_primitive::div_remainder(a,b,r);
}

inline unsigned long operator%(unsigned long a, unsigned long b)
{
    unsigned long r;
    tmicro_primitive::div_remainder(a,b,r);
    return r;
}

#endif /* _tmicro_long_h */
