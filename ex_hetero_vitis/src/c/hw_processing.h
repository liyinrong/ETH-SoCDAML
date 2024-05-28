#ifndef HW_PROCESSING_H
#define HW_PROCESSING_H

#include <stdint.h>

#include "c_app.h"

#define HW_LEN INPUT_LEN

typedef T T_hw;

// Profiling
extern uint64_t p_feature_creation_hw;
extern uint64_t p_feature_creation_hw_filt_bp;


// #define HW_KERNEL

///////////////// FEATURE CREATION /////////////////

/**
 * @brief Feature location with hardware accelerated function. Finds the peaks of the input vector
 * and returns them in location_ptr.
 *
 * @param location_ptr Pointer to the output array of peaks
 * @param inVec Input vector
 * @param len_in Length of input vector
 */
void feature_creation_hw(T** outVec, T* inVec, int len);

#endif
