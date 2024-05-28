// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xfilt_bp_hw.h"

extern XFilt_bp_hw_Config XFilt_bp_hw_ConfigTable[];

XFilt_bp_hw_Config *XFilt_bp_hw_LookupConfig(u16 DeviceId) {
	XFilt_bp_hw_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XFILT_BP_HW_NUM_INSTANCES; Index++) {
		if (XFilt_bp_hw_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XFilt_bp_hw_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XFilt_bp_hw_Initialize(XFilt_bp_hw *InstancePtr, u16 DeviceId) {
	XFilt_bp_hw_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XFilt_bp_hw_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XFilt_bp_hw_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

