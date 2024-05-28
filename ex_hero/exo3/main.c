
/////////////////////////////////
//          INCLUDES           //
/////////////////////////////////

// Device-specific includes
#ifdef __HERO_1
#include <inttypes.h>
#include <stddef.h>
#include "dev_utils.h"
#include "encoding.h"
#include "kernels.h"
// Host-specific includes
#else
#include <omp.h>
#include <stdio.h>
#include <libhero/herodev.h>
#include "host_utils.h"
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

    // Physical addresses
    uintptr_t C_phys, D_phys, E_phys;
    // Virtual addresses
    uint32_t *C = NULL, *D = NULL, *E;
    // Verification matrices
    uint32_t *C_test = NULL, *D_test = NULL, *E_test;

    int height = 8;
    int width  = 8;

    // Device matrices
    C = dev_l2_alloc(width * height * sizeof(uint32_t), &C_phys);
    D = dev_l2_alloc(width * sizeof(uint32_t), &D_phys);
    E = dev_l2_alloc(height * sizeof(uint32_t), &E_phys);
    // Verification matrices
    C_test = malloc(width * height * sizeof(uint32_t));
    D_test = malloc(width * sizeof(uint32_t));
    E_test = malloc(height * sizeof(uint32_t));

    // Prepare data
    for (int i = 0; i < height; i++)
        for (int j = 0; j < width; j++)
            C[i * width + j] = (uint32_t)((i + j)%4);
    for (int j = 0; j < width; j++)
        D[j] = (uint32_t)(j%4);

    for (int i = 0; i < height * width; i++)
        C_test[i] = C[i];
    for (int i = 0; i < width; i++)
        D_test[i] = D[i];

#pragma omp target device(1) map(to: C_phys, D_phys, E_phys, width, height)
    {
        volatile uint32_t _C_phys = (uint32_t) C_phys;
        volatile uint32_t _D_phys = (uint32_t) D_phys;
        volatile uint32_t _E_phys = (uint32_t) E_phys;
        volatile uint32_t _width = (uint32_t) width;
        volatile uint32_t _height = (uint32_t) height;
// Device-specific kernel
#ifdef __HERO_1
        dev_matvec(_E_phys, _C_phys, _D_phys, _width, _height);
// Host fallback
#else
        asm volatile("nop");
#endif
    }

    // Execution on host
    asm volatile ("fence");
    for (int i = 0; i < height; i++) {
        uint32_t val = 0.0f;
        for (int j = 0; j < width; j++)
            val += C_test[i * width + j] * D_test[j];
        E_test[i] = val;
    }

    // Verify result
    for (int i = 0; i < height; i++) {
        if(E_test[i] != E[i])
            printf("Error %i : %f != %f\n\r", i, E_test[i], E[i]);
    }

// Print all the recorded timestamps
#ifndef __HERO_1
    hero_print_timestamp();
#endif

    fflush(stdout);

    return 0;
}
