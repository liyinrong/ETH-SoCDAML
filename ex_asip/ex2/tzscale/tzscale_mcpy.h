/*
-- File : tzscale_mcpy.h
--
-- Contents : Chess implementation of memcpy() function
--
-- Copyright (c) 2015-2016 Synopsys, Inc. This Synopsys processor model 
-- captures an ASIP Designer Design Technique. The model and all associated 
-- documentation are proprietary to Synopsys, Inc. and may only be used 
-- pursuant to the terms and conditions of a written license agreement with 
-- Synopsys, Inc.  All other use, reproduction, modification, or distribution 
-- of the Synopsys processor model or the associated  documentation is 
-- strictly prohibited. 
*/



#ifndef _tzscale_mcpy_h
#define _tzscale_mcpy_h


#define COPY_CHAR(L,R)  *(char*)(L) = *(char*)(R)
#define COPY_SHORT(L,R) *(short*)(L) = *(short*)(R) 
#define COPY_INT(L,R)   *(int*)(L)  = *(int*)(R) 

inline void chess_memory_copy(volatile void* l, const volatile void* r,
                              const int sz, const int algn)
{
  if (sz == 1) 
      COPY_CHAR(l,r);
  else if (sz == 2) 
      COPY_SHORT(l,r);
  else if (sz == 3) {
      COPY_SHORT(l,r);
      COPY_CHAR((volatile char*)l+2,(volatile char*)r+2);
  }
  else if (sz == 4) 
      COPY_INT(l,r);
  else if (sz == 5) {
      COPY_INT(l,r);
      COPY_CHAR((volatile char*)l+4,(volatile char*)r+4);
  }
  else if (sz == 6) {
      COPY_INT(l,r);
      COPY_SHORT((volatile char*)l+4,(volatile char*)r+4);
  }
  else if (sz == 7) {
      COPY_INT(l,r);
      COPY_SHORT((volatile char*)l+4,(volatile char*)r+4);
      COPY_CHAR((volatile char*)l+6,(volatile char*)r+6);
  }
  else if (sz == 8) {
      COPY_INT(l,r);
      COPY_INT((volatile char*)l+4,(volatile char*)r+4);
  }
  else if (sz == 9) {
      COPY_INT(l,r);
      COPY_INT((volatile char*)l+4,(volatile char*)r+4);
      COPY_CHAR((volatile char*)l+8,(volatile char*)r+8);
  }
  else if (sz == 10) {
      COPY_INT(l,r);
      COPY_INT((volatile char*)l+4,(volatile char*)r+4);
      COPY_SHORT((volatile char*)l+8,(volatile char*)r+8);
  }
  else if (sz == 11) {
      COPY_INT(l,r);
      COPY_INT((volatile char*)l+4,(volatile char*)r+4);
      COPY_SHORT((volatile char*)l+8,(volatile char*)r+8);
      COPY_CHAR((volatile char*)l+10,(volatile char*)r+10);
  }
  else if (sz == 12) {
      COPY_INT(l,r);
      COPY_INT((volatile char*)l+4,(volatile char*)r+4);
      COPY_INT((volatile char*)l+8,(volatile char*)r+8);
  }
  else if (sz == 13) {
      COPY_INT(l,r);
      COPY_INT((volatile char*)l+4,(volatile char*)r+4);
      COPY_INT((volatile char*)l+8,(volatile char*)r+8);
      COPY_CHAR((volatile char*)l+12,(volatile char*)r+12);
  }
  else if (sz == 14) {
      COPY_INT(l,r);
      COPY_INT((volatile char*)l+4,(volatile char*)r+4);
      COPY_INT((volatile char*)l+8,(volatile char*)r+8);
      COPY_SHORT((volatile char*)l+12,(volatile char*)r+12);
  }
  else if (sz == 15) {
      COPY_INT(l,r);
      COPY_INT((volatile char*)l+4,(volatile char*)r+4);
      COPY_INT((volatile char*)l+8,(volatile char*)r+8);
      COPY_SHORT((volatile char*)l+12,(volatile char*)r+12);
      COPY_CHAR((volatile char*)l+14,(volatile char*)r+14);
  }
  else {
      int* li = (int*)l;
      int* ri = (int*)r;
      for (int i = 0; i < sz/4; i++)  
         *li++ = *ri++;
      l = (char*)li;
      r = (char*)ri;
      if (sz%4 == 3) {
          COPY_SHORT(l,r);
          COPY_CHAR((volatile char*)l+2,(volatile char*)r+2);
      } else if (sz%4 == 2) 
          COPY_SHORT(l,r);
      else if (sz%4 == 1) 
          COPY_CHAR(l,r);
  }
}

#endif /* _tzscale_mcpy_h */
