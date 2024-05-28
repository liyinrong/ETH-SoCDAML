/*
-- File : tmicro_rewrite.h
--
-- Contents : Rewrite rules for the Tmicro core.
--
-- Copyright (c) 2014-2016 Synopsys, Inc. This Synopsys processor model
-- captures an ASIP Designer Design Technique. The model and all associated
-- documentation are proprietary to Synopsys, Inc. and may only be used
-- pursuant to the terms and conditions of a written license agreement with
-- Synopsys, Inc.  All other use, reproduction, modification, or distribution
-- of the Synopsys processor model or the associated  documentation is
-- strictly prohibited.
*/




#ifndef _tmicro_rewrite_h
#define _tmicro_rewrite_h

promotion int min_(int,int) property(min smin) = word minw(word,word);
promotion int max_(int,int) property(max smax) = word maxw(word,word);
promotion int select(bool,int,int) property(select)
                                   = word select(bool,word,word);
promotion unsigned select(bool,unsigned,unsigned) property(select)
                                   = word select(bool,word,word);
promotion int ext_abs_(int)    = word ext_abs(word);

// minimum instruction

chess_rewrite int min_lt_rule(int a, int b) {
    return a < b ? a : b;
} -> {
    return min_(a,b);
}

chess_rewrite int min_le_rule(int a, int b) {
    return a <= b ? a : b;
} -> {
    return min_(a,b);
}

// maximum instruction

chess_rewrite int max_gt_rule(int a, int b) {
    return a > b ? a : b;
} -> {
    return max_(a,b);
}

chess_rewrite int max_ge_rule(int a, int b) {
    return a >= b ? a : b;
} -> {
    return max_(a,b);
}

// long multiply/accumulate

chess_rewrite long mul_rule(int a, int b) {
    return (long)a * (long)b;
} -> {
    return lmul(a,b);
}

// sign extension

chess_rewrite int xs_rule(int a) {
    return a >> 15;
} -> {
    return tmicro_primitive::extend_sign(a);
}

// abs rules


chess_rewrite int ext_abs_rule_ge(int a) {
    return a >= 0 ? a : -a;
} -> {
    return ext_abs_(a);
}

chess_rewrite int ext_abs_rule_gt(int a) {
    return a > 0 ? a : -a;
} -> {
    return ext_abs_(a);
}

chess_rewrite int ext_abs_rule_le(int a) {
    return a <= 0 ? -a : a;
} -> {
    return ext_abs_(a);
}

chess_rewrite int ext_abs_rule_lt(int a) {
    return a < 0 ? -a : a;
} -> {
    return ext_abs_(a);
}

#endif /* _tmicro_rewrite_h */
