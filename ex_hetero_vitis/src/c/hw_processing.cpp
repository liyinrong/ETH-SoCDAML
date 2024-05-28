// Processing using HW accelerations
//  verified with matlab over MEX

#include "hw_processing.h"

#include <assert.h>
#include <float.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>

#include "c_app.h"
#include "c_processing.h"

// Profiling
uint64_t p_feature_creation_hw = 0;
uint64_t p_feature_creation_hw_filt_bp = 0;


#ifdef HW_KERNEL
#include "xfilt_bp_hw.h"
XFilt_bp_hw inst = {0};
static volatile T_hw hw_in[HW_LEN] __attribute__((section("ps7_ram_0"), aligned (64)));
static volatile T_hw hw_out[HW_LEN] __attribute__((section("ps7_ram_0"), aligned (64)));

static void call_filt_bp_hw(T_hw outVec[HW_LEN], T_hw inVec[HW_LEN]) {
  // Initialize the filt_bp hardware IP
  XFilt_bp_hw_Initialize(&inst, XPAR_FILT_BP_HW_1_DEVICE_ID);
  u32 Data;
  // Wait until the initializaton is complete
  while (!(XFilt_bp_hw_IsReady(&inst)))
    ;
  // Set the control signal low to ensure that elaboration only starts when the data has been transmitted properly
  Data = XFilt_bp_hw_ReadReg(inst.Control_BaseAddress, XFILT_BP_HW_CONTROL_ADDR_AP_CTRL);
  XFilt_bp_hw_WriteReg(inst.Control_BaseAddress, XFILT_BP_HW_CONTROL_ADDR_AP_CTRL, Data & ~(0x10));

  // Configure the hardware IP register to fetch data from the hw_in location in the memory 
  XFilt_bp_hw_Set_inVec(&inst, (u64)hw_in);

  // Task-5.1 
  // Copy Data from inVec to hw_in . Hint -- You can use memcpy
  // PLACEHOLDER

  // Configure the hardware IP register to write out processed data in the hw_out location in the memory 
  XFilt_bp_hw_Set_outVec(&inst,(u64)hw_out);

  // Task-5.2 
  // Start the hardware kernel. Hint -- you can use XFilt_bp_hw_Start() function
  // PLACEHOLDER


  XFilt_bp_hw_Continue(&inst);

  while (!XFilt_bp_hw_IsDone(&inst))
    ;
    
  // Task-5.3
  // Copy Data from hw_out to outVec . Hint -- You can use memcpy
  // PLACEHOLDER

}
#endif
void feature_creation_hw(T_hw** outVec, T_hw* inVec, int len) {
  assert(len == HW_LEN);

  *outVec = (T_hw*)malloc(HW_LEN * sizeof(T_hw));
  T_hw* tmp1 = (T_hw*)malloc(HW_LEN * sizeof(T_hw));
  T_hw* tmp2 = (T_hw*)malloc(HW_LEN * sizeof(T_hw));
  T_hw* tmp3 = (T_hw*)malloc(HW_LEN * sizeof(T_hw));

  // Profile

  uint64_t p_start = get_clock_cycle();

  // Bandpass filtering
#if defined(HW_KERNEL)
  call_filt_bp_hw(tmp1, inVec);
#else
  filt_bp(tmp1, inVec, HW_LEN);
  #warning "Hardware function not in Use. Check if HW_KERNEL is defined"
#endif
  p_feature_creation_hw_filt_bp = get_clock_cycle() - p_start;

  // Derivative filtering
  filt_d(tmp2, tmp1, len);
  // squaring
  square_array(tmp3, tmp2, len);
  // moving average
  move_avg(*outVec, tmp3, len);

  // Profile end
  // Profile end
  p_feature_creation_hw = get_clock_cycle() - p_start;

  #ifdef HW_KERNEL
    puts("*********************** Running bp_filt on [ HARDWARE ] **********************************\n");
  #else 
    puts("*********************** Running bp_filt on [ SOFTWARE ] **********************************\n");
  #endif

  free(tmp1);
  free(tmp2);
  free(tmp3);
}
