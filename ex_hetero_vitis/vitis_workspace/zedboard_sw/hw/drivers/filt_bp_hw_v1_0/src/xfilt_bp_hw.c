// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xfilt_bp_hw.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XFilt_bp_hw_CfgInitialize(XFilt_bp_hw *InstancePtr, XFilt_bp_hw_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XFilt_bp_hw_Start(XFilt_bp_hw *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFilt_bp_hw_ReadReg(InstancePtr->Control_BaseAddress, XFILT_BP_HW_CONTROL_ADDR_AP_CTRL) & 0x80;
    XFilt_bp_hw_WriteReg(InstancePtr->Control_BaseAddress, XFILT_BP_HW_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XFilt_bp_hw_IsDone(XFilt_bp_hw *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFilt_bp_hw_ReadReg(InstancePtr->Control_BaseAddress, XFILT_BP_HW_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XFilt_bp_hw_IsIdle(XFilt_bp_hw *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFilt_bp_hw_ReadReg(InstancePtr->Control_BaseAddress, XFILT_BP_HW_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XFilt_bp_hw_IsReady(XFilt_bp_hw *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFilt_bp_hw_ReadReg(InstancePtr->Control_BaseAddress, XFILT_BP_HW_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XFilt_bp_hw_Continue(XFilt_bp_hw *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFilt_bp_hw_ReadReg(InstancePtr->Control_BaseAddress, XFILT_BP_HW_CONTROL_ADDR_AP_CTRL) & 0x80;
    XFilt_bp_hw_WriteReg(InstancePtr->Control_BaseAddress, XFILT_BP_HW_CONTROL_ADDR_AP_CTRL, Data | 0x10);
}

void XFilt_bp_hw_EnableAutoRestart(XFilt_bp_hw *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFilt_bp_hw_WriteReg(InstancePtr->Control_BaseAddress, XFILT_BP_HW_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XFilt_bp_hw_DisableAutoRestart(XFilt_bp_hw *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFilt_bp_hw_WriteReg(InstancePtr->Control_BaseAddress, XFILT_BP_HW_CONTROL_ADDR_AP_CTRL, 0);
}

void XFilt_bp_hw_Set_outVec(XFilt_bp_hw *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFilt_bp_hw_WriteReg(InstancePtr->Control_BaseAddress, XFILT_BP_HW_CONTROL_ADDR_OUTVEC_DATA, (u32)(Data));
    XFilt_bp_hw_WriteReg(InstancePtr->Control_BaseAddress, XFILT_BP_HW_CONTROL_ADDR_OUTVEC_DATA + 4, (u32)(Data >> 32));
}

u64 XFilt_bp_hw_Get_outVec(XFilt_bp_hw *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFilt_bp_hw_ReadReg(InstancePtr->Control_BaseAddress, XFILT_BP_HW_CONTROL_ADDR_OUTVEC_DATA);
    Data += (u64)XFilt_bp_hw_ReadReg(InstancePtr->Control_BaseAddress, XFILT_BP_HW_CONTROL_ADDR_OUTVEC_DATA + 4) << 32;
    return Data;
}

void XFilt_bp_hw_Set_inVec(XFilt_bp_hw *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFilt_bp_hw_WriteReg(InstancePtr->Control_BaseAddress, XFILT_BP_HW_CONTROL_ADDR_INVEC_DATA, (u32)(Data));
    XFilt_bp_hw_WriteReg(InstancePtr->Control_BaseAddress, XFILT_BP_HW_CONTROL_ADDR_INVEC_DATA + 4, (u32)(Data >> 32));
}

u64 XFilt_bp_hw_Get_inVec(XFilt_bp_hw *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFilt_bp_hw_ReadReg(InstancePtr->Control_BaseAddress, XFILT_BP_HW_CONTROL_ADDR_INVEC_DATA);
    Data += (u64)XFilt_bp_hw_ReadReg(InstancePtr->Control_BaseAddress, XFILT_BP_HW_CONTROL_ADDR_INVEC_DATA + 4) << 32;
    return Data;
}

void XFilt_bp_hw_InterruptGlobalEnable(XFilt_bp_hw *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFilt_bp_hw_WriteReg(InstancePtr->Control_BaseAddress, XFILT_BP_HW_CONTROL_ADDR_GIE, 1);
}

void XFilt_bp_hw_InterruptGlobalDisable(XFilt_bp_hw *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFilt_bp_hw_WriteReg(InstancePtr->Control_BaseAddress, XFILT_BP_HW_CONTROL_ADDR_GIE, 0);
}

void XFilt_bp_hw_InterruptEnable(XFilt_bp_hw *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XFilt_bp_hw_ReadReg(InstancePtr->Control_BaseAddress, XFILT_BP_HW_CONTROL_ADDR_IER);
    XFilt_bp_hw_WriteReg(InstancePtr->Control_BaseAddress, XFILT_BP_HW_CONTROL_ADDR_IER, Register | Mask);
}

void XFilt_bp_hw_InterruptDisable(XFilt_bp_hw *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XFilt_bp_hw_ReadReg(InstancePtr->Control_BaseAddress, XFILT_BP_HW_CONTROL_ADDR_IER);
    XFilt_bp_hw_WriteReg(InstancePtr->Control_BaseAddress, XFILT_BP_HW_CONTROL_ADDR_IER, Register & (~Mask));
}

void XFilt_bp_hw_InterruptClear(XFilt_bp_hw *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    //XFilt_bp_hw_WriteReg(InstancePtr->Control_BaseAddress, XFILT_BP_HW_CONTROL_ADDR_ISR, Mask);
}

u32 XFilt_bp_hw_InterruptGetEnabled(XFilt_bp_hw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XFilt_bp_hw_ReadReg(InstancePtr->Control_BaseAddress, XFILT_BP_HW_CONTROL_ADDR_IER);
}

u32 XFilt_bp_hw_InterruptGetStatus(XFilt_bp_hw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    // Current Interrupt Clear Behavior is Clear on Read(COR).
    return XFilt_bp_hw_ReadReg(InstancePtr->Control_BaseAddress, XFILT_BP_HW_CONTROL_ADDR_ISR);
}

