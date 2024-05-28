#include <stdlib.h>
#include <stdint.h>
#include <mex.h>
#include <matrix.h>
#include <c_processing.h>

/*
 *  * The calling syntax is:
 *
 *		outVec = c_feature_location(inVec)
 *
 * This is a MEX file for MATLAB.
*/

/* The gateway function */
void mexFunction(int nlhs, mxArray *plhs[],
                 int nrhs, const mxArray *prhs[])
{
    // check arguments
    if(nrhs != 1 || nlhs != 1) {
        mexErrMsgIdAndTxt("MyToolbox:arrayProduct:nlhs",
                      "One output required.");
    }
    
    /* variable declarations here */
    double* inVec;        /* 1xN input matrix */
    uint32_t* outVec;       // 1xM output matrix (pointing to matlab object)
	uint32_t* outVec_ptr;   // function return
	unsigned int outVec_len;

    /* code here */
    inVec = mxGetPr(prhs[0]);
    mwSize len_in = mxGetN(prhs[0]);

	// Function call
	T *TinVec = (T*) malloc(len_in*sizeof(T));        /* 1xN input matrix */
	// Casting...
	for(int i=0; i<len_in; i++)
		TinVec[i] = (T)(inVec[i]);
    outVec_len = feature_location(&outVec_ptr, TinVec, len_in);
	
	/* create the output matrix, matlab object */
    plhs[0] = mxCreateNumericMatrix(1,outVec_len,mxUINT32_CLASS,mxREAL);
    /* get a pointer to the real data in the output matrix */
    outVec = (uint32_t*) mxGetData(plhs[0]);
	
	// copy to matlab structure
	for(int i=0; i<outVec_len; i++)
	{ 
		//printf("idx %i, val: %i\r\n",i,(outVec_ptr)[i]);
		outVec[i] = (outVec_ptr)[i];
	}
	// free memory
	free(outVec_ptr);
    
}


