/*
-- Test: memcpy() function.
--
-- Copyright (c) 2014 Synopsys Inc.
*/


#include "string.h"
// #include "stddef.h"
// #include "errno.h"

#ifndef MAX_OFFSET
#define MAX_OFFSET (sizeof (long long))
#endif

#ifndef MAX_COPY
#define MAX_COPY (8 * sizeof (long long))
#endif

#ifndef MAX_EXTRA
#define MAX_EXTRA (sizeof (long long))
#endif

#define MAX_LENGTH (MAX_OFFSET + MAX_COPY + MAX_EXTRA)

static union {
  char buf[MAX_LENGTH];
  long long align_int;
  long double align_fp;
} u1, u2;


void gcc_torture_memcpy_2()
{
  int off1, off2, len, i;
  char *p, *q;

  chess_message( "// gcc_torture_memcpy_2" << MAX_OFFSET<<','<<MAX_COPY);

  for (off1 = 0; off1 < MAX_OFFSET; off1++)
    for (off2 = 0; off2 < MAX_OFFSET; off2++)
      for (len = 1; len < MAX_COPY; len++)
	{
	  chess_message( "// gcc_torture_memcpy_2("<<off1<<','<<off2<<','<<len<< ')' ); \
	  unsigned sum; 
	  
	  for (i = 0; i < MAX_LENGTH; i++)
	    {
	      u1.buf[i] = 'a';
	      u2.buf[i] = 'A';
	    }

	  p = (char*)memcpy (u1.buf + off1, u2.buf + off2, len);
	  chess_report(p != u1.buf + off1);

	  q = u1.buf;
	  sum = 0; 
	  for (i = 0; i < off1; i++, q++)
	    sum += (unsigned char)*q;
	  chess_report(sum);

	  for (i = 0; i < len; i++, q++)
	    sum += (unsigned char)*q;
	  chess_report(sum);

	  for (i = 0; i < MAX_EXTRA; i++, q++)
	    sum += (unsigned char)*q;
	  chess_report(sum);
	}
}

int main()
{
    gcc_torture_memcpy_2();
    chess_exit(0);
    return 0;
}

