#include "stdio.h"

inline assembly int chess_storage(R0) dma_ready()
{
    asm_begin
	dma ready r0
    asm_end
}

inline assembly void dma_from_address(void* chess_storage(R0) addr)
{
    asm_begin
	dma from r0
    asm_end
}

inline assembly void dma_to_address(void* chess_storage(R0) addr)
{
    asm_begin
	dma to r0
    asm_end
}

inline assembly void dma_count_and_start(int chess_storage(R0) count)
{
    asm_begin
	dma count r0
    asm_end
}

inline assembly void dma_reset()
{
    asm_begin
	dma reset
    asm_end
}

int chess_storage(DM:10000) A[] = { 123, 113, 121, 223, 123, 122, 323, 133, 123, 423 };
int chess_storage(DM:20000) B[10]; 

int main()
{
    dma_from_address(A);
    dma_to_address(B);
    dma_count_and_start(10);
    while(!dma_ready());
    dma_reset();

    return 0;
}
