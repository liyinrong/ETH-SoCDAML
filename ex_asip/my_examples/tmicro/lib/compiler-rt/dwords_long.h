/*
-- Copyright (c) 2016 Synopsys, Inc. This Synopsys software and all associated
-- documentation are proprietary to Synopsys, Inc. and may only be used
-- pursuant to the terms and conditions of a written license agreement with
-- Synopsys, Inc.  All other use, reproduction, modification, or distribution
-- of the Synopsys software or the associated documentation is strictly
-- prohibited.
*/

#ifndef _dwords_long_h
#define _dwords_long_h

#define IPD_CONFIGURED
#define IPD_CONFIGURED_SI
#define IPD_CONFIGURED_DI

typedef int si_int;
typedef unsigned int su_int;
typedef long di_int;
typedef unsigned long du_int;

#define __divdi3 __sdiv_i32
#define __udivmoddi4 __udivrem_i32

#endif
