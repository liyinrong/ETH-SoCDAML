#ifndef __TEST_TIME_H__
#define __TEST_TIME_H__

#define USEC_PER_SEC 1000000.0

static inline unsigned long long
my_get_time()
{
  struct timeval tv_start;
  gettimeofday(&tv_start, NULL);
  return tv_start.tv_usec + (tv_start.tv_sec * USEC_PER_SEC);
}

#endif
