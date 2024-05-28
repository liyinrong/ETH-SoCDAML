/*
-- Regression parameters.
--
-- Copyright (c) 2014-2016 Synopsys, Inc. This Synopsys processor model 
-- captures an ASIP Designer Design Technique. The model and all associated 
-- documentation are proprietary to Synopsys, Inc. and may only be used 
-- pursuant to the terms and conditions of a written license agreement with 
-- Synopsys, Inc.  All other use, reproduction, modification, or distribution 
-- of the Synopsys processor model or the associated  documentation is 
-- strictly prohibited. 
*/


// helper macros
#ifdef __chess__
#define ASIP_NATIVE(ASIP,NATIVE) ASIP
#else
#define ASIP_NATIVE(ASIP,NATIVE) NATIVE
#endif

#ifdef __chess__
#include "limits.h" // defines __ENDIANNESS
#else
//#include "endian.h"
//#define __ENDIANNESS __BYTE_ORDER
// endian.h only exists on Linux
// But x86_64 is little endian:
#define	__LITTLE_ENDIAN	1234
#define	__BIG_ENDIAN	4321
#define __ENDIANNESS    __LITTLE_ENDIAN
#endif

// regression parameters for tmicro (a 16-bit core)

// Available types
#define HAS_CHAR
#define HAS_SHORT
#define HAS_INT
#define HAS_LONG
//#define HAS_LONG_LONG

// program memory name
#define PROGRAM_MEMORY  PM

// integers type parameters (natural size of the ASIP; typically int).
#define INT_        int
#define INT_X0AAA   0x0aaa
#define INT_X8000   0x8000 /*SINT_MIN*/
#define INT_X7FFF   0x7fff /*SINT_MAX*/
#define INT_XFFFF   0xffff /*UINT_MAX*/
#define INT_X1000   0x1000
#define INT_XCDEF   0xCDEF
#define INT_X3210   0x3210
#define INT_NBIT    16
#define INT_MAXSH   15

#ifdef __chess__
#define INT_SE(a)   (a)
#define INT_ZE(a)   (a)
#else
/* NATIVE CODE ONLY: zero/sign extend function if native and asip type are not exactly match */
#define INT_ZE(a)   (((int)(a))&0xffff) 
#define INT_SE(a)   ((((int)(a))<<16)>>16)
#endif

// "double int" type parameters (twice the natual size of the ASIP; typically long or long long).
#define DINT_        long
#define DINT_SSUFFIX  L
#define DINT_USUFFIX UL
#define DINT_X0AAA   0x0aaaaaaa
#define DINT_X8000   0x80000000 /*SLNG_MIN*/
#define DINT_X7FFF   0x7fffffff /*SLNG_MAX*/
#define DINT_XFFFF   0xffffffff /*ULNG_MAX*/
#define DINT_X1000   0x10000000
#define DINT_NBIT    32
#define DINT_MAXSH   31
#ifdef __chess__
#define DINT_SE(a)   (a)
#define DINT_ZE(a)   (a)
#else
/* NATIVE CODE ONLY: zero/sign extend function if native and asip type are not exactly match */
#define DINT_ZE(a)   ((unsigned)(a)) /* if -m64 then ((a)&0xffffffff) */
#define DINT_SE(a)   ((int)(a))      /* if -m64 then (((a)<<32)>>32)  */
#endif

// char type parameters
#ifdef HAS_CHAR
#define CHAR_NBIT   INT_NBIT
#define CHAR_ZE(a)  INT_ZE(a)
#define CHAR_SE(a)  INT_SE(a)
#define CHAR_X8000  0x8000 /*SCHAR_MIN*/
#define CHAR_X7FFF  0x7fff /*SCHAR_MAX*/
#define CHAR_XFFFF  0xffff /*UCHAR_MAX*/

#if (CHAR_NBIT<=8)
    #define CHAR_TST_T char
#else
    #define CHAR_TST_T int
#endif

#endif

// short type parameters
#ifdef HAS_SHORT
#define SHRT_NBIT   INT_NBIT
#define SHRT_ZE(a)  INT_ZE(a)
#define SHRT_SE(a)  INT_SE(a)
#define SHRT_X8000  0x8000 /*SSHRT_MIN*/
#define SHRT_X7FFF  0x7fff /*SSHRT_MAX*/
#define SHRT_XFFFF  0xffff /*USHRT_MAX*/
#endif

// long type parameters ("double precision" size of the ASIP; typically long or long long).
#define LNG_        long
#define LNG_X0AAA   0x0aaaaaaa
#define LNG_X8000   0x80000000 /*SLNG_MIN*/
#define LNG_X7FFF   0x7fffffff /*SLNG_MAX*/
#define LNG_XFFFF   0xffffffff /*ULNG_MAX*/
#define LNG_X1000   0x10000000
#define LNG_NBIT    32
#define LNG_MAXSH   31
#ifdef __chess__
#define LNG_SE(a)   (a)
#define LNG_ZE(a)   (a)
#else
/* NATIVE CODE ONLY: zero/sign extend function if native and asip type are not exactly match */
#define LNG_ZE(a)   ((unsigned)(a)) /* if -m64 then ((a)&0xffffffff) */
#define LNG_SE(a)   ((int)(a))      /* if -m64 then (((a)<<32)>>32)  */
#endif

// long long type parameters
#ifdef HAS_LONG_LONG
#define LLNG_NBIT   not available
#define LLNG_ZE(a)  not available
#define LLNG_SE(a)  not available
#define LLNG_X8000  not available /*SLLNG_MIN*/
#define LLNG_X7FFF  not available /*SLLNG_MAX*/
#define LLNG_XFFFF  not available /*ULLNG_MAX*/
#endif

#ifdef __chess__
inline assembly void init_regs() clobbers()  
// Avoid that uninitialized regs are spilled as this gives ISS vs. RTL diffs
{
    asm_begin
    asm_text
        mvib r0, 0
        mvib r1, 0
        mvib r2, 0
        mvib r3, 0
        mvib r4, 0
        mvib r5, 0
        mvib r6, 0
        mvib r7, 0
    asm_end
}
#else
inline void init_regs() { }
#endif
