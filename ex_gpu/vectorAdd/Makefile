NVCC=nvcc
NVCCOPTIONS=-arch sm_53

all:
	$(NVCC) $(NVCCOPTIONS) -o add_simple.x add_simple.cu
	$(NVCC) $(NVCCOPTIONS) -o add_simple_threads.x add_simple_threads.cu
	$(NVCC) $(NVCCOPTIONS) -o add_simple_blocks.x add_simple_blocks.cu
	$(NVCC) $(NVCCOPTIONS) -o add_simple_last.x add_simple_last.cu

clean:
	rm -f *.o *.x
