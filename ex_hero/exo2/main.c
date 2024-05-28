
/////////////////////////////////
//          INCLUDES           //
/////////////////////////////////
#define IS_L2(addr) (((uint32_t)addr) > 0x71000000 && ((uint32_t) addr) < 0x71FFFFFF)
#define IS_L3(addr) (((uint32_t)addr) > 0xC0000000 && ((uint32_t) addr) < 0xFFFFFFFF)

// Device-specific includes
#ifdef __HERO_1
#include <inttypes.h>
#include <stddef.h>
#include "encoding.h"
#include "kernels.h"
// Host-specific includes
#else
#include <omp.h>
#include <stdio.h>
#include <libhero/herodev.h>
#endif
// Common includes
#include <hero_64.h>

void *dev_l2_alloc(size_t length, uintptr_t *ret_physical_address) {
    void *ret_virtual_address;
    if(length > 0x7FFFF) {
        printf("[host] too large for L2");
        return NULL;
    }
    ret_virtual_address = hero_dev_l2_malloc(NULL, (unsigned) length, ret_physical_address);
    if(!IS_L2(*ret_physical_address)) {
        printf("[host] allocation error");
        return NULL;
    }
    printf("[host] allocated %llx bytes at %llx\n\r", length, *ret_physical_address);
    return ret_virtual_address;
}

void *dev_l3_alloc(size_t length, uintptr_t *ret_physical_address) {
    void *ret_virtual_address;
    if(length > 0x10000000) {
        printf("[host] too large for L3");
        return NULL;
    }
    ret_virtual_address = hero_dev_l3_malloc(NULL, (unsigned) length, ret_physical_address);
    if(!IS_L3(*ret_physical_address)) {
        printf("[host] allocation error");
        return NULL;
    }
    printf("[host] allocated %llx bytes at %llx\n\r", length, *ret_physical_address);
    return ret_virtual_address;
}

/////////////////////////////////
//            MAIN             //
/////////////////////////////////

int main(int argc, char *argv[]) {

    // Initialize omp
    #pragma omp target device(1)
        asm volatile ("nop");

    void *A_virt, *B_virt;
    uintptr_t A_phys, B_phys;
    size_t size = 0x1000;

// TODO (1): Allocate device l2/l3 memory using dev_l2/l3_alloc
    A_virt = dev_l2_alloc(size, &A_phys);
    B_virt = dev_l2_alloc(size, &B_phys);
    // A_phys = 0;
    // B_phys = 0;


#pragma omp target device(1) map(to: A_phys, B_phys, size)
    {
        volatile uint32_t _A_phys = (uint32_t) A_phys;
        volatile uint32_t _B_phys = (uint32_t) B_phys;
        volatile uint32_t _size   = (uint32_t) size;
// Device-specific kernel
#ifdef __HERO_1
        dev_memcpy(_B_phys, _A_phys, _size);
// Host fallback
#else
        asm volatile("nop");
#endif
    }

// Print all the recorded timestamps
#ifndef __HERO_1
    hero_print_timestamp();
#endif

    return 0;
}
