// GOLDEN C model
//  verified with matlab over MEX
#include "c_processing.h"

#include <assert.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>

#include "c_app.h"

// Profiling
uint64_t p_feature_creation = 0;
uint64_t p_feature_creation_filt_bp = 0;
uint64_t p_feature_location = 0;

static void max_arr(T* arr, int arr_len, T* max_val, int* max_idx);
static void max_arr_range(T* arr, int str_idx, int end_idx, T* max_val, int* max_idx);

///////////////// FEATURE CREATION /////////////////

const T BP_FIR[] = {
#include "../data/BP_FIR.inc"
};
void filt_bp(T* outVec, T* inVec, int len) {
  // Bandpass filtering
  for (int i = 0; i < len; i++) {
    int32_t acc = 0;
    for (int s = 0; s < BP_FIR_LEN; s++) {
      int r_idx = i - BP_FIR_MID + s;
      if (r_idx >= 0 && r_idx < len) acc += inVec[r_idx] * BP_FIR[s];
    }
    outVec[i] = acc >> 16;
  }
}

const T D_FIR[] = D_FIR_inc;
void filt_d(T* outVec, T* inVec, int len) {
  // Derivative filtering
  for (int i = 0; i < len; i++) {
    outVec[i] = 0;
    for (int s = 0; s < D_FIR_LEN; s++) {
      int r_idx = i - D_FIR_MID + s;
      if (r_idx >= 0 && r_idx < len) outVec[i] += inVec[r_idx] * D_FIR[s];
    }
  }
}

void square_array(T* outVec, T* inVec, int len) {
  for (int i = 0; i < len; i++) {
    outVec[i] = inVec[i] * inVec[i] * S_FACT;
  }
}

void move_avg(T* outVec, T* inVec, int len) {
  for (int i = 0; i < len; i++) {
    outVec[i] = 0;
    for (int s = 0; s < CONV_W; s++) {
      int r_idx = i - CONV_W / 2 + s;
      if (r_idx >= 0 && r_idx < len) outVec[i] += inVec[r_idx] / CONV_W;
    }
  }
}

void feature_creation(T* outVec, T* inVec, int len) {
  T* tmp1 = (T*)malloc(len * sizeof(T));
  T* tmp2 = (T*)malloc(len * sizeof(T));
  T* tmp3 = (T*)malloc(len * sizeof(T));

  // Profile
  uint64_t p_start = get_clock_cycle();

  // Bandpass filtering
  filt_bp(tmp1, inVec, len);
  p_feature_creation_filt_bp = get_clock_cycle() - p_start;
  // Derivative filtering
  filt_d(tmp2, tmp1, len);
  // squaring
  square_array(tmp3, tmp2, len);
  // moving average
  move_avg(outVec, tmp3, len);

  // Profile end
  p_feature_creation = get_clock_cycle() - p_start;

  free(tmp1);
  free(tmp2);
  free(tmp3);
}

///////////////// FEATURE LOCATION /////////////////

// returns max value and idx in array
static void max_arr(T* arr, int arr_len, T* max_val, int* max_idx) {
  max_arr_range(arr, 0, arr_len - 1, max_val, max_idx);
}
// returns max value and idx in array range [str_idx, end_idx]
static void max_arr_range(T* arr, int str_idx, int end_idx, T* max_val, int* max_idx) {
  // init
  *max_idx = -1;
  *max_val = -T_MAX;

  // serach
  for (int i = str_idx; i <= end_idx; i++) {
    if (arr[i] > *max_val) {
      *max_val = arr[i];
      *max_idx = i;
    }
  }
}

unsigned int feature_location(uint32_t** location_ptr, T* inVec, int len_in) {
  // COMMENT: using uint32_t to guarantee matlab compatibilit
  uint32_t* locations = (uint32_t*)malloc(LOC_MAX_COUNT * sizeof(uint32_t));

  // Profile
  uint64_t p_start = get_clock_cycle();

  // window length
  int wcnt = len_in / (LOC_WINDOW / 2) - 2;
  // location array
  int loc_cnt = 0;

  T last_peak_value = -1;
  for (int widx = 1; widx < wcnt - 1; widx++)  // skip first and last window (border effects)
  {
    // window size: [srt_idx, end_idx]
    int cur_window_srt_idx = widx * LOC_WINDOW / 2;
    int cur_window_end_idx = cur_window_srt_idx + LOC_WINDOW;
    // search max value in window
    T cur_max_val;    // value
    int cur_max_idx;  // position
    max_arr_range(inVec, cur_window_srt_idx, cur_window_end_idx, &cur_max_val, &cur_max_idx);
    // only consider max not at boundaries
    if (cur_max_idx > cur_window_srt_idx && cur_max_idx < cur_window_end_idx) {
      // discard weak peaks
      if (cur_max_val > WRS_THRESHOLD) {
        // check if there is has peak been found in in LOC_WINDOW/2 proximity
        if (loc_cnt > 0 && abs((int)locations[loc_cnt - 1] - cur_max_idx) < LOC_WINDOW / 2) {
          // if so, only keep the more prominent one
          if (last_peak_value < cur_max_val) {
            // overwrite the last found peak
            locations[loc_cnt - 1] = cur_max_idx;
            last_peak_value = cur_max_val;
          }
          // otherwise we keep the one we have an disregard the current one...

        } else {
          // if there is now peak in proximity, add current one
          locations[loc_cnt++] = cur_max_idx;
          last_peak_value = cur_max_val;

          // printf("adding loc %i\r\n",cur_max_idx);

          // check for array size...
          assert(loc_cnt < LOC_MAX_COUNT);
        }
      }
    }
  }

  // output assign
  *location_ptr = locations;

  // Profile end
  p_feature_location = get_clock_cycle() - p_start;

  return loc_cnt;
}
