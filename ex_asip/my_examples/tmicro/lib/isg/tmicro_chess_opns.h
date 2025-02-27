
// File generated by noodle version O-2018.09#f5599cac26#190121, Tue May 28 10:41:29 2024
// Copyright 2014-2018 Synopsys, Inc. All rights reserved.
// noodle -Pc -B -Iisg +wisg -Iruntime/include -D__tct_patch__=300 -D__chess__ -D__programmers_view__ tmicro

#ifdef __chess__
#error "generated native file not intended for compilation by chess"
#endif

#ifndef _tmicro_chess_opns_h
#define _tmicro_chess_opns_h

// Native equivalent of Chess promoted operations

#ifdef CHESS_NATIVE_NAMESPACE
namespace CHESS_NATIVE_NAMESPACE {
#endif

namespace tmicro_primitive{
    /*inline*/ word mul(word, word);
} //namespace tmicro_primitive
void divstep(unsigned, unsigned, unsigned, unsigned &, unsigned &);
namespace tmicro_primitive{
int extend_sign(int);
} //namespace tmicro_primitive
#if 0//!
namespace tmicro_primitive{
    /*inline*/ dint to_dint_se(int);
} //namespace tmicro_primitive
#endif//!
#if 0//!
namespace tmicro_primitive{
    /*inline*/ dint to_dint_ze(int);
} //namespace tmicro_primitive
#endif//!
#if 0//!
namespace tmicro_primitive{
    /*inline*/ int to_int(dint);
} //namespace tmicro_primitive
#endif//!
namespace tmicro_primitive{
unsigned add(unsigned, unsigned, uint1 &);
} //namespace tmicro_primitive
namespace tmicro_primitive{
unsigned addc(unsigned, unsigned, uint1, uint1 &);
} //namespace tmicro_primitive
namespace tmicro_primitive{
unsigned sub(unsigned, unsigned, uint1 &);
} //namespace tmicro_primitive
namespace tmicro_primitive{
unsigned subb(unsigned, unsigned, uint1, uint1 &);
} //namespace tmicro_primitive
#if 0//!
namespace tmicro_primitive{
    /*inline*/ dint l_add(dint, dint);
} //namespace tmicro_primitive
#endif//!
#if 0//!
namespace tmicro_primitive{
    /*inline*/ dint l_sub(dint, dint);
} //namespace tmicro_primitive
#endif//!
#if 0//!
namespace tmicro_primitive{
    /*inline*/ dint l_and(dint, dint);
} //namespace tmicro_primitive
#endif//!
#if 0//!
namespace tmicro_primitive{
    /*inline*/ dint l_or(dint, dint);
} //namespace tmicro_primitive
#endif//!
#if 0//!
namespace tmicro_primitive{
    /*inline*/ dint l_xor(dint, dint);
} //namespace tmicro_primitive
#endif//!
#if 0//!
namespace tmicro_primitive{
    /*inline*/ dint l_complement(dint);
} //namespace tmicro_primitive
#endif//!
namespace tmicro_primitive{
void mulss(int, int, int &, int &);
} //namespace tmicro_primitive
namespace tmicro_primitive{
void muluu(int, int, int &, int &);
} //namespace tmicro_primitive
#if 0//!
namespace tmicro_primitive{
    /*inline*/ dint l_mul(dint, dint);
} //namespace tmicro_primitive
#endif//!
#if 0//!
namespace tmicro_primitive{
    /*inline*/ dint di_mul(int, int);
} //namespace tmicro_primitive
#endif//!
//!long lmul(int, int);
#if 0//!
namespace tmicro_primitive{
    /*inline*/ bool lts(dint, dint);
} //namespace tmicro_primitive
#endif//!
#if 0//!
namespace tmicro_primitive{
    /*inline*/ bool les(dint, dint);
} //namespace tmicro_primitive
#endif//!
#if 0//!
namespace tmicro_primitive{
    /*inline*/ bool ltu(dint, dint);
} //namespace tmicro_primitive
#endif//!
#if 0//!
namespace tmicro_primitive{
    /*inline*/ bool leu(dint, dint);
} //namespace tmicro_primitive
#endif//!
#if 0//!
namespace tmicro_primitive{
    /*inline*/ bool eq(dint, dint);
} //namespace tmicro_primitive
#endif//!
#if 0//!
namespace tmicro_primitive{
    /*inline*/ bool ne(dint, dint);
} //namespace tmicro_primitive
#endif//!
#if 0//!
namespace tmicro_primitive{
    /*inline*/ dint l_lsl(dint, int);
} //namespace tmicro_primitive
#endif//!
#if 0//!
namespace tmicro_primitive{
    /*inline*/ dint l_asr(dint, int);
} //namespace tmicro_primitive
#endif//!
#if 0//!
namespace tmicro_primitive{
    /*inline*/ dint l_lsr(dint, int);
} //namespace tmicro_primitive
#endif//!
#if 0//!
namespace tmicro_primitive{
    /*inline*/ long div_remainder(long, long, long &);
} //namespace tmicro_primitive
#endif//!
#if 0//!
namespace tmicro_primitive{
    /*inline*/ unsigned long div_remainder(unsigned long, unsigned long, unsigned long &);
} //namespace tmicro_primitive
#endif//!
int min_(int, int);
int max_(int, int);
int select(bool, int, int);
unsigned select(bool, unsigned, unsigned);
int ext_abs_(int);


// do_generate[_native] inline functions

extern long div_called(long, long, chess_output long &);

extern unsigned long div_called(unsigned long, unsigned long, chess_output unsigned long &);


#ifdef CHESS_NATIVE_NAMESPACE
} //namespace CHESS_NATIVE_NAMESPACE
#endif

#endif /*_tmicro_chess_opns_h*/
