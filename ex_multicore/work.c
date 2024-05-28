#include "work.h"
void work(unsigned long num)
{
  unsigned int i;
  volatile int cnt = 0;

  for(i=0; i<num; i++)
        cnt += i;
}
