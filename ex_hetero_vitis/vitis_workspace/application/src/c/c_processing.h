#ifndef C_PROCESSING_H
#define C_PROCESSING_H

#include <stdint.h>

#include "c_app.h"

// Profiling
extern uint64_t p_feature_creation;
extern uint64_t p_feature_creation_filt_bp;
extern uint64_t p_feature_location;

#ifdef MATLAB_MEX_FILE
#define get_clock_cycle() 0
#endif

///////////////// FEATURE CREATION DEFINES/////////////////

// FILT_BP Defines
#define BP_FIR_LEN 153
#define BP_FIR_MID 76

// FILT_D Defines
#define D_FIR_inc \
  { -1, -2, 0, 2, 1 }
#define D_FIR_LEN 5
#define D_FIR_MID 2

// SQUARE_ARRAY Defines
#define S_FACT 1 / 100

// MOVE_AVG Defines
#define CONV_W 30

///////////////// FEATURE LOCATION DEFINES/////////////////

// WINDOW must be even
#define LOC_WINDOW 200
#define WRS_THRESHOLD 50
#define LOC_MAX_COUNT 256

///////////////// FEATURE CREATION FUNCTIONS/////////////////

/**
 * @brief Bandpass filtering. FIR filter with coefficients in BP_FIR.inc
 *          and using defines BP_FIR_LEN and BP_FIR_MID
 *
 * @param outVec Output vector
 * @param inVec Input vector
 * @param len Length of input and output vectors
 */
void filt_bp(T* outVec, T* inVec, int len);

/**
 * @brief Derivative filtering. FIR filter with coefficients in D_FIR_inc
 *          and using defines D_FIR_LEN and D_FIR_MID
 *
 * @param outVec Output vector
 * @param inVec Input vector
 * @param len Length of input and output vectors
 */
void filt_d(T* outVec, T* inVec, int len);

/**
 * @brief Square array. Square each element of the input vector and multiply by S_FACT
 *
 * @param outVec Output vector
 * @param inVec Input vector
 * @param len Length of input and output vectors
 */
void square_array(T* outVec, T* inVec, int len);

/**
 * @brief Moving average. Convolution with a vector of ones of length CONV_W
 *
 * @param outVec Output vector
 * @param inVec Input vector
 * @param len Length of input and output vectors
 */
void move_avg(T* outVec, T* inVec, int len);

/**
 * @brief Feature creation. Calls filt_bp, filt_d, square_array and move_avg
 *
 * @param outVec Output vector
 * @param inVec Input vector
 * @param len Length of input and output vectors
 */
void feature_creation(T* outVec, T* inVec, int len);

///////////////// FEATURE LOCATION FUNCTIONS/////////////////

/**
 * @brief Feature location. Finds the peaks of the input vector and returns them in location_ptr
 *
 * @param location_ptr Pointer to the output array of peaks
 * @param inVec Input vector
 * @param len_in Length of input vector
 * @return unsigned int Number of peaks found
 */
unsigned int feature_location(uint32_t** location_ptr, T* inVec, int len_in);

#endif
