#ifndef C_APP_H
#define C_APP_H

#include <limits.h>
#include <stdint.h>

///////////////// DEFINES /////////////////
typedef int16_t T;
#define T_MAX 32767

#define INPUT_LEN 21600

uint64_t get_clock_cycle(void);

#endif
