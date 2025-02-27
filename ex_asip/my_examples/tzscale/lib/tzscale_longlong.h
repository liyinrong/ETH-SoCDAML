/*
-- File : tzscale_longlong.h
--
-- Contents : Long long integer application layer for the tzscale processor.
--
-- Copyright (c) 2015-2016 Synopsys, Inc. This Synopsys processor model 
-- captures an ASIP Designer Design Technique. The model and all associated 
-- documentation are proprietary to Synopsys, Inc. and may only be used 
-- pursuant to the terms and conditions of a written license agreement with 
-- Synopsys, Inc.  All other use, reproduction, modification, or distribution 
-- of the Synopsys processor model or the associated  documentation is 
-- strictly prohibited. 
*/



#ifndef _tzscale_longlong_h
#define _tzscale_longlong_h

// dual int representation of long long 

namespace tzscale_primitive {
    struct dint property(keep_in_registers llvm_emulated) {
        unsigned low;   // tzscale is little endian hence MSBs last
        unsigned high;
        dint(unsigned l, unsigned h) : low(l),high(h) { }
    };
};

// declaration of built-in long type representations

chess_properties {
    representation signed long long    : dint;
    representation unsigned long long  : dint;
};

// type conversions

promotion operator unsigned long long(signed long long) = nil;
promotion operator signed long long(unsigned long long) = nil;

promotion operator void*(signed long long)   = undefined;
promotion operator void*(unsigned long long) = undefined;
promotion operator signed long long(void*)   = undefined;
promotion operator unsigned long long(void*) = undefined;

#define DG property(dont_generate)

namespace tzscale_primitive {
    inline dint to_dint_se(int i) DG { return dint(i,i>>31); } 
    inline dint to_dint_ze(int i) DG { return dint(i,0); }
    inline int  to_int(dint w)    DG  { return w.low; }
};


promotion operator signed long long(int)            = dint to_dint_se(int);
promotion operator signed long long(unsigned)       = dint to_dint_ze(int);
promotion operator unsigned long long(int)          = dint to_dint_se(int);
promotion operator unsigned long long(unsigned)     = dint to_dint_ze(int);

inline operator signed long long(signed char s)      { return (int)s; }
inline operator signed long long(unsigned char s)    { return (unsigned)s; }
inline operator signed long long(signed short s)     { return (int)s; }
inline operator signed long long(unsigned short s)   { return (unsigned)s; }

inline operator signed char(signed long long l)      { return chess_dont_warn_range((signed char)(int)l); }
inline operator unsigned char(signed long long l)    { return (int)l; }
inline operator signed short(signed long long l)     { return chess_dont_warn_range((signed short)(int)l); }
inline operator unsigned short(signed long long l)   { return (int)l; } 

promotion operator int(signed long long)              = int to_int(dint);
promotion operator int(unsigned long long )           = int to_int(dint);
promotion operator unsigned(signed long long)         = int to_int(dint);
promotion operator unsigned(unsigned long long )      = int to_int(dint);

inline operator unsigned long long(signed char s)    { return (int)s; }
inline operator unsigned long long(unsigned char s)  { return (unsigned)s; }
inline operator unsigned long long(signed short s)   { return (int)s; }
inline operator unsigned long long(unsigned short s) { return (unsigned)s; }

inline operator signed char(unsigned long long l)    { return chess_dont_warn_range((signed char)(unsigned)l); }
inline operator unsigned char(unsigned long long l)  { return (unsigned)l; }
inline operator signed short(unsigned long long l)   { return chess_dont_warn_range((signed short)(unsigned)l); }
inline operator unsigned short(unsigned long long l) { return (unsigned)l; } 


// add and subtract



namespace tzscale_primitive {
    
    promotion unsigned add(unsigned,unsigned) property(duplicate_at_using_opn2) 
                               = w32 add(w32,w32);
    promotion unsigned sub(unsigned,unsigned) property(duplicate_at_using_opn2) 
                               = w32 sub(w32,w32);

    inline dint l_add(dint a, dint b) DG {
	// precondtion: a!=0 && b != 0
        dint r;
        uint1 carry, carry2;
        if      (chess_manifest(a.low==0))  {
            r.low = b.low;
            r.high = a.high + b.high;
	}
        else if (chess_manifest(b.low==0))  {
            r.low = a.low;
            r.high = a.high + b.high;
	}
     // else if a.high==0 or b.high==0 
     //     there may be a carry from low to high, so no optimisation 
     //     is possible
	else {
            r.low = add(a.low, b.low);
            r.high = add(a.high, b.high);
            //here generate the carry using the fact that the result can also give info about the carry
            r.high = r.high + ( r.low < a.low );
	}
        return r;
    }

    inline dint l_sub(dint a, dint b) DG {
        dint r;
        uint1 borrow, borrow2;
        if (chess_manifest(b.low==0))  {
            r.low = a.low;
            r.high = a.high - b.high;
	}
	else {
            r.low = sub (a.low, b.low);
            r.high = sub(a.high, b.high);
            //here generate the borrow using the fact that the result can also give info about the borrow
            r.high = r.high - (a.low < b.low);
	}
        return r;
    }
};

promotion signed long long operator+(signed long long, signed long long)
          = dint l_add(dint,dint);
promotion signed long long operator-(signed long long, signed long long) 
          = dint l_sub(dint,dint);

promotion unsigned long long  operator+(unsigned long long, unsigned long long)
          = dint l_add(dint,dint);
promotion unsigned long long  operator-(unsigned long long, unsigned long long)
          = dint l_sub(dint,dint);

// bitwise operators 

namespace tzscale_primitive {
    inline dint l_and(dint a, dint b) DG { return dint( a.low&b.low , a.high&b.high); }
    inline dint l_or (dint a, dint b) DG { return dint( a.low|b.low , a.high|b.high); }
    inline dint l_xor(dint a, dint b) DG { return dint( a.low^b.low , a.high^b.high); }
    inline dint l_complement(dint a)  DG { return dint( ~a.low , ~a.high); }
};


promotion signed long long operator&(signed long long, signed long long)
          = dint l_and(dint,dint);
promotion signed long long operator|(signed long long, signed long long) 
          = dint l_or (dint,dint);
promotion signed long long operator^(signed long long, signed long long) 
          = dint l_xor(dint,dint);
promotion signed long long operator~(signed long long)       
          = dint l_complement(dint);

promotion unsigned long long  operator&(unsigned long long, unsigned long long)
          = dint l_and(dint,dint);
promotion unsigned long long  operator|(unsigned long long, unsigned long long)
          = dint l_or (dint,dint);
promotion unsigned long long  operator^(unsigned long long, unsigned long long)
          = dint l_xor(dint,dint);
promotion unsigned long long  operator~(unsigned long long)       
          = dint l_complement(dint);

namespace tzscale_primitive {
    promotion unsigned mulhu(unsigned,unsigned)
                         = w32 mulhu(w32,w32);
promotion unsigned mul(unsigned,unsigned)
                         = w32 mul(w32,w32);
    
    inline dint l_mul(dint a, dint b) DG {
        unsigned p1lo=0, p1hi=0;
        unsigned p2lo=0, p2hi=0;
        unsigned p3lo=0, p3hi=0;
	
        if (!chess_manifest(a.low==0 || b.low==0))  
            p1lo = mul(a.low,b.low);
            
        if (!chess_manifest(a.low==0 || b.low==0))  
            p1hi = mulhu(a.low,b.low);

        if (!chess_manifest(a.high==0 || b.low==0))  
            p2lo = mul(a.high,b.low);

        if (!chess_manifest(b.high==0 || a.low==0))  
            p3lo = mul(b.high,a.low);
	  
        return dint(p1lo ,p1hi+p2lo+p3lo);
    }
 
};

promotion signed long long operator*(signed long long,signed long long)
           = dint l_mul(dint,dint);
promotion unsigned long long operator*(unsigned long long,unsigned long long)
           = dint l_mul(dint,dint);


// compare operators

namespace tzscale_primitive {

    inline bool l_lts(dint a, dint b) DG {
        if ((signed)a.high < (signed)b.high)
            return true;
        else
            if (a.high == b.high)
                return a.low < b.low;
            else
                return false;
    }

    inline bool l_les(dint a, dint b) DG {
        if ((signed)a.high < (signed)b.high)
            return true;
        else
            if (a.high == b.high)
                return a.low <= b.low;
            else
                return false;
    }

    inline bool l_ltu(dint a, dint b) DG {
        if ((unsigned)a.high < (unsigned)b.high)
            return true;
        else
            if (a.high == b.high)
                return a.low < b.low;
            else
                return false;
    }

    inline bool l_leu(dint a, dint b) DG {
        if ((unsigned)a.high < (unsigned)b.high)
            return true;
        else
            if (a.high == b.high)
                return a.low <= b.low;
            else
                return false;
    }

    inline bool l_eq(dint a, dint b) DG { return a.high == b.high && a.low == b.low; }

    inline bool l_ne(dint a, dint b) DG { return a.high != b.high || a.low != b.low; }
 
};


promotion bool operator< (signed long long a, signed long long b)
               = bool l_lts(dint,dint);
promotion bool operator<=(signed long long a, signed long long b) 
               = bool l_les(dint,dint);
inline bool operator> (signed long long a, signed long long b)
               { return b < a; }
inline bool operator>=(signed long long a, signed long long b) 
               { return b <= a; }
promotion bool operator==(signed long long a, signed long long b) 
               = bool l_eq(dint,dint);
promotion bool operator!=(signed long long a, signed long long b) 
               = bool l_ne(dint,dint);

promotion bool operator< (unsigned long long a, unsigned long long b) 
               = bool l_ltu(dint,dint);
promotion bool operator<=(unsigned long long a, unsigned long long b) 
               = bool l_leu(dint,dint);
inline bool operator> (unsigned long long a, unsigned long long b)
               { return b < a; }
inline bool operator>=(unsigned long long a, unsigned long long b)
               { return b <= a; }
promotion bool operator==(unsigned long long a, unsigned long long b) 
               = bool l_eq(dint,dint);
promotion bool operator!=(unsigned long long a, unsigned long long b) 
               = bool l_ne(dint,dint);

// shift operators

namespace tzscale_primitive {
    inline dint l_lsl(dint a, int f)  DG
    {
        unsigned carries;
        dint r;
        if (f == 0) return a;
        if (f < 32) { 
            carries = a.low >> (32 - f);
            r.low = chess_dont_warn_range(a.low << f);
            r.high = chess_dont_warn_range(a.high << f) | carries;
        }
        else {  // f >= 32
            carries = a.low << (f - 32);
            r.low = 0;
            r.high = carries;
        }
        return r;
    }

    inline dint l_asr(dint a, int f)  DG
    {
        unsigned carries;
        dint r;
        if (f == 0) return a;
        if (f < 32) { 
            carries = a.high << (32 - f);
            r.low = chess_dont_warn_range(a.low >> f) | carries;
            r.high = chess_dont_warn_range((signed)a.high >> f);
        }
        else { // f >= 32
            carries = (signed)a.high >> (f - 32);
            r.low = carries;
            r.high = (signed)carries>>31;
        }
        return r;
    }

    inline dint l_lsr(dint a, int f)  DG
    {
        unsigned carries;
        dint r;
        if (f == 0) return a;
        if (f < 32) { 
            carries = a.high << (32 - f);
            r.low = chess_dont_warn_range(a.low >> f) | carries;
            r.high = chess_dont_warn_range(a.high >> f);
        }
        else { // f >= 32
            carries = a.high >> (f - 32);
            r.low = carries;
            r.high = 0;
        }
        return r;
    }
}


promotion signed long long operator<<(signed long long,int)
          = dint l_lsl(dint,int);
promotion signed long long operator>>(signed long long,int) 
          = dint l_asr(dint,int);
promotion unsigned long long  operator<<(unsigned long long,int) 
          = dint l_lsl(dint,int);
promotion unsigned long long  operator>>(unsigned long long,int) 
          = dint l_lsr(dint,int);

// signed divide and modulo

extern "C++"
signed long long div_called(signed long long,
                             signed long long,
                             chess_output signed long long&)
                             property(functional);

inline signed long long div_remainder(signed long long a,
                                       signed long long b,
                                       signed long long& r) property(functional)
{
    return div_called(a,b,r);
}

inline signed long long operator/(signed long long a, signed long long b)
{
    signed long long r;
    return div_remainder(a,b,r);
}

inline signed long long operator%(signed long long a, signed long long b)
{
    signed long long r;
    div_remainder(a,b,r);
    return r;
}

// unsigned divide and modulo

extern "C++"
unsigned long long div_called(unsigned long long,
                               unsigned long long,
                               chess_output unsigned long long&)
                               property(functional);

inline unsigned long long div_remainder(unsigned long long a,
                                         unsigned long long b,
                                         unsigned long long& r)
                                         property(functional)
{
    return div_called(a,b,r);
}

inline unsigned long long operator/(unsigned long long a, unsigned long long b)
{
    unsigned long long r;
    return div_remainder(a,b,r);
}

inline unsigned long long operator%(unsigned long long a, unsigned long long b)
{
    unsigned long long r;
    div_remainder(a,b,r);
    return r;
}


#undef DG 
#endif /* _tzscale_longlong_h */
