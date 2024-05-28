/*
-- File : tmicro_long_div.c
--
-- Contents : Chess division functions for long and unsigned long.
--
-- Copyright (c) 2014-2016 Synopsys, Inc. This Synopsys processor model 
-- captures an ASIP Designer Design Technique. The model and all associated 
-- documentation are proprietary to Synopsys, Inc. and may only be used 
-- pursuant to the terms and conditions of a written license agreement with 
-- Synopsys, Inc.  All other use, reproduction, modification, or distribution 
-- of the Synopsys processor model or the associated  documentation is 
-- strictly prohibited. 
*/




//  32-bit integer division with rounding towards zero, using restoring method.
//
//  This implementation assumes that the unsigned->signed conversion wraps
//  properly, e.g. (signed long)0x80000000UL == LONG_MIN

inline unsigned long div_pos(unsigned long x, unsigned long d,
                             chess_output unsigned long& r)
//  unsigned division, 'x' divided by 'd' with remainder 'r'.    
{
    // MSB of 'd' is zero
    r = 0;
    int N = chess_bitsof(long);
    for (int i = 0; i < N; i++) {
        r = r << 1 | x >> N-1;
        x <<= 1;
        if (r >= d) {
            r = r - d;
            x |= 1;
        }
    }
    return x;
}

unsigned long div_called(unsigned long x, unsigned long d,
                         chess_output unsigned long& r)
{
    return div_pos(x,d,r);
}

long div_called(long x, long d, chess_output long& r)
//  signed division, 'x' divided by 'd' with remainder 'r'.
{
    unsigned long xu = x, du = d, ru;
    if (x < 0) xu = -xu;
    if (d < 0) du = -du;
    unsigned long qu = div_pos(xu,du,ru);
    r = ru;
    if (x < 0) r = -r;
    return ((x ^ d) < 0) ? -qu : qu;
}
