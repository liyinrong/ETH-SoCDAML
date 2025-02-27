/*
-- File : tzscale_const.h
--
-- Contents : Constant generation for the tzscale core.
--
-- Copyright (c) 2015-2016 Synopsys, Inc. This Synopsys processor model 
-- captures an ASIP Designer Design Technique. The model and all associated 
-- documentation are proprietary to Synopsys, Inc. and may only be used 
-- pursuant to the terms and conditions of a written license agreement with 
-- Synopsys, Inc.  All other use, reproduction, modification, or distribution 
-- of the Synopsys processor model or the associated  documentation is 
-- strictly prohibited. 
*/



#ifndef _tzscale_const_h
#define _tzscale_const_h


namespace tzscale_primitive {
    inline void chess_convert(int20p msb, uint12 lsb, w32& L) property(big_endian)
    {
        L = bor(lui(msb),lsb);
    }
};


chess_properties {
    convert_routing_const w32 : R;
}

#endif /* _tzscale_const_h */
