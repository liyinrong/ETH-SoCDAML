/*
-- File : tmicro.p
--
-- Contents : PDG description of primitive functions of Tmicro core.
--
-- Copyright (c) 2014-2016 Synopsys, Inc. This Synopsys processor model
-- captures an ASIP Designer Design Technique. The model and all associated
-- documentation are proprietary to Synopsys, Inc. and may only be used
-- pursuant to the terms and conditions of a written license agreement with
-- Synopsys, Inc.  All other use, reproduction, modification, or distribution
-- of the Synopsys processor model or the associated  documentation is
-- strictly prohibited.
*/


#ifndef IAISS
#include "tmicro_io.p"
#endif

word add (word a, word b) { return a + b; }

word add(word a, word b, uint1& co)
{
    int17_t aa = (uint16_t)a;
    int17_t bb = (uint16_t)b;
    int17_t rr = aa + bb;
    co = rr[16];
    return rr[15:0];
}

word addc(word a, word b, uint1 ci, uint1& co)
{
    int17_t aa = (uint16_t)a;
    int17_t bb = (uint16_t)b;
    int17_t rr = aa + bb + ci;
    co = rr[16];
    return rr[15:0];
}


word sub(word a, word b, uint1& co)
{
    int17_t aa = (uint16_t)a;
    int17_t bb = ~((uint16_t)b);
    int17_t rr = aa + bb + 1;
    co = rr[16];
    return rr[15:0];
}

word subb(word a, word b, uint1 ci, uint1& co)
{
    int17_t aa = (uint16_t)a;
    int17_t bb = ~((uint16_t)b);
    int17_t rr = aa + bb + ci;
    co = rr[16];
    return rr[15:0];
}

word andw(word a, word b) { return a & b; }
word orw (word a, word b) { return a | b; }
word xorw(word a, word b) { return a ^ b; }

word minw(word a, word b) { if (a < b) return a; else return b; }
word maxw(word a, word b) { if (a > b) return a; else return b; }
word select (bool c, word a, word b) { if (c) return a; else return b; }

word ext_abs (word a) {
    int16_t aa = (int16_t)a;
    if (aa < 0){
        aa = (int16_t)(~((uint16_t)a) + 1);
    }
    return aa;
}

bool lts(word a, word b) { if (a < b) return 1; else return 0; }
bool ltu(word a, word b) { if ((uint16_t)a < (uint16_t)b) return 1; else return 0; }
bool les(word a, word b) { if (a <= b) return 1; else return 0; }
bool leu(word a, word b) { if ((uint16_t)a <= (uint16_t)b) return 1; else return 0; }
bool gts(word a, word b) { if (a > b) return 1; else return 0; }
bool gtu(word a, word b) { if ((uint16_t)a > (uint16_t)b) return 1; else return 0; }
bool ges(word a, word b) { if (a >= b) return 1; else return 0; }
bool geu(word a, word b) { if ((uint16_t)a >= (uint16_t)b) return 1; else return 0; }
bool eq(word a, word b)  { if (a == b) return 1; else return 0; }
bool ne(word a, word b)  { if (a != b) return 1; else return 0; }

word complement(word a)   { return ~a; }
word extend_sign(word a)  { if (a < 0) return -1; else return 0; }

word asr(word a, word f) { return a >> f[3:0]; }
word lsr(word a, word f) { return (uint16_t)a >> f[3:0]; }
word lsl(word a, word f) { return (uint16_t)a << f[3:0]; }

void mulss(word a, word b, word& rl, word& rh)
{
    int32_t p = a * b;
    rl = p[15:0];
    rh = p[31:16];
}

void muluu(word a, word b, word& rl, word& rh)
{
    int32_t p = (uint16_t)a * (uint16_t)b;
    rl = p[15:0];
    rh = p[31:16];
}

void divstep(word a, word q, word m, word& new_q, word& new_m)
{
    uint32_t mq = m::q;
    mq = mq << 1;
    if ((uint16_t)mq[31:16] >= (uint16_t)a) {
        mq[31:16] -= a;
        mq[0] = 1;
    }
    new_q = mq[15:0];
    new_m = mq[31:16];
}

void nop() { }

#if defined(__go__)
addr incr(addr a) { return a + 1; }
#endif

uint2 incr(uint2 a)    { return a + 1; }
uint2 decr(uint2 a)    { return a - 1; }

void halt() { }
