/*
-- File string.c
--
-- Contents: C library, implementation of ISO C99 <string.h> functions.
--
-- Copyright (c) 2014-2016 Synopsys, Inc. This Synopsys processor model 
-- captures an ASIP Designer Design Technique. The model and all associated 
-- documentation are proprietary to Synopsys, Inc. and may only be used 
-- pursuant to the terms and conditions of a written license agreement with 
-- Synopsys, Inc.  All other use, reproduction, modification, or distribution 
-- of the Synopsys processor model or the associated  documentation is 
-- strictly prohibited. 
*/


#include <string.h>

#define LSIZE 4  /* sizeof (long)  hardcoded */
#define TOO_SMALL(LEN) ((LEN) < LSIZE)
#define DETECTNULL(X) (((X) - 0x01010101) & ~(X) & 0x80808080)

// copying

#if 0
void* memcpy(void * restrict s1, const void * restrict s2, size_t n)
{
    char* ll = (char*)s1;
    char* rr = (char*)s2;
    for (size_t i = 0; i < n; i++) ll[i] = rr[i];
    return s1;
}
#else
// Better implementation for tzscale. It supports unaligned word addressing.
void* memcpy(void * restrict s1, const void * restrict s2, size_t n)
{
  // copy per 8
  unsigned* u_s1=(unsigned*)s1;
  unsigned* u_s2=(unsigned*)s2;
  while (n>=8) {
    *u_s1++ = *u_s2++;
    *u_s1++ = *u_s2++;
    n-=8;
  }
  if (n>=4) {
    *u_s1++ = *u_s2++;
    n-=4;
  }
  unsigned char* c_s1=(unsigned char*) u_s1;
  unsigned char* c_s2=(unsigned char*) u_s2;
  while (n>0) {
    *c_s1++=*c_s2++;
    --n;
  }
  return s1;
}
#endif

void* memmove(void *s1, const void *s2, size_t n)
//  s1 and s2 can overlap    
{
    char* ll = (char*)s1;
    char* rr = (char*)s2;
    if (ll <= rr)
	for (size_t i = 0; i < n; i++) ll[i] = rr[i];
    else
	for (int i = n-1; i >= 0; i--) ll[i] = rr[i];
    return s1;
}

char* strcpy(char * restrict dst, const char * restrict src)
{
    long * restrict aligned_dst = (long*)dst;
    const long * restrict aligned_src = (long*)src;
    while (!DETECTNULL(*aligned_src)) {
        *aligned_dst++ = *aligned_src++;
    }
    dst = (char*)aligned_dst;
    src = (char*)aligned_src;

    while ((*dst++ = *src++))
        ;
    return dst;
}

char* strncpy(char * restrict dst, const char * restrict src, size_t n)
//  copy exact n characters, add zeros if s2 is shorter than n    
{
    char *ret = NULL;
    if (!TOO_SMALL (n)) {
        long* aligned_dst = (long*)dst;
        const long* aligned_src = (long*)src;
        while (n >= LSIZE  && !DETECTNULL(*aligned_src)) {
            n -= LSIZE;
            *aligned_dst++ = *aligned_src++;
        }
        dst = (char*)aligned_dst;
        src = (char*)aligned_src;
    }
    while (n > 0) {
        --n;
        if ((*dst++ = *src++) == '\0') {
            ret = dst - 1;
            break;
        }
    }

    while (n-- > 0)
        *dst++ = '\0';

    return ret ? ret : dst;

}

// concatenation

char* strcat(char * restrict s1, const char * restrict s2)
{
    char *s = s1;
    /* Skip over the data in s1 as quickly as possible.  */
    unsigned long *aligned_s1 = (unsigned long *)s1;
    while (!DETECTNULL (*aligned_s1))
        aligned_s1++;
    s1 = (char *)aligned_s1;

    while (*s1)
        s1++;

    /* s1 now points to the its trailing null character, we can
       just use strcpy to do the work for us now.

       ?!? We might want to just include strcpy here.
       Also, this will cause many more unaligned string copies because
       s1 is much less likely to be aligned.  I don't know if its worth
       tweaking strcpy to handle this better.  */
    strcpy (s1, s2);

    return s;
}

char* strncat(char * restrict s1, const char * restrict s2, size_t n)
//  at most n characters from s2 excluding zero, then still add one zero,
//  implying that n+1 positions can be written.    
{
    char* result = s1;
    while (*s1++); s1--;
    char c;
    while (n-- && (c = *s2++)) *s1++ = c;
    *s1 = 0;
    return result;
}

// comparison (based on unsigned chars)

int memcmp(const void *s1, const void *s2, size_t n)
{
    char *r1 = (char*) s1;
    char *r2 = (char*) s2;
    while (n--) {
	char c1 = *r1++;
	char c2 = *r2++;
	if (c1 != c2)
	    return (unsigned char)c1 - (unsigned char)c2;
    }
    return 0;
}

#if 0
int strcmp(const char *s1, const char *s2)
{
    while (1) {
	char c1 = *s1++;
	char c2 = *s2++;
	if (c1 != c2 || c1 == 0)
	    return (unsigned char)c1 - (unsigned char)c2;
    }
}
#else
int strcmp(const char *s1, const char *s2)
{
    while (1) {
      {
	char c1 = *s1++;
	char c2 = *s2++;
	if (c1 != c2 || c1 == 0)
	    return (unsigned char)c1 - (unsigned char)c2;
      }
      {
	char c1 = *s1++;
	char c2 = *s2++;
	if (c1 != c2 || c1 == 0)
	    return (unsigned char)c1 - (unsigned char)c2;
      }
      {
	char c1 = *s1++;
	char c2 = *s2++;
	if (c1 != c2 || c1 == 0)
	    return (unsigned char)c1 - (unsigned char)c2;
      }
      {
	char c1 = *s1++;
	char c2 = *s2++;
	if (c1 != c2 || c1 == 0)
	    return (unsigned char)c1 - (unsigned char)c2;
      }
    }
}
#endif

int strncmp(const char *s1, const char *s2, size_t n)
//  compare at most n characters    
{
    if (n == 0)
        return 0;

    /* If s1 or s2 are unaligned, then compare bytes. */
    /* If s1 and s2 are word-aligned, compare them a word at a time. */
    unsigned long* a1 = (unsigned long*)s1;
    unsigned long* a2 = (unsigned long*)s2;
    while (n >= LSIZE && *a1 == *a2) {
        n -= LSIZE;
        /* If we've run out of bytes or hit a null, return zero
           since we already know *a1 == *a2.  */
        if (n == 0 || DETECTNULL (*a1))
            return 0;
        a1++;
        a2++;
    }

    /* A difference was detected in last few bytes of s1, so search bytewise */
    s1 = (char*)a1;
    s2 = (char*)a2;

    while (n-- > 0 && *s1 == *s2) {
        /* If we've run out of bytes or hit a null, return zero
           since we already know *s1 == *s2.  */
        if (n == 0 || *s1 == '\0')
            return 0;
        s1++;
        s2++;
    }
    return (*(unsigned char *) s1) - (*(unsigned char *) s2);
}

size_t strxfrm(char * restrict s1, const char * restrict s2, size_t n)
//  just copy s2 as strcoll == strcmp in C locale
{
    size_t result = strlen(s2);
    if (result < n)
	for (size_t i = 0; i <= result; i++) chess_loop_range(1,)
	    s1[i] = s2[i];
    return result;
}

// search

void* memchr(const void *s, int c, size_t n)
//  look for (unsigned char)c including zero
{
    unsigned char* r = (unsigned char*)s;
    while (n--) {
	unsigned char d = *r++;
	if (d == (unsigned char)c)
	    return r-1;
    }
    return 0;
}

char* strchr(const char *s, int c)
//  look for (char)c including zero
{
    char d;
    do {
	d = *s++;
	if (d == (char)c)
	    return (char*)(s-1);
    } while (d);
    return 0;
}

size_t strcspn(const char *s1, const char *s2)
//  length of s1 segment excluding any s2 char    
{
    const char* r1 = s1;
    while (1) {
	char c = *r1++;
	const char* r2 = s2;
	char d;
	do {
	    d = *r2++;
	    if (c == d)
		return (r1-1) - s1;
	} while (d);
    }
}

char* strpbrk(const char *s1, const char *s2)
//  pointer to first char in s1 also belonging to s2    
{
    char c;
    while (c = *s1++) {
	const char* r2 = s2;
	char d;
	do {
	    d = *r2++;
	    if (c == d)
		return (char*)(s1-1);
	} while (d);
    }
    return 0;
}

char* strrchr(const char *s, int c)
//  last occurrence of (char)c in s, including zero char.    
{
    char* result = 0;
    char d;
    do {
	d = *s++;
	if (d == (char)c)
	    result = (char*)(s-1);
    } while (d);
    return result;
}

size_t strspn(const char *s1, const char *s2)
// length of s1 segment, consisting of s2 chars
{
    const char* r1 = s1;
    char c;
    while (c = *r1++) {
	const char* r2 = s2;
	char d;
	do {
	    d = *r2++;
	    if (c == d) break;
	} while (d);
	if (!d)
	    break;
    }
    return (r1-1) - s1;    
}

char* strstr(const char *s1, const char *s2)
// first occurrence of s2 in s1 (when s2 == "", return s1).
{
    do {
	const char* r1 = s1;
	const char* r2 = s2;
	while (1) {
	    char c1 = *r1++;
	    char c2 = *r2++;
	    if (c2 == 0)
		return (char*)s1;
	    if (c1 != c2)
		break;
	}
    } while (*s1++);
    return 0;
}

char* strtok(char * restrict s1, const char * restrict s2)
{
    static char* last;

    if (!s1 && !(s1 = last))
	return 0;
    
    // skip initial s2 chars (cf. strspn):

    char c;
    while (c = *s1++) {
	const char* r2 = s2;
	char d;
	do {
	    d = *r2++;
	    if (c == d) break;
	} while (d);
	if (!d)
	    break;
    }
    if (c == 0) {
	last = 0;
	return 0;
    }
    char* start = s1-1;

    // scan token (cf. strcspn) :

    char* r1 = s1;
    while (1) {
	char c = *r1++;
	const char* r2 = s2;
	char d;
	do {
	    d = *r2++;
	    if (c == d) {
		if (c == 0)
		    last = 0;
		else {
		    *(r1-1) = 0;
		    last = r1;
		}
		return start;
	    }
	} while (d);
    }
}
/*
char* strtok(char * restrict s1, const char * restrict s2)
//  by calling strspn() and strcspn(), but not much less instructions.
{
    static char* last;

    if (!s1 && !(s1 = last))
	return 0;
    
    // skip initial s2 chars (cf. strspn):

    s1 += strspn(s1,s2);
    if (*s1 == 0) {
	last = 0;
	return 0;
    }
    char* start = s1;

    // scan token (cf. strcspn) :

    s1 += strcspn(s1,s2);
    if (*s1)
	last = 0;
    else {
	*s1 = 0;
	last = s1+1;
    }
    return start;
}
*/

// miscellaneous

void *memset(void *m, int c, size_t n)
{
    char *s = (char *) m;

    int i;
    unsigned long buffer;
    unsigned long *aligned_addr;
    unsigned int d = c & 0xff;    /* To avoid sign extension, copy C to an
                                   unsigned variable.  */
    if (!TOO_SMALL (n)) {
        /* If we get this far, we know that n is large and s is word-aligned. */
        aligned_addr = (unsigned long *) s;

        /* Store D into each char sized location in BUFFER so that
           we can set large blocks quickly.  */
        buffer = (d << 8) | d;
        buffer |= (buffer << 16);
        // for (i = 32; i < LSIZE * 8; i <<= 1)
        //     buffer = (buffer << i) | buffer;

        /* Unroll the loop.  */
        while (n >= LSIZE*4) {
            *aligned_addr++ = buffer;
            *aligned_addr++ = buffer;
            *aligned_addr++ = buffer;
            *aligned_addr++ = buffer;
            n -= 4*LSIZE;
        }


        while (n >= LSIZE) {
            *aligned_addr++ = buffer;
            n -= LSIZE;
        }
        /* Pick up the remainder with a bytewise loop.  */
        s = (char*)aligned_addr;
    }

    while (n--)
        *s++ = (char) c;

    return m;
}

char *strerror(int errnum)
{
    return (char*)"";
}

size_t strlen(const char *str)
{
    const char *start = str;
    /* If the string is word-aligned, we can check for the presence of
       a null in each word-sized block.  */
    unsigned long* aligned_addr = (unsigned long *)str;
    while (!DETECTNULL (*aligned_addr))
        aligned_addr++;

    /* Once a null is detected, we check each byte in that block for a
       precise position of the null.  */
    str = (char *) aligned_addr;

    while (*str)
        str++;
    return str - start;
}
