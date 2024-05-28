NVCC=nvcc
NVCCOPTIONS=-arch sm_53 --ptxas-options=-v,-abi=no

all:
	$(NVCC) $(NVCCOPTIONS) -o 1DStencil.x 1DStencil.cu


clean:
	rm -f *.o *.x
