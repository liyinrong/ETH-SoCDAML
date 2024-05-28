/*
-- File: limits.h
--
-- Contents: ISO C99 Standard, 7.10 Sizes of integer types <limits.h>
--
-- Copyright (c) 2014-2016 Synopsys, Inc. This Synopsys processor model 
-- captures an ASIP Designer Design Technique. The model and all associated 
-- documentation are proprietary to Synopsys, Inc. and may only be used 
-- pursuant to the terms and conditions of a written license agreement with 
-- Synopsys, Inc.  All other use, reproduction, modification, or distribution 
-- of the Synopsys processor model or the associated  documentation is 
-- strictly prohibited. 
*/




#ifndef _LIMITS_H
#define _LIMITS_H

#define CHAR_BIT        16

#define SCHAR_MIN       (-32767-1)
#define SCHAR_MAX       32767
#define UCHAR_MAX       65535

#define CHAR_MIN        SCHAR_MIN
#define CHAR_MAX        SCHAR_MAX

#define MB_LEN_MAX      1

#define SHRT_MIN        (-32767-1)
#define SHRT_MAX        32767
#define USHRT_MAX       65535

#define INT_MIN         (-32767-1)
#define INT_MAX         32767
#define UINT_MAX        65535U

#define LONG_MIN        (-2147483647-1)
#define LONG_MAX        2147483647
#define ULONG_MAX       4294967295U

// endianness
#define __LITTLE_ENDIAN 1234
#define __BIG_ENDIAN    4321
#define __PDP_ENDIAN    3412

#define __ENDIANNESS      __LITTLE_ENDIAN

#endif /* limits.h */

