/*
-- File : tzscale_int.h
--
-- Contents : Integer application layer for the tzscale processor.
--
-- Copyright (c) 2015-2016 Synopsys, Inc. This Synopsys processor model 
-- captures an ASIP Designer Design Technique. The model and all associated 
-- documentation are proprietary to Synopsys, Inc. and may only be used 
-- pursuant to the terms and conditions of a written license agreement with 
-- Synopsys, Inc.  All other use, reproduction, modification, or distribution 
-- of the Synopsys processor model or the associated  documentation is 
-- strictly prohibited. 
*/




#ifndef _tzscale_int_h
#define _tzscale_int_h

// type conversions

promotion operator signed char(unsigned char)     = { w08 extract_w08(w32),
						      w32 extend_sign(w08) };
promotion operator signed char(signed short)      = { w08 extract_w08(w32) };
promotion operator signed char(unsigned short)    = { w08 extract_w08(w32) };
promotion operator signed char(int)	          = { w08 extract_w08(w32) };
promotion operator signed char(unsigned)          = { w08 extract_w08(w32) };
promotion operator unsigned char(signed char)     = { w32 zero_extend_08(w32),
                                                      w08 extract_w08(w32),
						      w32 extend_zero(w08) };
promotion operator unsigned char(signed short)    = { w32 zero_extend_08(w32),
                                                      w08 extract_w08(w32) };
promotion operator unsigned char(unsigned short)  = { w32 zero_extend_08(w32),
                                                      w08 extract_w08(w32) };
promotion operator unsigned char(int)	          = { w32 zero_extend_08(w32),
                                                      w08 extract_w08(w32) };
promotion operator unsigned char(unsigned)	  = { w32 zero_extend_08(w32),
                                                      w08 extract_w08(w32) };

promotion operator  signed short(signed char)     = nil; 
promotion operator  signed short(unsigned char)   = nil;
promotion operator  signed short(unsigned short)  = { w16 extract_w16(w32),
						      w32 extend_sign(w16) };
promotion operator  signed short(int)             = { w16 extract_w16(w32) };
promotion operator  signed short(unsigned)        = { w16 extract_w16(w32) };
promotion operator  unsigned short(signed char)   = { w16 extract_w16(w32) };
promotion operator  unsigned short(unsigned char) = nil;
promotion operator  unsigned short(signed short)  = { w16 extract_w16(w32),
						      w32 extend_zero(w16) };
promotion operator  unsigned short(int)           = { w16 extract_w16(w32) };
promotion operator  unsigned short(unsigned)      = { w16 extract_w16(w32) };

promotion operator  int(signed char)          = nil; 
promotion operator  int(unsigned char)        = nil; 
promotion operator  int(signed short)         = nil; 
promotion operator  int(unsigned short)       = nil; 
promotion operator  int(unsigned)             = nil;

promotion operator  unsigned(signed char)     = nil; 
promotion operator  unsigned(unsigned char)   = nil; 
promotion operator  unsigned(signed short)    = nil; 
promotion operator  unsigned(unsigned short)  = nil; 
promotion operator  unsigned(int)             = nil;

// pointer conversions

promotion operator void* (int)                = nil; 
promotion operator int (void*)                = nil; 
promotion operator void* (unsigned)           = nil; 
promotion operator unsigned (void*)           = nil; 

promotion operator void*(unsigned short)      = undefined;
promotion operator unsigned short(void*)      = undefined;
promotion operator void*(short)               = undefined;
promotion operator short(void*)               = undefined;
promotion operator void*(unsigned char)       = undefined;
promotion operator unsigned char(void*)       = undefined;
promotion operator void*(signed char)         = undefined;
promotion operator signed char(void*)         = undefined;

// pointer operators :

promotion void* operator+(void*,int)   = w32 add(w32,w32);
promotion void* operator-(void*,int)   = w32 sub(w32,w32);
promotion int   operator-(void*,void*) = w32 sub(w32,w32);

// add, subtract and bitwise operators on ALU 

promotion  int operator+(int,int) = w32 add(w32,w32) ;
promotion  int operator-(int,int) = w32 sub(w32,w32);
promotion  int operator&(int,int) = w32 band(w32,w32);
promotion  int operator|(int,int) = w32 bor (w32,w32);
promotion  int operator^(int,int) = w32 bxor(w32,w32);
inline int operator~(int a)  { return int(a) ^ -1; }

promotion  unsigned operator+(unsigned,unsigned) = w32 add(w32,w32);
promotion  unsigned operator-(unsigned,unsigned) = w32 sub(w32,w32);
promotion  unsigned operator&(unsigned,unsigned) = w32 band(w32,w32);
promotion  unsigned operator|(unsigned,unsigned) = w32 bor (w32,w32);
promotion  unsigned operator^(unsigned,unsigned) = w32 bxor(w32,w32);
inline unsigned operator~(unsigned a)  { return int(a) ^ -1; }


// shift operators 

promotion int operator<<(int,int) = w32 sll(w32,w32);
promotion int operator>>(int,int) = w32 sra(w32,w32);
promotion unsigned operator<<(unsigned,int) = w32 sll(w32,w32);
promotion unsigned operator>>(unsigned,int) = w32 srl(w32,w32);

// compare operators

promotion bool operator< (int,int) = bool lt(w32,w32);
promotion bool operator>=(int,int) = bool ge(w32,w32);
promotion bool operator==(int,int) = bool eq(w32,w32);
promotion bool operator!=(int,int) = bool ne(w32,w32);
inline bool operator>(int a, int b) { return b < a; }
inline bool operator<=(int a, int b) { return b >= a; }

promotion bool operator< (unsigned,unsigned) = bool ltu(w32,w32);
promotion bool operator>=(unsigned,unsigned) = bool geu(w32,w32);
promotion bool operator==(unsigned,unsigned) = bool eq(w32,w32);
promotion bool operator!=(unsigned,unsigned) = bool ne(w32,w32);
inline bool operator>(unsigned a, unsigned b) { return b < a; }
inline bool operator<=(unsigned a, unsigned b) { return b >= a; }


promotion bool operator< (void*,void*) = bool ltu(w32,w32);
promotion bool operator>=(void*,void*) = bool geu(w32,w32);
promotion bool operator==(void*,void*) = bool eq(w32,w32);
promotion bool operator!=(void*,void*) = bool ne(w32,w32);
inline bool operator>(void* a, void* b) { return b < a; }
inline bool operator<=(void* a, void* b) { return b >= a; }

//promotion operator int(bool) = nil; 

chess_properties {
    complements: bool eq(w32,w32), bool ne(w32,w32);
    complements: bool lt(w32,w32), bool ge(w32,w32);
    complements: bool ltu(w32,w32), bool geu(w32,w32);
} 


promotion int operator*(int,int)  = w32 mul(w32,w32);
promotion unsigned operator*(unsigned,unsigned)  = w32 mul(w32,w32);


// divide and modulo


promotion int operator/(int,int) = w32 divs(w32,w32);
promotion int operator%(int,int) = w32 rems(w32,w32);
            
promotion unsigned operator/(unsigned,unsigned) = w32 divu(w32,w32);
promotion unsigned operator%(unsigned,unsigned) = w32 remu(w32,w32);
            
#endif /* _tzscale_int_h */

