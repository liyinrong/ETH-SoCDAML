

#define IS_L1(addr) (((uint32_t)addr) > 0x10000000 && ((uint32_t) addr) < 0x100FFFFF)
#define IS_L2(addr) (((uint32_t)addr) > 0x71000000 && ((uint32_t) addr) < 0x71FFFFFF)
#define IS_L3(addr) (((uint32_t)addr) > 0xC0000000 && ((uint32_t) addr) < 0xFFFFFFFF)
#define IS_DEV_MEM(addr) (IS_L1(addr) || IS_L2(addr) || IS_L3(addr))

#define MIN(A, B) (A < B ? A : B)

int dev_check_transfer(__device void *dst, __device void *src, size_t size) {
    if(!IS_DEV_MEM(dst) || !IS_DEV_MEM(src)) {
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
}
