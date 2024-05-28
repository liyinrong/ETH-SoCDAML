
/////////////////////////////////
//          INCLUDES           //
/////////////////////////////////

// Device-specific includes
#ifdef __HERO_1
#include "kernels.h"
// Host-specific includes
#else
#include <omp.h>
#include <stdio.h>
#include <libhero/herodev.h>
#endif
// Common includes
#include <hero_64.h>

/////////////////////////////////
//            MAIN             //
/////////////////////////////////

int main(int argc, char *argv[]) {

    // Initialize omp
    #pragma omp target device(1)
        asm volatile ("nop");

    printf("Hello world from the host\n\r");

// TODO (1): Add timestamps to measure the total offloading time
    hero_add_timestamp("BEGIN", __func__, 1);

#pragma omp target device(1)
    {
// Device-specific kernel
#ifdef __HERO_1
        dev_hello_world();
// Host fallback
#else
        asm volatile("nop");
#endif
    }

    hero_add_timestamp("END", __func__, 1);

// Print all the recorded timestamps
#ifndef __HERO_1
    hero_print_timestamp();
#endif

    fflush(stdout);


    return 0;
}
