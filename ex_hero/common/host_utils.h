
#define IS_L1(addr) (((uint32_t)addr) > 0x10000000 && ((uint32_t) addr) < 0x100FFFFF)
#define IS_L2(addr) (((uint32_t)addr) > 0x71000000 && ((uint32_t) addr) < 0x71FFFFFF)
#define IS_L3(addr) (((uint32_t)addr) > 0xC0000000 && ((uint32_t) addr) < 0xFFFFFFFF)
#define IS_DEV_MEM(addr) (IS_L1(addr) || IS_L2(addr) || IS_L3(addr))

#define MIN(A, B) (A < B ? A : B)

void *dev_l2_alloc(size_t length, uintptr_t *ret_physical_address) {
    void *ret_virtual_address;
    if(length > 0x7FFFF) {
        printf("[host] too large for L2\n\r");
        return NULL;
    }
    ret_virtual_address = hero_dev_l2_malloc(NULL, (unsigned) length, ret_physical_address);
    if(!IS_L2(*ret_physical_address)) {
        printf("[host] allocation error\n\r");
        return NULL;
    }
    printf("[host] allocated %llx bytes at %llx\n\r", length, *ret_physical_address);
    return ret_virtual_address;
}

void *dev_l3_alloc(size_t length, uintptr_t *ret_physical_address) {
    void *ret_virtual_address;
    if(length > 0x10000000) {
        printf("[host] too large for L3\n\r");
        return NULL;
    }
    ret_virtual_address = hero_dev_l3_malloc(NULL, (unsigned) length, ret_physical_address);
    if(!IS_L3(*ret_physical_address)) {
        printf("[host] allocation error\n\r");
        return NULL;
    }
    printf("[host] allocated %llx bytes at %llx\n\r", length, *ret_physical_address);
    return ret_virtual_address;
}