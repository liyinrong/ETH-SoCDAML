NVCC=nvcc
NVCCOPTIONS=-arch sm_53 --ptxas-options=-v,-abi=no

all:
	$(NVCC) $(NVCCOPTIONS) -o matrixMul.x matrixMul.cu

clean:
	rm -f *.o *.x
