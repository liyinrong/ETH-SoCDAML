////// Compile this file only for the device /////
#ifdef __HERO_1

int dev_check_transfer(__device void *dst, __device void *src, size_t size) {
    if((!IS_L2(dst) || !IS_L2(src)) && (!IS_L3(dst) || !IS_L3(src))) {
        snrt_printf("[dev] DMA error: src (%x) or dst (%x) not in device memory\n\r", dst, src);
        return 0x1;
    }
    if(size > 0x100000) {
        snrt_printf("[dev] DMA error: transfer too large (%x)\n\r", size);
        return 0x1;
    }
    return 0x0;
}

void dev_dma_memcpy(__device void *dst, __device void *src, size_t size) {
    if(dev_check_transfer(dst, src, size))
        return;
    dm_memcpy_async((void *)dst, (void *)src, size);
    dm_wait();
}

void dev_single_core_memcpy(__device void *dst, __device void *src, size_t size) {
    if(dev_check_transfer(dst, src, size))
        return;
    // TODO (2) Use a for loop to do copy data from src to dst
    // snrt_printf("Single core copy on %u\n\r", snrt_cluster_core_idx());
    while(size-- > 0)
    {
        *((uint8_t*)dst++) = *((uint8_t*)src++);
    }
}

void dev_multi_core_memcpy(__device void *dst, __device void *src, size_t size) {
    if(dev_check_transfer(dst, src, size))
        return;
    // TODO (3) Use a parallel for loop to do copy data from src to dst
    #pragma omp parallel for
    {
        for(size_t i = 0; i < size; i++)
        {
            // snrt_printf("Multi core copy on %u\n\r", snrt_cluster_core_idx());
            *((uint8_t*)dst + i) = *((uint8_t*)src + i);
        }
    }
}

void compare(__device void *dst, __device void *src, size_t size) {
    for(int i = 0; i < size; i++) {
        if( ((uint8_t*) dst)[i] != ((uint8_t*) src)[i] ) {
            snrt_printf("%x (%2x) != %x (%2x)\n\r",
            ((uint8_t*) dst)[i], ((uint8_t*) dst)[i], ((uint8_t*) src)[i], ((uint8_t*) src)[i]);
            return;
        }
        // Set back to zero
        ((uint8_t*) dst)[i] = 0;
    }

}

/////////////////////////////////
//          KERNELS            //
/////////////////////////////////

void dev_memcpy(uint32_t dst_phys, uint32_t src_phys, uint32_t size) {
    uint32_t t0=0, t1=0, t2=0, t3=0, t4=0, t5=0;
    snrt_printf("[dev] %x %x %x\n\r", dst_phys, src_phys, size);

    // TODO (4) place t1, t2, t3, t4, t5 to measure ONLY the transfers
    // for each method

    t0 = read_csr(mcycle);

    dev_single_core_memcpy(dst_phys, src_phys, size);

    t1 = read_csr(mcycle);

    // Verify
    compare(dst_phys, src_phys, size);

    t2 = read_csr(mcycle);

    dev_multi_core_memcpy(dst_phys, src_phys, size);

    t3 = read_csr(mcycle);

    // Verify
    compare(dst_phys, src_phys, size);

    t4 = read_csr(mcycle);

    dev_dma_memcpy(dst_phys, src_phys, size);
    dm_wait();

    t5 = read_csr(mcycle);

    snrt_printf("[dev] 1-core : %u cycles, 8-cores : %u cycles , DMA : %u cycles\n\r",
                t1-t0, t3-t2, t5-t4);
}

#endif
