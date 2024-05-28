/*
-- File : tmicro_bitfield.h
--
-- Contents : Software bitfield extraction rules for the Tmicro core.
--
-- Copyright (c) 2014-2016 Synopsys, Inc. This Synopsys processor model 
-- captures an ASIP Designer Design Technique. The model and all associated 
-- documentation are proprietary to Synopsys, Inc. and may only be used 
-- pursuant to the terms and conditions of a written license agreement with 
-- Synopsys, Inc.  All other use, reproduction, modification, or distribution 
-- of the Synopsys processor model or the associated  documentation is 
-- strictly prohibited. 
*/




#ifndef _tmicro_bitfield_h
#define _tmicro_bitfield_h

//default chess_property { bitfield_underlying_type : int; }


inline signed int chess_bitfield_extract_signed(int W, int width, int lsb)
{
    signed int V = (unsigned)W << (chess_bitsof(int) - (width + lsb));
    return V >> (chess_bitsof(int) - width);
}

inline unsigned int chess_bitfield_extract_unsigned(int W, int width, int lsb)
{
    unsigned int V = (unsigned)W << (chess_bitsof(int) - (width + lsb));
    return V >> (chess_bitsof(int) - width);
}

inline int chess_bitfield_update(int W, int f, int width, int lsb)
{
    unsigned int ones = -1;
    unsigned int mask1 = (ones << (width + lsb)) | ~(ones << lsb);
    unsigned int mask2 = ~(ones << width);
    return W & mask1  |  ((f & mask2) << lsb);
}

#endif /* _tmicro_bitfield_h */
