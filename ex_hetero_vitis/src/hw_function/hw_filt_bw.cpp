#include <assert.h>
#include <stdio.h>
#include <stdint.h>


typedef int16_t T_hw_coef;
typedef int32_t T_hw_acc;
typedef int16_t T_hw;

#define HW_LEN 21600
#define BP_FIR_LEN 153
#define BP_FIR_MID 76

//-----------------------------
//      Default C++ code
//-----------------------------


void filt_bp_hw(T_hw outVec[HW_LEN], T_hw inVec[HW_LEN])
{
    const T_hw_coef hw_BP_FIR[] = {
            #include "../data/BP_FIR.inc"
        };

  // Bandpass filtering
  for (int i=0; i<HW_LEN; i++) {
    T_hw_acc acc = 0;
    for (int s=0; s<BP_FIR_LEN ; s++)
    {
        int r_idx = i-BP_FIR_MID+s;
        if(r_idx >= 0 && r_idx < HW_LEN) {
            acc += inVec[r_idx]*hw_BP_FIR[s];
        }
    }
	outVec[i] = acc >> 16;
  }
}


/*

//-----------------------------
// Optimized C++ code for HLS
//-----------------------------


void filt_bp_hw(T_hw outVec[HW_LEN], T_hw inVec[HW_LEN])
{
    const T_hw_coef hw_BP_FIR[] = {
            #include "../data/BP_FIR.inc"
        };
// TODO: ADD HERE PRAGMA FOR hw_BP_FIR

    T_hw_acc outBuf[BP_FIR_LEN];
// TODO: ADD HERE PRAGMA FOR outBuf

    for(int inIdx = -BP_FIR_MID; inIdx < HW_LEN+BP_FIR_MID; inIdx++) {

            // shift buffer
            for(int i = BP_FIR_LEN-1; i > 0; i--) {
// TODO: ADD HERE PRAGMA FOR for-loop
                    outBuf[i] = outBuf[i-1];
            }
            outBuf[0] = 0;

            // read input
            T_hw inVal = 0;
            if(inIdx >= 0 && inIdx < HW_LEN) {
                    inVal = inVec[inIdx];
            }

            // perform filter calculations
            for(int filtIdx = 0; filtIdx < BP_FIR_LEN; filtIdx++) {
// TODO: ADD HERE PRAGMA FOR for-loop
                    outBuf[filtIdx] += inVal * hw_BP_FIR[filtIdx];
            }

            // write out result
            int outIdx = inIdx - (BP_FIR_LEN-1) + BP_FIR_MID;
            if(outIdx >= 0 && outIdx < HW_LEN) {
                    outVec[outIdx] = outBuf[BP_FIR_LEN-1] >> 16;
            }
    }
}

*/


