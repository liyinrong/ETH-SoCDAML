
// File generated by noodle version O-2018.09#f5599cac26#190121, Tue May 28 10:41:29 2024
// Copyright 2014-2018 Synopsys, Inc. All rights reserved.
// noodle -Pc -B -Iisg +wisg -Iruntime/include -D__tct_patch__=300 -D__chess__ -D__programmers_view__ tmicro

// File: memory_PM.c
// Test memory PM pointer arithmetic stand-alone and with load/store

#ifndef N // arbitrary value, adapt at will
#define N 7
#endif

extern "C" {

//-- int                        // size=1 alignment=1

void pointer_p1___sint_PM(int chess_storage(PM)*& p) { ++p; }
void pointer_m1___sint_PM(int chess_storage(PM)*& p) { --p; }
void pointer_pN___sint_PM(int chess_storage(PM)*& p) { p += N; }
void pointer_mN___sint_PM(int chess_storage(PM)*& p) { p -= N; }
void pointer_pI___sint_PM(int chess_storage(PM)*& p, int i) { p += i; }
void pointer_mI___sint_PM(int chess_storage(PM)*& p, int i) { p -= i; }

int chess_storage(PM) global___sint_PM;
int chess_storage(PM) garray___sint_PM[N+1];

int load_global___sint_PM() { return global___sint_PM; }
int load_garray_pN___sint_PM() { return garray___sint_PM[N]; }
int load_garray_pI___sint_PM(int i) { return garray___sint_PM[i]; }

void store_global___sint_PM(int a) { global___sint_PM = a; }
void store_garray_pN___sint_PM(int a) { garray___sint_PM[N] = a; }
void store_garray_pI___sint_PM(int a, int i) { garray___sint_PM[i] = a; }


int load_indirect0___sint_PM(int chess_storage(PM)* p) { return *p; }
int load_indexedp1___sint_PM(int chess_storage(PM)* p) { return p[ 1]; }
int load_indexedm1___sint_PM(int chess_storage(PM)* p) { return p[-1]; }
int load_indexedpN___sint_PM(int chess_storage(PM)* p) { return p[ N]; }
int load_indexedmN___sint_PM(int chess_storage(PM)* p) { return p[-N]; }
int load_indexedpI___sint_PM(int chess_storage(PM)* p, int i) { return p[ i]; }
int load_indexedmI___sint_PM(int chess_storage(PM)* p, int i) { return p[-i]; }

int load_postmodp1___sint_PM(int chess_storage(PM)*& p) { return *p++; }
int load_postmodm1___sint_PM(int chess_storage(PM)*& p) { return *p--; }
int load_postmodpN___sint_PM(int chess_storage(PM)*& p) { int t = *p; p += N; return t; }
int load_postmodmN___sint_PM(int chess_storage(PM)*& p) { int t = *p; p -= N; return t; }
int load_postmodpI___sint_PM(int chess_storage(PM)*& p, int i) { int t = *p; p += i; return t; }
int load_postmodmI___sint_PM(int chess_storage(PM)*& p, int i) { int t = *p; p -= i; return t; }

int load_premod_p1___sint_PM(int chess_storage(PM)*& p) { return *++p; }
int load_premod_m1___sint_PM(int chess_storage(PM)*& p) { return *--p; }
int load_premod_pN___sint_PM(int chess_storage(PM)*& p) { p += N; return *p; }
int load_premod_mN___sint_PM(int chess_storage(PM)*& p) { p -= N; return *p; }
int load_premod_pI___sint_PM(int chess_storage(PM)*& p, int i) { p += i; return *p; }
int load_premod_mI___sint_PM(int chess_storage(PM)*& p, int i) { p -= i; return *p; }

void store_indirect0___sint_PM(int a, int chess_storage(PM)* p) { *p = a; }
void store_indexedp1___sint_PM(int a, int chess_storage(PM)* p) { p[ 1] = a; }
void store_indexedm1___sint_PM(int a, int chess_storage(PM)* p) { p[-1] = a; }
void store_indexedpN___sint_PM(int a, int chess_storage(PM)* p) { p[ N] = a; }
void store_indexedmN___sint_PM(int a, int chess_storage(PM)* p) { p[-N] = a; }
void store_indexedpI___sint_PM(int a, int chess_storage(PM)* p, int i) { p[ i] = a; }
void store_indexedmI___sint_PM(int a, int chess_storage(PM)* p, int i) { p[-i] = a; }

void store_postmodp1___sint_PM(int a, int chess_storage(PM)*& p) { *p++ = a; }
void store_postmodm1___sint_PM(int a, int chess_storage(PM)*& p) { *p-- = a; }
void store_postmodpN___sint_PM(int a, int chess_storage(PM)*& p) { *p = a; p += N; }
void store_postmodmN___sint_PM(int a, int chess_storage(PM)*& p) { *p = a; p -= N; }
void store_postmodpI___sint_PM(int a, int chess_storage(PM)*& p, int i) { *p = a; p += i; }
void store_postmodmI___sint_PM(int a, int chess_storage(PM)*& p, int i) { *p = a; p -= i; }

void store_premod_p1___sint_PM(int a, int chess_storage(PM)*& p) { *++p = a; }
void store_premod_m1___sint_PM(int a, int chess_storage(PM)*& p) { *--p = a; }
void store_premod_pN___sint_PM(int a, int chess_storage(PM)*& p) { p += N; *p = a; }
void store_premod_mN___sint_PM(int a, int chess_storage(PM)*& p) { p -= N; *p = a; }
void store_premod_pI___sint_PM(int a, int chess_storage(PM)*& p, int i) { p += i; *p = a; }
void store_premod_mI___sint_PM(int a, int chess_storage(PM)*& p, int i) { p -= i; *p = a; }

//-- unsigned                   // size=1 alignment=1

void pointer_p1___uint_PM(unsigned chess_storage(PM)*& p) { ++p; }
void pointer_m1___uint_PM(unsigned chess_storage(PM)*& p) { --p; }
void pointer_pN___uint_PM(unsigned chess_storage(PM)*& p) { p += N; }
void pointer_mN___uint_PM(unsigned chess_storage(PM)*& p) { p -= N; }
void pointer_pI___uint_PM(unsigned chess_storage(PM)*& p, int i) { p += i; }
void pointer_mI___uint_PM(unsigned chess_storage(PM)*& p, int i) { p -= i; }

unsigned chess_storage(PM) global___uint_PM;
unsigned chess_storage(PM) garray___uint_PM[N+1];

unsigned load_global___uint_PM() { return global___uint_PM; }
unsigned load_garray_pN___uint_PM() { return garray___uint_PM[N]; }
unsigned load_garray_pI___uint_PM(int i) { return garray___uint_PM[i]; }

void store_global___uint_PM(unsigned a) { global___uint_PM = a; }
void store_garray_pN___uint_PM(unsigned a) { garray___uint_PM[N] = a; }
void store_garray_pI___uint_PM(unsigned a, int i) { garray___uint_PM[i] = a; }


unsigned load_indirect0___uint_PM(unsigned chess_storage(PM)* p) { return *p; }
unsigned load_indexedp1___uint_PM(unsigned chess_storage(PM)* p) { return p[ 1]; }
unsigned load_indexedm1___uint_PM(unsigned chess_storage(PM)* p) { return p[-1]; }
unsigned load_indexedpN___uint_PM(unsigned chess_storage(PM)* p) { return p[ N]; }
unsigned load_indexedmN___uint_PM(unsigned chess_storage(PM)* p) { return p[-N]; }
unsigned load_indexedpI___uint_PM(unsigned chess_storage(PM)* p, int i) { return p[ i]; }
unsigned load_indexedmI___uint_PM(unsigned chess_storage(PM)* p, int i) { return p[-i]; }

unsigned load_postmodp1___uint_PM(unsigned chess_storage(PM)*& p) { return *p++; }
unsigned load_postmodm1___uint_PM(unsigned chess_storage(PM)*& p) { return *p--; }
unsigned load_postmodpN___uint_PM(unsigned chess_storage(PM)*& p) { unsigned t = *p; p += N; return t; }
unsigned load_postmodmN___uint_PM(unsigned chess_storage(PM)*& p) { unsigned t = *p; p -= N; return t; }
unsigned load_postmodpI___uint_PM(unsigned chess_storage(PM)*& p, int i) { unsigned t = *p; p += i; return t; }
unsigned load_postmodmI___uint_PM(unsigned chess_storage(PM)*& p, int i) { unsigned t = *p; p -= i; return t; }

unsigned load_premod_p1___uint_PM(unsigned chess_storage(PM)*& p) { return *++p; }
unsigned load_premod_m1___uint_PM(unsigned chess_storage(PM)*& p) { return *--p; }
unsigned load_premod_pN___uint_PM(unsigned chess_storage(PM)*& p) { p += N; return *p; }
unsigned load_premod_mN___uint_PM(unsigned chess_storage(PM)*& p) { p -= N; return *p; }
unsigned load_premod_pI___uint_PM(unsigned chess_storage(PM)*& p, int i) { p += i; return *p; }
unsigned load_premod_mI___uint_PM(unsigned chess_storage(PM)*& p, int i) { p -= i; return *p; }

void store_indirect0___uint_PM(unsigned a, unsigned chess_storage(PM)* p) { *p = a; }
void store_indexedp1___uint_PM(unsigned a, unsigned chess_storage(PM)* p) { p[ 1] = a; }
void store_indexedm1___uint_PM(unsigned a, unsigned chess_storage(PM)* p) { p[-1] = a; }
void store_indexedpN___uint_PM(unsigned a, unsigned chess_storage(PM)* p) { p[ N] = a; }
void store_indexedmN___uint_PM(unsigned a, unsigned chess_storage(PM)* p) { p[-N] = a; }
void store_indexedpI___uint_PM(unsigned a, unsigned chess_storage(PM)* p, int i) { p[ i] = a; }
void store_indexedmI___uint_PM(unsigned a, unsigned chess_storage(PM)* p, int i) { p[-i] = a; }

void store_postmodp1___uint_PM(unsigned a, unsigned chess_storage(PM)*& p) { *p++ = a; }
void store_postmodm1___uint_PM(unsigned a, unsigned chess_storage(PM)*& p) { *p-- = a; }
void store_postmodpN___uint_PM(unsigned a, unsigned chess_storage(PM)*& p) { *p = a; p += N; }
void store_postmodmN___uint_PM(unsigned a, unsigned chess_storage(PM)*& p) { *p = a; p -= N; }
void store_postmodpI___uint_PM(unsigned a, unsigned chess_storage(PM)*& p, int i) { *p = a; p += i; }
void store_postmodmI___uint_PM(unsigned a, unsigned chess_storage(PM)*& p, int i) { *p = a; p -= i; }

void store_premod_p1___uint_PM(unsigned a, unsigned chess_storage(PM)*& p) { *++p = a; }
void store_premod_m1___uint_PM(unsigned a, unsigned chess_storage(PM)*& p) { *--p = a; }
void store_premod_pN___uint_PM(unsigned a, unsigned chess_storage(PM)*& p) { p += N; *p = a; }
void store_premod_mN___uint_PM(unsigned a, unsigned chess_storage(PM)*& p) { p -= N; *p = a; }
void store_premod_pI___uint_PM(unsigned a, unsigned chess_storage(PM)*& p, int i) { p += i; *p = a; }
void store_premod_mI___uint_PM(unsigned a, unsigned chess_storage(PM)*& p, int i) { p -= i; *p = a; }

//-- long                       // size=2 alignment=1

void pointer_p1___slong_PM(long chess_storage(PM)*& p) { ++p; }
void pointer_m1___slong_PM(long chess_storage(PM)*& p) { --p; }
void pointer_pN___slong_PM(long chess_storage(PM)*& p) { p += N; }
void pointer_mN___slong_PM(long chess_storage(PM)*& p) { p -= N; }
void pointer_pI___slong_PM(long chess_storage(PM)*& p, int i) { p += i; }
void pointer_mI___slong_PM(long chess_storage(PM)*& p, int i) { p -= i; }

long chess_storage(PM) global___slong_PM;
long chess_storage(PM) garray___slong_PM[N+1];

long load_global___slong_PM() { return global___slong_PM; }
long load_garray_pN___slong_PM() { return garray___slong_PM[N]; }
long load_garray_pI___slong_PM(int i) { return garray___slong_PM[i]; }

void store_global___slong_PM(long a) { global___slong_PM = a; }
void store_garray_pN___slong_PM(long a) { garray___slong_PM[N] = a; }
void store_garray_pI___slong_PM(long a, int i) { garray___slong_PM[i] = a; }


long load_indirect0___slong_PM(long chess_storage(PM)* p) { return *p; }
long load_indexedp1___slong_PM(long chess_storage(PM)* p) { return p[ 1]; }
long load_indexedm1___slong_PM(long chess_storage(PM)* p) { return p[-1]; }
long load_indexedpN___slong_PM(long chess_storage(PM)* p) { return p[ N]; }
long load_indexedmN___slong_PM(long chess_storage(PM)* p) { return p[-N]; }
long load_indexedpI___slong_PM(long chess_storage(PM)* p, int i) { return p[ i]; }
long load_indexedmI___slong_PM(long chess_storage(PM)* p, int i) { return p[-i]; }

long load_postmodp1___slong_PM(long chess_storage(PM)*& p) { return *p++; }
long load_postmodm1___slong_PM(long chess_storage(PM)*& p) { return *p--; }
long load_postmodpN___slong_PM(long chess_storage(PM)*& p) { long t = *p; p += N; return t; }
long load_postmodmN___slong_PM(long chess_storage(PM)*& p) { long t = *p; p -= N; return t; }
long load_postmodpI___slong_PM(long chess_storage(PM)*& p, int i) { long t = *p; p += i; return t; }
long load_postmodmI___slong_PM(long chess_storage(PM)*& p, int i) { long t = *p; p -= i; return t; }

long load_premod_p1___slong_PM(long chess_storage(PM)*& p) { return *++p; }
long load_premod_m1___slong_PM(long chess_storage(PM)*& p) { return *--p; }
long load_premod_pN___slong_PM(long chess_storage(PM)*& p) { p += N; return *p; }
long load_premod_mN___slong_PM(long chess_storage(PM)*& p) { p -= N; return *p; }
long load_premod_pI___slong_PM(long chess_storage(PM)*& p, int i) { p += i; return *p; }
long load_premod_mI___slong_PM(long chess_storage(PM)*& p, int i) { p -= i; return *p; }

void store_indirect0___slong_PM(long a, long chess_storage(PM)* p) { *p = a; }
void store_indexedp1___slong_PM(long a, long chess_storage(PM)* p) { p[ 1] = a; }
void store_indexedm1___slong_PM(long a, long chess_storage(PM)* p) { p[-1] = a; }
void store_indexedpN___slong_PM(long a, long chess_storage(PM)* p) { p[ N] = a; }
void store_indexedmN___slong_PM(long a, long chess_storage(PM)* p) { p[-N] = a; }
void store_indexedpI___slong_PM(long a, long chess_storage(PM)* p, int i) { p[ i] = a; }
void store_indexedmI___slong_PM(long a, long chess_storage(PM)* p, int i) { p[-i] = a; }

void store_postmodp1___slong_PM(long a, long chess_storage(PM)*& p) { *p++ = a; }
void store_postmodm1___slong_PM(long a, long chess_storage(PM)*& p) { *p-- = a; }
void store_postmodpN___slong_PM(long a, long chess_storage(PM)*& p) { *p = a; p += N; }
void store_postmodmN___slong_PM(long a, long chess_storage(PM)*& p) { *p = a; p -= N; }
void store_postmodpI___slong_PM(long a, long chess_storage(PM)*& p, int i) { *p = a; p += i; }
void store_postmodmI___slong_PM(long a, long chess_storage(PM)*& p, int i) { *p = a; p -= i; }

void store_premod_p1___slong_PM(long a, long chess_storage(PM)*& p) { *++p = a; }
void store_premod_m1___slong_PM(long a, long chess_storage(PM)*& p) { *--p = a; }
void store_premod_pN___slong_PM(long a, long chess_storage(PM)*& p) { p += N; *p = a; }
void store_premod_mN___slong_PM(long a, long chess_storage(PM)*& p) { p -= N; *p = a; }
void store_premod_pI___slong_PM(long a, long chess_storage(PM)*& p, int i) { p += i; *p = a; }
void store_premod_mI___slong_PM(long a, long chess_storage(PM)*& p, int i) { p -= i; *p = a; }

//-- unsigned long              // size=2 alignment=1

void pointer_p1___ulong_PM(unsigned long chess_storage(PM)*& p) { ++p; }
void pointer_m1___ulong_PM(unsigned long chess_storage(PM)*& p) { --p; }
void pointer_pN___ulong_PM(unsigned long chess_storage(PM)*& p) { p += N; }
void pointer_mN___ulong_PM(unsigned long chess_storage(PM)*& p) { p -= N; }
void pointer_pI___ulong_PM(unsigned long chess_storage(PM)*& p, int i) { p += i; }
void pointer_mI___ulong_PM(unsigned long chess_storage(PM)*& p, int i) { p -= i; }

unsigned long chess_storage(PM) global___ulong_PM;
unsigned long chess_storage(PM) garray___ulong_PM[N+1];

unsigned long load_global___ulong_PM() { return global___ulong_PM; }
unsigned long load_garray_pN___ulong_PM() { return garray___ulong_PM[N]; }
unsigned long load_garray_pI___ulong_PM(int i) { return garray___ulong_PM[i]; }

void store_global___ulong_PM(unsigned long a) { global___ulong_PM = a; }
void store_garray_pN___ulong_PM(unsigned long a) { garray___ulong_PM[N] = a; }
void store_garray_pI___ulong_PM(unsigned long a, int i) { garray___ulong_PM[i] = a; }


unsigned long load_indirect0___ulong_PM(unsigned long chess_storage(PM)* p) { return *p; }
unsigned long load_indexedp1___ulong_PM(unsigned long chess_storage(PM)* p) { return p[ 1]; }
unsigned long load_indexedm1___ulong_PM(unsigned long chess_storage(PM)* p) { return p[-1]; }
unsigned long load_indexedpN___ulong_PM(unsigned long chess_storage(PM)* p) { return p[ N]; }
unsigned long load_indexedmN___ulong_PM(unsigned long chess_storage(PM)* p) { return p[-N]; }
unsigned long load_indexedpI___ulong_PM(unsigned long chess_storage(PM)* p, int i) { return p[ i]; }
unsigned long load_indexedmI___ulong_PM(unsigned long chess_storage(PM)* p, int i) { return p[-i]; }

unsigned long load_postmodp1___ulong_PM(unsigned long chess_storage(PM)*& p) { return *p++; }
unsigned long load_postmodm1___ulong_PM(unsigned long chess_storage(PM)*& p) { return *p--; }
unsigned long load_postmodpN___ulong_PM(unsigned long chess_storage(PM)*& p) { unsigned long t = *p; p += N; return t; }
unsigned long load_postmodmN___ulong_PM(unsigned long chess_storage(PM)*& p) { unsigned long t = *p; p -= N; return t; }
unsigned long load_postmodpI___ulong_PM(unsigned long chess_storage(PM)*& p, int i) { unsigned long t = *p; p += i; return t; }
unsigned long load_postmodmI___ulong_PM(unsigned long chess_storage(PM)*& p, int i) { unsigned long t = *p; p -= i; return t; }

unsigned long load_premod_p1___ulong_PM(unsigned long chess_storage(PM)*& p) { return *++p; }
unsigned long load_premod_m1___ulong_PM(unsigned long chess_storage(PM)*& p) { return *--p; }
unsigned long load_premod_pN___ulong_PM(unsigned long chess_storage(PM)*& p) { p += N; return *p; }
unsigned long load_premod_mN___ulong_PM(unsigned long chess_storage(PM)*& p) { p -= N; return *p; }
unsigned long load_premod_pI___ulong_PM(unsigned long chess_storage(PM)*& p, int i) { p += i; return *p; }
unsigned long load_premod_mI___ulong_PM(unsigned long chess_storage(PM)*& p, int i) { p -= i; return *p; }

void store_indirect0___ulong_PM(unsigned long a, unsigned long chess_storage(PM)* p) { *p = a; }
void store_indexedp1___ulong_PM(unsigned long a, unsigned long chess_storage(PM)* p) { p[ 1] = a; }
void store_indexedm1___ulong_PM(unsigned long a, unsigned long chess_storage(PM)* p) { p[-1] = a; }
void store_indexedpN___ulong_PM(unsigned long a, unsigned long chess_storage(PM)* p) { p[ N] = a; }
void store_indexedmN___ulong_PM(unsigned long a, unsigned long chess_storage(PM)* p) { p[-N] = a; }
void store_indexedpI___ulong_PM(unsigned long a, unsigned long chess_storage(PM)* p, int i) { p[ i] = a; }
void store_indexedmI___ulong_PM(unsigned long a, unsigned long chess_storage(PM)* p, int i) { p[-i] = a; }

void store_postmodp1___ulong_PM(unsigned long a, unsigned long chess_storage(PM)*& p) { *p++ = a; }
void store_postmodm1___ulong_PM(unsigned long a, unsigned long chess_storage(PM)*& p) { *p-- = a; }
void store_postmodpN___ulong_PM(unsigned long a, unsigned long chess_storage(PM)*& p) { *p = a; p += N; }
void store_postmodmN___ulong_PM(unsigned long a, unsigned long chess_storage(PM)*& p) { *p = a; p -= N; }
void store_postmodpI___ulong_PM(unsigned long a, unsigned long chess_storage(PM)*& p, int i) { *p = a; p += i; }
void store_postmodmI___ulong_PM(unsigned long a, unsigned long chess_storage(PM)*& p, int i) { *p = a; p -= i; }

void store_premod_p1___ulong_PM(unsigned long a, unsigned long chess_storage(PM)*& p) { *++p = a; }
void store_premod_m1___ulong_PM(unsigned long a, unsigned long chess_storage(PM)*& p) { *--p = a; }
void store_premod_pN___ulong_PM(unsigned long a, unsigned long chess_storage(PM)*& p) { p += N; *p = a; }
void store_premod_mN___ulong_PM(unsigned long a, unsigned long chess_storage(PM)*& p) { p -= N; *p = a; }
void store_premod_pI___ulong_PM(unsigned long a, unsigned long chess_storage(PM)*& p, int i) { p += i; *p = a; }
void store_premod_mI___ulong_PM(unsigned long a, unsigned long chess_storage(PM)*& p, int i) { p -= i; *p = a; }

//-- long long                  // size=4 alignment=1

void pointer_p1___slonglong_PM(long long chess_storage(PM)*& p) { ++p; }
void pointer_m1___slonglong_PM(long long chess_storage(PM)*& p) { --p; }
void pointer_pN___slonglong_PM(long long chess_storage(PM)*& p) { p += N; }
void pointer_mN___slonglong_PM(long long chess_storage(PM)*& p) { p -= N; }
void pointer_pI___slonglong_PM(long long chess_storage(PM)*& p, int i) { p += i; }
void pointer_mI___slonglong_PM(long long chess_storage(PM)*& p, int i) { p -= i; }

long long chess_storage(PM) global___slonglong_PM;
long long chess_storage(PM) garray___slonglong_PM[N+1];

long long load_global___slonglong_PM() { return global___slonglong_PM; }
long long load_garray_pN___slonglong_PM() { return garray___slonglong_PM[N]; }
long long load_garray_pI___slonglong_PM(int i) { return garray___slonglong_PM[i]; }

void store_global___slonglong_PM(long long a) { global___slonglong_PM = a; }
void store_garray_pN___slonglong_PM(long long a) { garray___slonglong_PM[N] = a; }
void store_garray_pI___slonglong_PM(long long a, int i) { garray___slonglong_PM[i] = a; }


long long load_indirect0___slonglong_PM(long long chess_storage(PM)* p) { return *p; }
long long load_indexedp1___slonglong_PM(long long chess_storage(PM)* p) { return p[ 1]; }
long long load_indexedm1___slonglong_PM(long long chess_storage(PM)* p) { return p[-1]; }
long long load_indexedpN___slonglong_PM(long long chess_storage(PM)* p) { return p[ N]; }
long long load_indexedmN___slonglong_PM(long long chess_storage(PM)* p) { return p[-N]; }
long long load_indexedpI___slonglong_PM(long long chess_storage(PM)* p, int i) { return p[ i]; }
long long load_indexedmI___slonglong_PM(long long chess_storage(PM)* p, int i) { return p[-i]; }

long long load_postmodp1___slonglong_PM(long long chess_storage(PM)*& p) { return *p++; }
long long load_postmodm1___slonglong_PM(long long chess_storage(PM)*& p) { return *p--; }
long long load_postmodpN___slonglong_PM(long long chess_storage(PM)*& p) { long long t = *p; p += N; return t; }
long long load_postmodmN___slonglong_PM(long long chess_storage(PM)*& p) { long long t = *p; p -= N; return t; }
long long load_postmodpI___slonglong_PM(long long chess_storage(PM)*& p, int i) { long long t = *p; p += i; return t; }
long long load_postmodmI___slonglong_PM(long long chess_storage(PM)*& p, int i) { long long t = *p; p -= i; return t; }

long long load_premod_p1___slonglong_PM(long long chess_storage(PM)*& p) { return *++p; }
long long load_premod_m1___slonglong_PM(long long chess_storage(PM)*& p) { return *--p; }
long long load_premod_pN___slonglong_PM(long long chess_storage(PM)*& p) { p += N; return *p; }
long long load_premod_mN___slonglong_PM(long long chess_storage(PM)*& p) { p -= N; return *p; }
long long load_premod_pI___slonglong_PM(long long chess_storage(PM)*& p, int i) { p += i; return *p; }
long long load_premod_mI___slonglong_PM(long long chess_storage(PM)*& p, int i) { p -= i; return *p; }

void store_indirect0___slonglong_PM(long long a, long long chess_storage(PM)* p) { *p = a; }
void store_indexedp1___slonglong_PM(long long a, long long chess_storage(PM)* p) { p[ 1] = a; }
void store_indexedm1___slonglong_PM(long long a, long long chess_storage(PM)* p) { p[-1] = a; }
void store_indexedpN___slonglong_PM(long long a, long long chess_storage(PM)* p) { p[ N] = a; }
void store_indexedmN___slonglong_PM(long long a, long long chess_storage(PM)* p) { p[-N] = a; }
void store_indexedpI___slonglong_PM(long long a, long long chess_storage(PM)* p, int i) { p[ i] = a; }
void store_indexedmI___slonglong_PM(long long a, long long chess_storage(PM)* p, int i) { p[-i] = a; }

void store_postmodp1___slonglong_PM(long long a, long long chess_storage(PM)*& p) { *p++ = a; }
void store_postmodm1___slonglong_PM(long long a, long long chess_storage(PM)*& p) { *p-- = a; }
void store_postmodpN___slonglong_PM(long long a, long long chess_storage(PM)*& p) { *p = a; p += N; }
void store_postmodmN___slonglong_PM(long long a, long long chess_storage(PM)*& p) { *p = a; p -= N; }
void store_postmodpI___slonglong_PM(long long a, long long chess_storage(PM)*& p, int i) { *p = a; p += i; }
void store_postmodmI___slonglong_PM(long long a, long long chess_storage(PM)*& p, int i) { *p = a; p -= i; }

void store_premod_p1___slonglong_PM(long long a, long long chess_storage(PM)*& p) { *++p = a; }
void store_premod_m1___slonglong_PM(long long a, long long chess_storage(PM)*& p) { *--p = a; }
void store_premod_pN___slonglong_PM(long long a, long long chess_storage(PM)*& p) { p += N; *p = a; }
void store_premod_mN___slonglong_PM(long long a, long long chess_storage(PM)*& p) { p -= N; *p = a; }
void store_premod_pI___slonglong_PM(long long a, long long chess_storage(PM)*& p, int i) { p += i; *p = a; }
void store_premod_mI___slonglong_PM(long long a, long long chess_storage(PM)*& p, int i) { p -= i; *p = a; }

//-- unsigned long long         // size=4 alignment=1

void pointer_p1___ulonglong_PM(unsigned long long chess_storage(PM)*& p) { ++p; }
void pointer_m1___ulonglong_PM(unsigned long long chess_storage(PM)*& p) { --p; }
void pointer_pN___ulonglong_PM(unsigned long long chess_storage(PM)*& p) { p += N; }
void pointer_mN___ulonglong_PM(unsigned long long chess_storage(PM)*& p) { p -= N; }
void pointer_pI___ulonglong_PM(unsigned long long chess_storage(PM)*& p, int i) { p += i; }
void pointer_mI___ulonglong_PM(unsigned long long chess_storage(PM)*& p, int i) { p -= i; }

unsigned long long chess_storage(PM) global___ulonglong_PM;
unsigned long long chess_storage(PM) garray___ulonglong_PM[N+1];

unsigned long long load_global___ulonglong_PM() { return global___ulonglong_PM; }
unsigned long long load_garray_pN___ulonglong_PM() { return garray___ulonglong_PM[N]; }
unsigned long long load_garray_pI___ulonglong_PM(int i) { return garray___ulonglong_PM[i]; }

void store_global___ulonglong_PM(unsigned long long a) { global___ulonglong_PM = a; }
void store_garray_pN___ulonglong_PM(unsigned long long a) { garray___ulonglong_PM[N] = a; }
void store_garray_pI___ulonglong_PM(unsigned long long a, int i) { garray___ulonglong_PM[i] = a; }


unsigned long long load_indirect0___ulonglong_PM(unsigned long long chess_storage(PM)* p) { return *p; }
unsigned long long load_indexedp1___ulonglong_PM(unsigned long long chess_storage(PM)* p) { return p[ 1]; }
unsigned long long load_indexedm1___ulonglong_PM(unsigned long long chess_storage(PM)* p) { return p[-1]; }
unsigned long long load_indexedpN___ulonglong_PM(unsigned long long chess_storage(PM)* p) { return p[ N]; }
unsigned long long load_indexedmN___ulonglong_PM(unsigned long long chess_storage(PM)* p) { return p[-N]; }
unsigned long long load_indexedpI___ulonglong_PM(unsigned long long chess_storage(PM)* p, int i) { return p[ i]; }
unsigned long long load_indexedmI___ulonglong_PM(unsigned long long chess_storage(PM)* p, int i) { return p[-i]; }

unsigned long long load_postmodp1___ulonglong_PM(unsigned long long chess_storage(PM)*& p) { return *p++; }
unsigned long long load_postmodm1___ulonglong_PM(unsigned long long chess_storage(PM)*& p) { return *p--; }
unsigned long long load_postmodpN___ulonglong_PM(unsigned long long chess_storage(PM)*& p) { unsigned long long t = *p; p += N; return t; }
unsigned long long load_postmodmN___ulonglong_PM(unsigned long long chess_storage(PM)*& p) { unsigned long long t = *p; p -= N; return t; }
unsigned long long load_postmodpI___ulonglong_PM(unsigned long long chess_storage(PM)*& p, int i) { unsigned long long t = *p; p += i; return t; }
unsigned long long load_postmodmI___ulonglong_PM(unsigned long long chess_storage(PM)*& p, int i) { unsigned long long t = *p; p -= i; return t; }

unsigned long long load_premod_p1___ulonglong_PM(unsigned long long chess_storage(PM)*& p) { return *++p; }
unsigned long long load_premod_m1___ulonglong_PM(unsigned long long chess_storage(PM)*& p) { return *--p; }
unsigned long long load_premod_pN___ulonglong_PM(unsigned long long chess_storage(PM)*& p) { p += N; return *p; }
unsigned long long load_premod_mN___ulonglong_PM(unsigned long long chess_storage(PM)*& p) { p -= N; return *p; }
unsigned long long load_premod_pI___ulonglong_PM(unsigned long long chess_storage(PM)*& p, int i) { p += i; return *p; }
unsigned long long load_premod_mI___ulonglong_PM(unsigned long long chess_storage(PM)*& p, int i) { p -= i; return *p; }

void store_indirect0___ulonglong_PM(unsigned long long a, unsigned long long chess_storage(PM)* p) { *p = a; }
void store_indexedp1___ulonglong_PM(unsigned long long a, unsigned long long chess_storage(PM)* p) { p[ 1] = a; }
void store_indexedm1___ulonglong_PM(unsigned long long a, unsigned long long chess_storage(PM)* p) { p[-1] = a; }
void store_indexedpN___ulonglong_PM(unsigned long long a, unsigned long long chess_storage(PM)* p) { p[ N] = a; }
void store_indexedmN___ulonglong_PM(unsigned long long a, unsigned long long chess_storage(PM)* p) { p[-N] = a; }
void store_indexedpI___ulonglong_PM(unsigned long long a, unsigned long long chess_storage(PM)* p, int i) { p[ i] = a; }
void store_indexedmI___ulonglong_PM(unsigned long long a, unsigned long long chess_storage(PM)* p, int i) { p[-i] = a; }

void store_postmodp1___ulonglong_PM(unsigned long long a, unsigned long long chess_storage(PM)*& p) { *p++ = a; }
void store_postmodm1___ulonglong_PM(unsigned long long a, unsigned long long chess_storage(PM)*& p) { *p-- = a; }
void store_postmodpN___ulonglong_PM(unsigned long long a, unsigned long long chess_storage(PM)*& p) { *p = a; p += N; }
void store_postmodmN___ulonglong_PM(unsigned long long a, unsigned long long chess_storage(PM)*& p) { *p = a; p -= N; }
void store_postmodpI___ulonglong_PM(unsigned long long a, unsigned long long chess_storage(PM)*& p, int i) { *p = a; p += i; }
void store_postmodmI___ulonglong_PM(unsigned long long a, unsigned long long chess_storage(PM)*& p, int i) { *p = a; p -= i; }

void store_premod_p1___ulonglong_PM(unsigned long long a, unsigned long long chess_storage(PM)*& p) { *++p = a; }
void store_premod_m1___ulonglong_PM(unsigned long long a, unsigned long long chess_storage(PM)*& p) { *--p = a; }
void store_premod_pN___ulonglong_PM(unsigned long long a, unsigned long long chess_storage(PM)*& p) { p += N; *p = a; }
void store_premod_mN___ulonglong_PM(unsigned long long a, unsigned long long chess_storage(PM)*& p) { p -= N; *p = a; }
void store_premod_pI___ulonglong_PM(unsigned long long a, unsigned long long chess_storage(PM)*& p, int i) { p += i; *p = a; }
void store_premod_mI___ulonglong_PM(unsigned long long a, unsigned long long chess_storage(PM)*& p, int i) { p -= i; *p = a; }

//-- void *                     // size=1 alignment=1

void pointer_p1___Pvoid_PM(void * chess_storage(PM)*& p) { ++p; }
void pointer_m1___Pvoid_PM(void * chess_storage(PM)*& p) { --p; }
void pointer_pN___Pvoid_PM(void * chess_storage(PM)*& p) { p += N; }
void pointer_mN___Pvoid_PM(void * chess_storage(PM)*& p) { p -= N; }
void pointer_pI___Pvoid_PM(void * chess_storage(PM)*& p, int i) { p += i; }
void pointer_mI___Pvoid_PM(void * chess_storage(PM)*& p, int i) { p -= i; }

void * chess_storage(PM) global___Pvoid_PM;
void * chess_storage(PM) garray___Pvoid_PM[N+1];

void * load_global___Pvoid_PM() { return global___Pvoid_PM; }
void * load_garray_pN___Pvoid_PM() { return garray___Pvoid_PM[N]; }
void * load_garray_pI___Pvoid_PM(int i) { return garray___Pvoid_PM[i]; }

void store_global___Pvoid_PM(void * a) { global___Pvoid_PM = a; }
void store_garray_pN___Pvoid_PM(void * a) { garray___Pvoid_PM[N] = a; }
void store_garray_pI___Pvoid_PM(void * a, int i) { garray___Pvoid_PM[i] = a; }


void * load_indirect0___Pvoid_PM(void * chess_storage(PM)* p) { return *p; }
void * load_indexedp1___Pvoid_PM(void * chess_storage(PM)* p) { return p[ 1]; }
void * load_indexedm1___Pvoid_PM(void * chess_storage(PM)* p) { return p[-1]; }
void * load_indexedpN___Pvoid_PM(void * chess_storage(PM)* p) { return p[ N]; }
void * load_indexedmN___Pvoid_PM(void * chess_storage(PM)* p) { return p[-N]; }
void * load_indexedpI___Pvoid_PM(void * chess_storage(PM)* p, int i) { return p[ i]; }
void * load_indexedmI___Pvoid_PM(void * chess_storage(PM)* p, int i) { return p[-i]; }

void * load_postmodp1___Pvoid_PM(void * chess_storage(PM)*& p) { return *p++; }
void * load_postmodm1___Pvoid_PM(void * chess_storage(PM)*& p) { return *p--; }
void * load_postmodpN___Pvoid_PM(void * chess_storage(PM)*& p) { void * t = *p; p += N; return t; }
void * load_postmodmN___Pvoid_PM(void * chess_storage(PM)*& p) { void * t = *p; p -= N; return t; }
void * load_postmodpI___Pvoid_PM(void * chess_storage(PM)*& p, int i) { void * t = *p; p += i; return t; }
void * load_postmodmI___Pvoid_PM(void * chess_storage(PM)*& p, int i) { void * t = *p; p -= i; return t; }

void * load_premod_p1___Pvoid_PM(void * chess_storage(PM)*& p) { return *++p; }
void * load_premod_m1___Pvoid_PM(void * chess_storage(PM)*& p) { return *--p; }
void * load_premod_pN___Pvoid_PM(void * chess_storage(PM)*& p) { p += N; return *p; }
void * load_premod_mN___Pvoid_PM(void * chess_storage(PM)*& p) { p -= N; return *p; }
void * load_premod_pI___Pvoid_PM(void * chess_storage(PM)*& p, int i) { p += i; return *p; }
void * load_premod_mI___Pvoid_PM(void * chess_storage(PM)*& p, int i) { p -= i; return *p; }

void store_indirect0___Pvoid_PM(void * a, void * chess_storage(PM)* p) { *p = a; }
void store_indexedp1___Pvoid_PM(void * a, void * chess_storage(PM)* p) { p[ 1] = a; }
void store_indexedm1___Pvoid_PM(void * a, void * chess_storage(PM)* p) { p[-1] = a; }
void store_indexedpN___Pvoid_PM(void * a, void * chess_storage(PM)* p) { p[ N] = a; }
void store_indexedmN___Pvoid_PM(void * a, void * chess_storage(PM)* p) { p[-N] = a; }
void store_indexedpI___Pvoid_PM(void * a, void * chess_storage(PM)* p, int i) { p[ i] = a; }
void store_indexedmI___Pvoid_PM(void * a, void * chess_storage(PM)* p, int i) { p[-i] = a; }

void store_postmodp1___Pvoid_PM(void * a, void * chess_storage(PM)*& p) { *p++ = a; }
void store_postmodm1___Pvoid_PM(void * a, void * chess_storage(PM)*& p) { *p-- = a; }
void store_postmodpN___Pvoid_PM(void * a, void * chess_storage(PM)*& p) { *p = a; p += N; }
void store_postmodmN___Pvoid_PM(void * a, void * chess_storage(PM)*& p) { *p = a; p -= N; }
void store_postmodpI___Pvoid_PM(void * a, void * chess_storage(PM)*& p, int i) { *p = a; p += i; }
void store_postmodmI___Pvoid_PM(void * a, void * chess_storage(PM)*& p, int i) { *p = a; p -= i; }

void store_premod_p1___Pvoid_PM(void * a, void * chess_storage(PM)*& p) { *++p = a; }
void store_premod_m1___Pvoid_PM(void * a, void * chess_storage(PM)*& p) { *--p = a; }
void store_premod_pN___Pvoid_PM(void * a, void * chess_storage(PM)*& p) { p += N; *p = a; }
void store_premod_mN___Pvoid_PM(void * a, void * chess_storage(PM)*& p) { p -= N; *p = a; }
void store_premod_pI___Pvoid_PM(void * a, void * chess_storage(PM)*& p, int i) { p += i; *p = a; }
void store_premod_mI___Pvoid_PM(void * a, void * chess_storage(PM)*& p, int i) { p -= i; *p = a; }


} //extern "C"  (350 functions)
