
// File generated by pdg version O-2018.09#f5599cac26#190121, Tue May 28 10:41:30 2024
// Copyright 2014-2018 Synopsys, Inc. All rights reserved.
// pdg -P -B -Iisg +wisg -Iruntime/include -D__tct_patch__=300 -D__checkers__ tmicro

#include <cstdio>
#include <iostream>
#include <iomanip>
#include <map>
#include <set>
#include <string>
#include <sstream>
#include <fstream>
#include <cassert>

#include "tmicro_iss_types.h"

#ifdef PDG_INLINE_PRIMITIVES
#include "tmicro_inline_primitives.h"
#endif
using namespace tmicro_primitive;

std::string current_line;

#if (defined(_MSC_VER) && _MSC_VER < 1300)

std::ostream& operator<<(std::ostream& os, tct_long_long n)
{
    char buf[128];
    if (os.flags() & std::ios_base::hex) {
        sprintf(buf, "%I64x", n);
    }
    else if (os.flags() & std::ios_base::oct) {
        sprintf(buf, "%I64o", n);
    }
    else {
        sprintf(buf, "%I64d", n);
    }
    os << buf;
    return os;
}

std::ostream& operator<<(std::ostream& os, tct_ulong_long n)
{
    char buf[128];
    if (os.flags() & std::ios_base::hex) {
        sprintf(buf, "%I64x", n);
    }
    else if (os.flags() & std::ios_base::oct) {
        sprintf(buf, "%I64o", n);
    }
    else {
        sprintf(buf, "%I64d", n);
    }
    os << buf;
    return os;
}
std::istream& operator>>(std::istream& is, tct_long_long& n)
{
    n = 0;

    int ndg = 0;

    char c;
    is >> c;
    if (!is)
        return is;
    int neg = 0;
    if (c == '-') {
        neg = 1;
        is.get(c);
        if (!is)
            return is;
    }
    if (is.flags() & std::ios_base::hex) {
        int done = 0;
        while(is && !done) {
            switch(c) {
                case '0': n = n*16     ; ndg++; break;
                case '1': n = n*16 +  1; ndg++; break;
                case '2': n = n*16 +  2; ndg++; break;
                case '3': n = n*16 +  3; ndg++; break;
                case '4': n = n*16 +  4; ndg++; break;
                case '5': n = n*16 +  5; ndg++; break;
                case '6': n = n*16 +  6; ndg++; break;
                case '7': n = n*16 +  7; ndg++; break;
                case '8': n = n*16 +  8; ndg++; break;
                case '9': n = n*16 +  9; ndg++; break;
                case 'a':
                case 'A': n = n*16 + 10; ndg++; break;
                case 'b':
                case 'B': n = n*16 + 11; ndg++; break;
                case 'c':
                case 'C': n = n*16 + 12; ndg++; break;
                case 'd':
                case 'D': n = n*16 + 13; ndg++; break;
                case 'e':
                case 'E': n = n*16 + 14; ndg++; break;
                case 'f':
                case 'F': n = n*16 + 15; ndg++; break;
                case 'x':
                case 'X':
                    if (ndg == 1 && n == 0)
                        ndg = 0;
                    else
                        done = 1;
                    break;
                default:
                    done = 1;
            }
            if (done)
                is.putback(c);
            else
                is.get(c);
        }
        if (ndg > 0)
            is.clear(std::ios_base::goodbit);
        else
            is.clear(std::ios_base::badbit|is.rdstate());
        if (neg)
            n = -n;
    }
    else if (is.flags() & std::ios_base::oct) {
        int done = 0;
        while(is && !done) {
            switch(c) {
                case '0': n = n*8    ; ndg++; break;
                case '1': n = n*8 + 1; ndg++; break;
                case '2': n = n*8 + 2; ndg++; break;
                case '3': n = n*8 + 3; ndg++; break;
                case '4': n = n*8 + 4; ndg++; break;
                case '5': n = n*8 + 5; ndg++; break;
                case '6': n = n*8 + 6; ndg++; break;
                case '7': n = n*8 + 7; ndg++; break;
                default:
                    done = 1;
            }
            if (done)
                is.putback(c);
            else
                is.get(c);
        }
        if (ndg > 0)
            is.clear(std::ios_base::goodbit);
        else
            is.clear(std::ios_base::badbit|is.rdstate());
        if (neg)
            n = -n;
    }
    else { // dec
        int done = 0;
        while(is && !done) {
            switch(c) {
                case '0': n = n*10    ; ndg++; break;
                case '1': n = n*10 + 1; ndg++; break;
                case '2': n = n*10 + 2; ndg++; break;
                case '3': n = n*10 + 3; ndg++; break;
                case '4': n = n*10 + 4; ndg++; break;
                case '5': n = n*10 + 5; ndg++; break;
                case '6': n = n*10 + 6; ndg++; break;
                case '7': n = n*10 + 7; ndg++; break;
                case '8': n = n*10 + 8; ndg++; break;
                case '9': n = n*10 + 9; ndg++; break;
                default :
                    done = 1;
            }
            if (done)
                is.putback(c);
            else
                is.get(c);
        }
        if (ndg > 0)
            is.clear(std::ios_base::goodbit);
        else
            is.clear(std::ios_base::badbit|is.rdstate());
        if (neg)
            n = -n;
    }
    return is;
}

std::istream& operator>>(std::istream& is, tct_ulong_long& n)
{
    tct_long_long t;
    is >> t;
    if (is)
        n = t;
    return is;
}
#endif

typedef bool boolean;

int pdg_error_count = 0;
std::ostream* error_stream;

template <typename T>
void failure(const T& t1, const T& t2) {
    ++pdg_error_count;
    *error_stream << current_line << " ; expected " << t1 << ", found " << t2 << std::endl;
    std::cerr << current_line << " ; expected " << t1 << ", found " << t2 << std::endl;
}

template <typename T>
void read_from_stream(std::istream& is, T& result) {
    unsigned u;
    is >> u;
    result = u;
}
template <typename T>
void read_from_stream_ll(std::istream& is, T& result) {
    tct_ulong_long ull;
    is >> ull;
    result = ull;
}
static bool between(char l, char x, char h) {
    return l <= x && x <= h;
}

static unsigned digit2hex(char c) {
    if (between('0', c, '9')) {
        return c - '0';
    } else if (between('a', c, 'f')) {
        return c - 'a' + 10;
    } else if (between('A', c, 'F')) {
        return c - 'A' + 10;
    }
    return 0;
}

void read_from_stream_lla(std::istream& is, tct_ulong_long* result, const unsigned n) {
    const int octo_count = CHESS_LLAS(n);
    const int hex_digits = (n + 3) / 4;
    for (int i = 0; i < octo_count; ++i) {
        tct_ulong_long ull = 0;
        for (int j = 0; j < ((i == 0 && hex_digits % 16) ? hex_digits % 16 : 16); ++j) {
            ull <<= 4;
            char c;
            is >> c;
            ull += digit2hex(c);
        }
        result[octo_count - i - 1] = ull;
    }
}

void read_from_stream_lla(std::istream& is, tct_long_long* result, const unsigned n) {
    const int octo_count = CHESS_LLAS(n);
    const int hex_digits = (n + 3) / 4;
    for (int i = 0; i < octo_count; ++i) {
        tct_ulong_long ull = 0;
        for (int j = 0; j < ((i == 0 && hex_digits % 16) ? hex_digits % 16 : 16); ++j) {
            ull <<= 4;
            char c;
            is >> c;
            ull += digit2hex(c);
        }
        result[octo_count - i - 1] = ull;
    }
    if (n % 64) result[octo_count - 1] = CHESS_EXTENDLL(result[octo_count - 1], n % 64);
}

tct_ulong_long buf_ull[1024];
tct_ulong_long buf_ull2[1024];
tct_long_long buf_ll[1024];
tct_long_long buf_ll2[1024];

bool operator!=(tmicro_primitive::addr x1, tmicro_primitive::addr x2) {
    return toVBit(x1) != toVBit(x2);
}

bool operator!=(tmicro_primitive::iword x1, tmicro_primitive::iword x2) {
    return toVBit(x1) != toVBit(x2);
}

bool operator!=(tmicro_primitive::nint9 x1, tmicro_primitive::nint9 x2) {
    return toVBit(x1) != toVBit(x2);
}

bool operator!=(tmicro_primitive::sbyte x1, tmicro_primitive::sbyte x2) {
    return toVBit(x1) != toVBit(x2);
}

bool operator!=(tmicro_primitive::ubyte x1, tmicro_primitive::ubyte x2) {
    return toVBit(x1) != toVBit(x2);
}

bool operator!=(tmicro_primitive::uint1 x1, tmicro_primitive::uint1 x2) {
    return toVBit(x1) != toVBit(x2);
}

bool operator!=(tmicro_primitive::uint2 x1, tmicro_primitive::uint2 x2) {
    return toVBit(x1) != toVBit(x2);
}

bool operator!=(tmicro_primitive::uint3 x1, tmicro_primitive::uint3 x2) {
    return toVBit(x1) != toVBit(x2);
}

bool operator!=(tmicro_primitive::uint4 x1, tmicro_primitive::uint4 x2) {
    return toVBit(x1) != toVBit(x2);
}

bool operator!=(tmicro_primitive::word x1, tmicro_primitive::word x2) {
    return toVBit(x1) != toVBit(x2);
}

void test_word_add_word_word(std::istream& is) {
    tmicro_primitive::word result_expected;
    tmicro_primitive::word t0;
    tmicro_primitive::word t1;
    read_from_stream(is, t0);
    read_from_stream(is, t1);
    read_from_stream(is, result_expected);
    tmicro_primitive::word result = add(t0, t1);
    if (result != result_expected) { failure(result_expected, result); return; }
}

void test_word_add_word_word_uint1(std::istream& is) {
    tmicro_primitive::word result_expected;
    tmicro_primitive::word t0;
    tmicro_primitive::word t1;
    tmicro_primitive::uint1 t2;
    tmicro_primitive::uint1 t2_expected;
    read_from_stream(is, t0);
    read_from_stream(is, t1);
    read_from_stream(is, result_expected);
    read_from_stream(is, t2_expected);
    tmicro_primitive::word result = add(t0, t1, t2);
    if (result != result_expected) { failure(result_expected, result); return; }
    if (t2 != t2_expected) { failure(t2_expected, t2); return; }
}

void test_word_addc_word_word_uint1_uint1(std::istream& is) {
    tmicro_primitive::word result_expected;
    tmicro_primitive::word t0;
    tmicro_primitive::word t1;
    tmicro_primitive::uint1 t2;
    tmicro_primitive::uint1 t3;
    tmicro_primitive::uint1 t3_expected;
    read_from_stream(is, t0);
    read_from_stream(is, t1);
    read_from_stream(is, t2);
    read_from_stream(is, result_expected);
    read_from_stream(is, t3_expected);
    tmicro_primitive::word result = addc(t0, t1, t2, t3);
    if (result != result_expected) { failure(result_expected, result); return; }
    if (t3 != t3_expected) { failure(t3_expected, t3); return; }
}

void test_word_sub_word_word_uint1(std::istream& is) {
    tmicro_primitive::word result_expected;
    tmicro_primitive::word t0;
    tmicro_primitive::word t1;
    tmicro_primitive::uint1 t2;
    tmicro_primitive::uint1 t2_expected;
    read_from_stream(is, t0);
    read_from_stream(is, t1);
    read_from_stream(is, result_expected);
    read_from_stream(is, t2_expected);
    tmicro_primitive::word result = sub(t0, t1, t2);
    if (result != result_expected) { failure(result_expected, result); return; }
    if (t2 != t2_expected) { failure(t2_expected, t2); return; }
}

void test_word_subb_word_word_uint1_uint1(std::istream& is) {
    tmicro_primitive::word result_expected;
    tmicro_primitive::word t0;
    tmicro_primitive::word t1;
    tmicro_primitive::uint1 t2;
    tmicro_primitive::uint1 t3;
    tmicro_primitive::uint1 t3_expected;
    read_from_stream(is, t0);
    read_from_stream(is, t1);
    read_from_stream(is, t2);
    read_from_stream(is, result_expected);
    read_from_stream(is, t3_expected);
    tmicro_primitive::word result = subb(t0, t1, t2, t3);
    if (result != result_expected) { failure(result_expected, result); return; }
    if (t3 != t3_expected) { failure(t3_expected, t3); return; }
}

void test_word_andw_word_word(std::istream& is) {
    tmicro_primitive::word result_expected;
    tmicro_primitive::word t0;
    tmicro_primitive::word t1;
    read_from_stream(is, t0);
    read_from_stream(is, t1);
    read_from_stream(is, result_expected);
    tmicro_primitive::word result = andw(t0, t1);
    if (result != result_expected) { failure(result_expected, result); return; }
}

void test_word_orw_word_word(std::istream& is) {
    tmicro_primitive::word result_expected;
    tmicro_primitive::word t0;
    tmicro_primitive::word t1;
    read_from_stream(is, t0);
    read_from_stream(is, t1);
    read_from_stream(is, result_expected);
    tmicro_primitive::word result = orw(t0, t1);
    if (result != result_expected) { failure(result_expected, result); return; }
}

void test_word_xorw_word_word(std::istream& is) {
    tmicro_primitive::word result_expected;
    tmicro_primitive::word t0;
    tmicro_primitive::word t1;
    read_from_stream(is, t0);
    read_from_stream(is, t1);
    read_from_stream(is, result_expected);
    tmicro_primitive::word result = xorw(t0, t1);
    if (result != result_expected) { failure(result_expected, result); return; }
}

void test_word_minw_word_word(std::istream& is) {
    tmicro_primitive::word result_expected;
    tmicro_primitive::word t0;
    tmicro_primitive::word t1;
    read_from_stream(is, t0);
    read_from_stream(is, t1);
    read_from_stream(is, result_expected);
    tmicro_primitive::word result = minw(t0, t1);
    if (result != result_expected) { failure(result_expected, result); return; }
}

void test_word_maxw_word_word(std::istream& is) {
    tmicro_primitive::word result_expected;
    tmicro_primitive::word t0;
    tmicro_primitive::word t1;
    read_from_stream(is, t0);
    read_from_stream(is, t1);
    read_from_stream(is, result_expected);
    tmicro_primitive::word result = maxw(t0, t1);
    if (result != result_expected) { failure(result_expected, result); return; }
}

void test_word_select_bool_word_word(std::istream& is) {
    tmicro_primitive::word result_expected;
    bool t0;
    tmicro_primitive::word t1;
    tmicro_primitive::word t2;
    read_from_stream(is, t0);
    read_from_stream(is, t1);
    read_from_stream(is, t2);
    read_from_stream(is, result_expected);
    tmicro_primitive::word result = select(t0, t1, t2);
    if (result != result_expected) { failure(result_expected, result); return; }
}

void test_word_ext_abs_word(std::istream& is) {
    tmicro_primitive::word result_expected;
    tmicro_primitive::word t0;
    read_from_stream(is, t0);
    read_from_stream(is, result_expected);
    tmicro_primitive::word result = ext_abs(t0);
    if (result != result_expected) { failure(result_expected, result); return; }
}

void test_bool_lts_word_word(std::istream& is) {
    bool result_expected;
    tmicro_primitive::word t0;
    tmicro_primitive::word t1;
    read_from_stream(is, t0);
    read_from_stream(is, t1);
    read_from_stream(is, result_expected);
    bool result = lts(t0, t1);
    if (result != result_expected) { failure(result_expected, result); return; }
}

void test_bool_ltu_word_word(std::istream& is) {
    bool result_expected;
    tmicro_primitive::word t0;
    tmicro_primitive::word t1;
    read_from_stream(is, t0);
    read_from_stream(is, t1);
    read_from_stream(is, result_expected);
    bool result = ltu(t0, t1);
    if (result != result_expected) { failure(result_expected, result); return; }
}

void test_bool_les_word_word(std::istream& is) {
    bool result_expected;
    tmicro_primitive::word t0;
    tmicro_primitive::word t1;
    read_from_stream(is, t0);
    read_from_stream(is, t1);
    read_from_stream(is, result_expected);
    bool result = les(t0, t1);
    if (result != result_expected) { failure(result_expected, result); return; }
}

void test_bool_leu_word_word(std::istream& is) {
    bool result_expected;
    tmicro_primitive::word t0;
    tmicro_primitive::word t1;
    read_from_stream(is, t0);
    read_from_stream(is, t1);
    read_from_stream(is, result_expected);
    bool result = leu(t0, t1);
    if (result != result_expected) { failure(result_expected, result); return; }
}

void test_bool_gts_word_word(std::istream& is) {
    bool result_expected;
    tmicro_primitive::word t0;
    tmicro_primitive::word t1;
    read_from_stream(is, t0);
    read_from_stream(is, t1);
    read_from_stream(is, result_expected);
    bool result = gts(t0, t1);
    if (result != result_expected) { failure(result_expected, result); return; }
}

void test_bool_gtu_word_word(std::istream& is) {
    bool result_expected;
    tmicro_primitive::word t0;
    tmicro_primitive::word t1;
    read_from_stream(is, t0);
    read_from_stream(is, t1);
    read_from_stream(is, result_expected);
    bool result = gtu(t0, t1);
    if (result != result_expected) { failure(result_expected, result); return; }
}

void test_bool_ges_word_word(std::istream& is) {
    bool result_expected;
    tmicro_primitive::word t0;
    tmicro_primitive::word t1;
    read_from_stream(is, t0);
    read_from_stream(is, t1);
    read_from_stream(is, result_expected);
    bool result = ges(t0, t1);
    if (result != result_expected) { failure(result_expected, result); return; }
}

void test_bool_geu_word_word(std::istream& is) {
    bool result_expected;
    tmicro_primitive::word t0;
    tmicro_primitive::word t1;
    read_from_stream(is, t0);
    read_from_stream(is, t1);
    read_from_stream(is, result_expected);
    bool result = geu(t0, t1);
    if (result != result_expected) { failure(result_expected, result); return; }
}

void test_bool_eq_word_word(std::istream& is) {
    bool result_expected;
    tmicro_primitive::word t0;
    tmicro_primitive::word t1;
    read_from_stream(is, t0);
    read_from_stream(is, t1);
    read_from_stream(is, result_expected);
    bool result = eq(t0, t1);
    if (result != result_expected) { failure(result_expected, result); return; }
}

void test_bool_ne_word_word(std::istream& is) {
    bool result_expected;
    tmicro_primitive::word t0;
    tmicro_primitive::word t1;
    read_from_stream(is, t0);
    read_from_stream(is, t1);
    read_from_stream(is, result_expected);
    bool result = ne(t0, t1);
    if (result != result_expected) { failure(result_expected, result); return; }
}

void test_word_complement_word(std::istream& is) {
    tmicro_primitive::word result_expected;
    tmicro_primitive::word t0;
    read_from_stream(is, t0);
    read_from_stream(is, result_expected);
    tmicro_primitive::word result = complement(t0);
    if (result != result_expected) { failure(result_expected, result); return; }
}

void test_word_extend_sign_word(std::istream& is) {
    tmicro_primitive::word result_expected;
    tmicro_primitive::word t0;
    read_from_stream(is, t0);
    read_from_stream(is, result_expected);
    tmicro_primitive::word result = extend_sign(t0);
    if (result != result_expected) { failure(result_expected, result); return; }
}

void test_word_asr_word_word(std::istream& is) {
    tmicro_primitive::word result_expected;
    tmicro_primitive::word t0;
    tmicro_primitive::word t1;
    read_from_stream(is, t0);
    read_from_stream(is, t1);
    read_from_stream(is, result_expected);
    tmicro_primitive::word result = asr(t0, t1);
    if (result != result_expected) { failure(result_expected, result); return; }
}

void test_word_lsr_word_word(std::istream& is) {
    tmicro_primitive::word result_expected;
    tmicro_primitive::word t0;
    tmicro_primitive::word t1;
    read_from_stream(is, t0);
    read_from_stream(is, t1);
    read_from_stream(is, result_expected);
    tmicro_primitive::word result = lsr(t0, t1);
    if (result != result_expected) { failure(result_expected, result); return; }
}

void test_word_lsl_word_word(std::istream& is) {
    tmicro_primitive::word result_expected;
    tmicro_primitive::word t0;
    tmicro_primitive::word t1;
    read_from_stream(is, t0);
    read_from_stream(is, t1);
    read_from_stream(is, result_expected);
    tmicro_primitive::word result = lsl(t0, t1);
    if (result != result_expected) { failure(result_expected, result); return; }
}

void test_void_mulss_word_word_word_word(std::istream& is) {
    tmicro_primitive::word t0;
    tmicro_primitive::word t1;
    tmicro_primitive::word t2;
    tmicro_primitive::word t2_expected;
    tmicro_primitive::word t3;
    tmicro_primitive::word t3_expected;
    read_from_stream(is, t0);
    read_from_stream(is, t1);
    read_from_stream(is, t2_expected);
    read_from_stream(is, t3_expected);
    mulss(t0, t1, t2, t3);
    if (t2 != t2_expected) { failure(t2_expected, t2); return; }
    if (t3 != t3_expected) { failure(t3_expected, t3); return; }
}

void test_void_muluu_word_word_word_word(std::istream& is) {
    tmicro_primitive::word t0;
    tmicro_primitive::word t1;
    tmicro_primitive::word t2;
    tmicro_primitive::word t2_expected;
    tmicro_primitive::word t3;
    tmicro_primitive::word t3_expected;
    read_from_stream(is, t0);
    read_from_stream(is, t1);
    read_from_stream(is, t2_expected);
    read_from_stream(is, t3_expected);
    muluu(t0, t1, t2, t3);
    if (t2 != t2_expected) { failure(t2_expected, t2); return; }
    if (t3 != t3_expected) { failure(t3_expected, t3); return; }
}

void test_void_divstep_word_word_word_word_word(std::istream& is) {
    tmicro_primitive::word t0;
    tmicro_primitive::word t1;
    tmicro_primitive::word t2;
    tmicro_primitive::word t3;
    tmicro_primitive::word t3_expected;
    tmicro_primitive::word t4;
    tmicro_primitive::word t4_expected;
    read_from_stream(is, t0);
    read_from_stream(is, t1);
    read_from_stream(is, t2);
    read_from_stream(is, t3_expected);
    read_from_stream(is, t4_expected);
    divstep(t0, t1, t2, t3, t4);
    if (t3 != t3_expected) { failure(t3_expected, t3); return; }
    if (t4 != t4_expected) { failure(t4_expected, t4); return; }
}

void test_void_nop(std::istream& is) {
    nop();
}

void test_uint2_incr_uint2(std::istream& is) {
    tmicro_primitive::uint2 result_expected;
    tmicro_primitive::uint2 t0;
    read_from_stream(is, t0);
    read_from_stream(is, result_expected);
    tmicro_primitive::uint2 result = incr(t0);
    if (result != result_expected) { failure(result_expected, result); return; }
}

void test_uint2_decr_uint2(std::istream& is) {
    tmicro_primitive::uint2 result_expected;
    tmicro_primitive::uint2 t0;
    read_from_stream(is, t0);
    read_from_stream(is, result_expected);
    tmicro_primitive::uint2 result = decr(t0);
    if (result != result_expected) { failure(result_expected, result); return; }
}

void test_void_halt(std::istream& is) {
    halt();
}
typedef std::map<std::string, void(*)(std::istream&)> TestDrivers;
void register_drivers0(TestDrivers& test_drivers) {
    test_drivers["word_add_word_word"] = test_word_add_word_word;
    test_drivers["word_add_word_word_uint1"] = test_word_add_word_word_uint1;
    test_drivers["word_addc_word_word_uint1_uint1"] = test_word_addc_word_word_uint1_uint1;
    test_drivers["word_sub_word_word_uint1"] = test_word_sub_word_word_uint1;
    test_drivers["word_subb_word_word_uint1_uint1"] = test_word_subb_word_word_uint1_uint1;
    test_drivers["word_andw_word_word"] = test_word_andw_word_word;
    test_drivers["word_orw_word_word"] = test_word_orw_word_word;
    test_drivers["word_xorw_word_word"] = test_word_xorw_word_word;
    test_drivers["word_minw_word_word"] = test_word_minw_word_word;
    test_drivers["word_maxw_word_word"] = test_word_maxw_word_word;
    test_drivers["word_select_bool_word_word"] = test_word_select_bool_word_word;
    test_drivers["word_ext_abs_word"] = test_word_ext_abs_word;
    test_drivers["bool_lts_word_word"] = test_bool_lts_word_word;
    test_drivers["bool_ltu_word_word"] = test_bool_ltu_word_word;
    test_drivers["bool_les_word_word"] = test_bool_les_word_word;
    test_drivers["bool_leu_word_word"] = test_bool_leu_word_word;
    test_drivers["bool_gts_word_word"] = test_bool_gts_word_word;
    test_drivers["bool_gtu_word_word"] = test_bool_gtu_word_word;
    test_drivers["bool_ges_word_word"] = test_bool_ges_word_word;
    test_drivers["bool_geu_word_word"] = test_bool_geu_word_word;
    test_drivers["bool_eq_word_word"] = test_bool_eq_word_word;
    test_drivers["bool_ne_word_word"] = test_bool_ne_word_word;
    test_drivers["word_complement_word"] = test_word_complement_word;
    test_drivers["word_extend_sign_word"] = test_word_extend_sign_word;
    test_drivers["word_asr_word_word"] = test_word_asr_word_word;
    test_drivers["word_lsr_word_word"] = test_word_lsr_word_word;
    test_drivers["word_lsl_word_word"] = test_word_lsl_word_word;
    test_drivers["void_mulss_word_word_word_word"] = test_void_mulss_word_word_word_word;
    test_drivers["void_muluu_word_word_word_word"] = test_void_muluu_word_word_word_word;
    test_drivers["void_divstep_word_word_word_word_word"] = test_void_divstep_word_word_word_word_word;
    test_drivers["void_nop"] = test_void_nop;
    test_drivers["uint2_incr_uint2"] = test_uint2_incr_uint2;
    test_drivers["uint2_decr_uint2"] = test_uint2_decr_uint2;
    test_drivers["void_halt"] = test_void_halt;
}
int main() {
    std::set<std::string> unknown_primitives;
    TestDrivers test_drivers;
    register_drivers0(test_drivers);
    error_stream = new std::ofstream("tmicro_c_failures.txt");
    std::ifstream in_stream("tmicro_testcases.txt");
    assert(in_stream.good());
    std::string s;
    char buf[8192];
    while (!in_stream.eof()) {
        in_stream.getline(buf, 8192);
        if (!in_stream.gcount()) continue;
        current_line = buf;
        std::istringstream is(current_line);
        is.setf(std::ios::hex, std::ios::basefield);
        is >> s;
        if (test_drivers.find(s) != test_drivers.end()) {
            (test_drivers[s])(is);
        }
        else {
            if (unknown_primitives.insert(s).second) {
                std::cerr << "WARNING: skipping test cases for " << s << " (no C implementation)" << std::endl;
            }
        }
    }
    delete error_stream;
    return pdg_error_count;
}
