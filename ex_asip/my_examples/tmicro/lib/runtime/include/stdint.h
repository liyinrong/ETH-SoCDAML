/*
-- File: stdint.h
--
-- Contents: ISO C99 Standard, 7.18 Integer types <stdint.h>
--
-- Copyright (c) 2014-2016 Synopsys, Inc. This Synopsys processor model 
-- captures an ASIP Designer Design Technique. The model and all associated 
-- documentation are proprietary to Synopsys, Inc. and may only be used 
-- pursuant to the terms and conditions of a written license agreement with 
-- Synopsys, Inc.  All other use, reproduction, modification, or distribution 
-- of the Synopsys processor model or the associated  documentation is 
-- strictly prohibited. 
*/




#ifndef _STDINT_H
#define _STDINT_H

//#warning "THE _STDINT_H  FILE IS STILL INCORRECT" ??

// ISO C99: 7.18.1 Integer types

//  7.18.1.1 Exact-width integer types
// typedef signed char          int8_t;
typedef signed int              int16_t;
typedef signed long             int32_t;
#ifdef __clang__
typedef signed long long        int64_t;
#endif
// typedef unsigned char        uint8_t;
typedef unsigned int            uint16_t;
typedef unsigned long           uint32_t;
#ifdef __clang__
typedef unsigned long long      uint64_t;
#endif

//  7.18.1.2 Minimum-width integer types
typedef signed int              int_least8_t;
typedef signed int              int_least16_t;
typedef signed long             int_least32_t;
#ifdef __clang__
typedef signed long long        int_least64_t;
#endif
typedef unsigned int            uint_least8_t;
typedef unsigned int            uint_least16_t;
typedef unsigned long           uint_least32_t;
#ifdef __clang__
typedef unsigned long long      uint_least64_t;
#endif

//  7.18.1.3 Fastest minimum-width integer types
typedef signed int              int_fast8_t;
typedef signed int              int_fast16_t;
typedef signed long             int_fast32_t;
#ifdef __clang__
typedef signed long long        int_fast64_t;
#endif
typedef unsigned int            uint_fast8_t;
typedef unsigned int            uint_fast16_t;
typedef unsigned long           uint_fast32_t;
#ifdef __clang__
typedef unsigned long long      uint_fast64_t;
#endif

//  7.18.1.4 Integer types capable of holding object pointers
typedef signed int             intptr_t;
typedef unsigned int           uintptr_t;

//  7.18.1.5 Greatest-width integer types
typedef signed long             intmax_t;
typedef unsigned long           uintmax_t;

// ISO C99: 7.18.2 Limits of specified-width integer types

//  7.18.2.1 Limits of exact-width integer types
//#define INT8_MIN               (-128)
#define INT16_MIN              (-32767-1)
#define INT32_MIN              (-2147483647-1)
#ifdef __clang__
#define INT64_MIN              (-9223372036854775807LL-1)
#endif
//#define INT8_MAX               (127)
#define INT16_MAX              (32767)
#define INT32_MAX              (2147483647)
#ifdef __clang__
#define INT64_MAX              (9223372036854775807LL)
#endif
//#define UINT8_MAX              (255)
#define UINT16_MAX             (65535)
#define UINT32_MAX             (4294967295U)
#ifdef __clang__
#define UINT64_MAX             (18446744073709551615ULL)
#endif

//  7.18.2.2 Limits of minimum-width integer types
#define INT_LEAST8_MIN         (-32767-1)
#define INT_LEAST16_MIN         (-32767-1)
#define INT_LEAST32_MIN         (-2147483647-1)
#ifdef __clang__
#define INT_LEAST64_MIN         (-9223372036854775807LL-1)
#endif
#define INT_LEAST8_MAX         (32767)
#define INT_LEAST16_MAX         (32767)
#define INT_LEAST32_MAX         (2147483647)
#ifdef __clang__
#define INT_LEAST64_MAX         (9223372036854775807LL)
#endif
#define UINT_LEAST8_MAX        (65535)
#define UINT_LEAST16_MAX        (65535)
#define UINT_LEAST32_MAX        (4294967295U)
#ifdef __clang__
#define UINT_LEAST64_MAX        (18446744073709551615ULL)
#endif
                                
//  7.18.2.3 Limits of fastest minimum-width integer types
#define INT_FAST8_MIN         (-32767-1)
#define INT_FAST16_MIN         (-32767-1)
#define INT_FAST32_MIN          (-2147483647-1)
#ifdef __clang__
#define INT_FAST64_MIN          (-9223372036854775807LL-1)
#endif
#define INT_FAST8_MAX         (32767)
#define INT_FAST16_MAX         (32767)
#define INT_FAST32_MAX          (2147483647)
#ifdef __clang__
#define INT_FAST64_MAX          (9223372036854775807LL)
#endif
#define UINT_FAST8_MAX        (65535)
#define UINT_FAST16_MAX        (65535)
#define UINT_FAST32_MAX         (4294967295U)
#ifdef __clang__
#define UINT_FAST64_MAX         (18446744073709551615ULL)
#endif

//  7.18.2.4 Limits of integer types capable of holding object pointers
#define INTPTR_MIN         (-32767-1)
#define INTPTR_MAX         (32767)
#define UINTPTR_MAX         (65535)

//  7.18.2.5 Limits of greatest-width integer types
#define INTMAX_MIN              (-2147483647-1)
#define INTMAX_MAX              (2147483647)
#define UINTMAX_MAX             (4294967295U)

// ISO C99: 7.18.3 Limits of other integer types

#define PTRDIFF_MIN         (-32767-1)
#define PTRDIFF_MAX         (32767)

//#define SIG_ATOMIC_MIN          (-2147483647-1)
//#define SIG_ATOMIC_MAX          (2147483647)

#define SIZE_MAX                (4294967295U) //??

#define WCHAR_MIN               0
#define WCHAR_MAX               (255)

// ISO C99: 7.18.4 Macros for integer constants

//  7.18.4.1 Macros for minimum-width integer constants
#define INT8_C(c)      c
#define INT16_C(c)     c
#define INT32_C(c)     c ## L
#ifdef __clang__
#define INT64_C(c)     c ## LL
#endif
#define UINT8_C(c)     c ## U
#define UINT16_C(c)    c ## U
#define UINT32_C(c)    c ## UL
#ifdef __clang__
#define UINT64_C(c)    c ## ULL
#endif

//  7.18.4.2 Macros for greatest-width integer constants
#define INTMAX_C(c)   c ## L
#define UINTMAX_C(c)  c ## UL

#endif /* stdint.h */
