/*
-- File : tmicro_native.h
--
-- Contents :  support for native compilation
--
-- Copyright (c) 2014-2016 Synopsys, Inc. This Synopsys processor model 
-- captures an ASIP Designer Design Technique. The model and all associated 
-- documentation are proprietary to Synopsys, Inc. and may only be used 
-- pursuant to the terms and conditions of a written license agreement with 
-- Synopsys, Inc.  All other use, reproduction, modification, or distribution 
-- of the Synopsys processor model or the associated  documentation is 
-- strictly prohibited. 
*/




#ifndef _tmicro_native_h
#define _tmicro_native_h

#include "isg/tmicro_iss_types.h"

#include "isg/tmicro_chess_types.h"
#include "isg/tmicro_chess_opns.h"

inline long lmul(short a, short b)  { return (long)a * (long)b; }

#endif /* _tmicro_native_h */
