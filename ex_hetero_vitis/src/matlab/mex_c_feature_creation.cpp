#include <mex.h>
#include <c_app.h>
#include <c_processing.h>

/*
 *  * The calling syntax is:
 *
 *		outVec = c_feature_creation(inVec)
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
    double *inVec;        /* 1xN input matrix */
    double *outVec;       /* 1xN output matrix */

    /* code here */
    inVec = mxGetPr(prhs[0]);
    mwSize len = mxGetN(prhs[0]);
    /* create the output matrix */
    plhs[0] = mxCreateDoubleMatrix(1,len,mxREAL);
    /* get a pointer to the real data in the output matrix */
    outVec =  mxGetPr(plhs[0]);
	
	// T type arrays
	T *TinVec = (T*) malloc(len*sizeof(T));        /* 1xN input matrix */
    T *ToutVec = (T*) malloc(len*sizeof(T));       /* 1xN output matrix */
    
	// Casting...
	for(int i=0; i<len; i++)
		TinVec[i] = (T)(inVec[i]);
	
    feature_creation(ToutVec, TinVec, len);
	
	// Casting...
	for(int i=0; i<len; i++)
		outVec[i] = (double)(ToutVec[i]);
    
}


