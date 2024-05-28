////// Compile this file only for the device /////
#ifdef __HERO_1

void dev_hello_world() {
    // TODO (2): Use omp parallel to print on each core
    #pragma omp parallel
    // snrt_printf("Hello world!\n\r");
    snrt_printf("Hello world from %u\n\r", snrt_cluster_core_idx());
}

#endif
