#ifndef __prepost__
#define __prepost__

class tmicro;

int dma_init(tmicro*);
int dma_pre(tmicro*);
int dma_post(tmicro*);
int dma_fini(tmicro*);

#endif
