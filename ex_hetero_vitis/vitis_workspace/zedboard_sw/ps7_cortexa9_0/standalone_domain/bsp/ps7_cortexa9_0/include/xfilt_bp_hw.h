// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XFILT_BP_HW_H
#define XFILT_BP_HW_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xfilt_bp_hw_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
#else
typedef struct {
    u16 DeviceId;
    u64 Control_BaseAddress;
} XFilt_bp_hw_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u32 IsReady;
} XFilt_bp_hw;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XFilt_bp_hw_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XFilt_bp_hw_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XFilt_bp_hw_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XFilt_bp_hw_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
int XFilt_bp_hw_Initialize(XFilt_bp_hw *InstancePtr, u16 DeviceId);
XFilt_bp_hw_Config* XFilt_bp_hw_LookupConfig(u16 DeviceId);
int XFilt_bp_hw_CfgInitialize(XFilt_bp_hw *InstancePtr, XFilt_bp_hw_Config *ConfigPtr);
#else
int XFilt_bp_hw_Initialize(XFilt_bp_hw *InstancePtr, const char* InstanceName);
int XFilt_bp_hw_Release(XFilt_bp_hw *InstancePtr);
#endif

void XFilt_bp_hw_Start(XFilt_bp_hw *InstancePtr);
u32 XFilt_bp_hw_IsDone(XFilt_bp_hw *InstancePtr);
u32 XFilt_bp_hw_IsIdle(XFilt_bp_hw *InstancePtr);
u32 XFilt_bp_hw_IsReady(XFilt_bp_hw *InstancePtr);
void XFilt_bp_hw_Continue(XFilt_bp_hw *InstancePtr);
void XFilt_bp_hw_EnableAutoRestart(XFilt_bp_hw *InstancePtr);
void XFilt_bp_hw_DisableAutoRestart(XFilt_bp_hw *InstancePtr);

void XFilt_bp_hw_Set_outVec(XFilt_bp_hw *InstancePtr, u64 Data);
u64 XFilt_bp_hw_Get_outVec(XFilt_bp_hw *InstancePtr);
void XFilt_bp_hw_Set_inVec(XFilt_bp_hw *InstancePtr, u64 Data);
u64 XFilt_bp_hw_Get_inVec(XFilt_bp_hw *InstancePtr);

void XFilt_bp_hw_InterruptGlobalEnable(XFilt_bp_hw *InstancePtr);
void XFilt_bp_hw_InterruptGlobalDisable(XFilt_bp_hw *InstancePtr);
void XFilt_bp_hw_InterruptEnable(XFilt_bp_hw *InstancePtr, u32 Mask);
void XFilt_bp_hw_InterruptDisable(XFilt_bp_hw *InstancePtr, u32 Mask);
void XFilt_bp_hw_InterruptClear(XFilt_bp_hw *InstancePtr, u32 Mask);
u32 XFilt_bp_hw_InterruptGetEnabled(XFilt_bp_hw *InstancePtr);
u32 XFilt_bp_hw_InterruptGetStatus(XFilt_bp_hw *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
