#include "c_app.h"

#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>

#include "c_processing.h"
#include "hw_processing.h"
#include "xtime_l.h"

// Input data
T dataraw[] = {
#include "../data/input.inc"
};
T_hw dataraw_hw[] = {
#include "../data/input.inc"
};

static void run_golden(T* inVec, int inlen, uint32_t** outVec, int* outlen);
static void run_hw(T_hw* inVec, int inlen, uint32_t** outVec, int* outlen);
static void run_app();
static void verify(uint32_t* ref_outVec, int ref_outlen, uint32_t* hw_outVec, int hw_outlen);

int main() {
  run_app();
  return 0;
}

uint64_t get_clock_cycle(void) {
  XTime clock_cycles;
  XTime_GetTime(&clock_cycles);
  return (u64)clock_cycles * 2;  // Global Timer is always clocked at half of the CPU frequency
}

static void run_golden(T* inVec, int inlen, uint32_t** outVec, int* outlen) {
  puts("Processing - software only...");
  uint64_t p_start = get_clock_cycle();

  // allocation output array for features
  T* fdata = (T*)malloc(sizeof(T) * inlen);
  // create features
  feature_creation(fdata, inVec, inlen);

  // locate features
  uint32_t* fVec_ptr;
  unsigned int fcnt = feature_location(&fVec_ptr, fdata, inlen);

  // output
  *outlen = fcnt;
  *outVec = fVec_ptr;

  // Memory free
  free(fdata);
  uint64_t p_proc_c = get_clock_cycle() - p_start;
  puts(" done");

  // Profiling output
  printf("Runtime Processing (software only)\r\n");
  printf("  (in CPU cycles)\r\n");
  printf(" Total: %llu\r\n", p_proc_c);
  printf("  /feature_creation: %llu\r\n", p_feature_creation);
  printf("  /feature_creation/filt_bp: %llu\r\n", p_feature_creation_filt_bp);
  printf("  /feature_location: %llu\r\n\r\n", p_feature_location);
}

static void run_HW(T_hw* inVec, int inlen, uint32_t** outVec, int* outlen) {
  puts("Processing - (to be) partially HW accelerated...");
  uint64_t p_start = get_clock_cycle();

  // array for features
  T* fdata_ptr;
  // create features
  feature_creation_hw(&fdata_ptr, inVec, INPUT_LEN);

  // CONVERSION T_hw -> T done in feature_creation_hw...??)

  // locate features (why run this on this exercise at all...)
  uint32_t* fVec_ptr;
  unsigned int fcnt = feature_location(&fVec_ptr, fdata_ptr, INPUT_LEN);

  // output
  *outlen = fcnt;
  *outVec = fVec_ptr;

  free(fdata_ptr);
  uint64_t p_proc_hw = get_clock_cycle() - p_start;
  puts(" done");

  // Profiling output
  printf("Runtime Processing (partially hardware accelerated)\r\n");
  printf("  (in CPU cycles)\r\n");
  printf(" Total: %llu\r\n", p_proc_hw);
  printf("  /feature_creation_hw: %llu\r\n", p_feature_creation_hw);
  printf("  /feature_creation_hw/filt_bp(_hw): %llu\r\n", p_feature_creation_hw_filt_bp);
  printf("  /feature_location: %llu\r\n\r\n", p_feature_location);
}

static void verify(uint32_t* ref_outVec, int ref_outlen, uint32_t* hw_outVec, int hw_outlen) {
  int mismatch = 0;
  puts("Verify results...");

  if (ref_outlen != hw_outlen) {
    puts(" [ERR] Vector lengths do not match!");
    mismatch = 1;

    for (int i = 0; i < ref_outlen; i++) {
      printf(" LOC_REF %i = %i\r\n", i, (int)ref_outVec[i]);
    }
    for (int i = 0; i < hw_outlen; i++) {
      printf(" LOC_HW %i = %i\r\n", i, (int)hw_outVec[i]);
    }
  } else {
    for (int i = 0; i < ref_outlen; i++) {
#ifdef BP_VECTOR_INDEX_VERBOSE
      printf(" LOC %i = %i\r\n", i, (int)hw_outVec[i]);
#endif
      if (ref_outVec[i] != hw_outVec[i]) {
#ifdef BP_VECTOR_INDEX_VERBOSE
        printf(
            " [ERR] Vector index [%i] do not match:!\r\n  ref_outVec[i]=%i != hw_outVec[i]=%i\r\n",
            i, (int)ref_outVec[i], (int)hw_outVec[i]);
#endif
        mismatch = 1;
      }
    }
  }

  if (mismatch == 0)
    puts(" [ALL OK]");
  else
    puts(" [ERR] Mismatch found!");

  puts(" done");
}

/* application function */
static void run_app() {
  puts("--------------------------");
  puts(" -- ECG Processing App --");
  uint32_t* ref_outVec;
  uint32_t* hw_outVec;
  int ref_outlen, hw_outlen;

  // Run golden and HW
  run_golden(dataraw, INPUT_LEN, &ref_outVec, &ref_outlen);
  run_HW(dataraw_hw, INPUT_LEN, &hw_outVec, &hw_outlen);

  // Verify
  verify(ref_outVec, ref_outlen, hw_outVec, hw_outlen);

  // free memory
  free(ref_outVec);
  free(hw_outVec);

  puts(" -- App END --");
  puts("");
}
