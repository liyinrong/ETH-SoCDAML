/*
-- Author : Jos Decoster
--
-- Copyright (c) 2014-2016 Synopsys, Inc. This Synopsys processor model 
-- captures an ASIP Designer Design Technique. The model and all associated 
-- documentation are proprietary to Synopsys, Inc. and may only be used 
-- pursuant to the terms and conditions of a written license agreement with 
-- Synopsys, Inc.  All other use, reproduction, modification, or distribution 
-- of the Synopsys processor model or the associated  documentation is 
-- strictly prohibited. 
*/


#ifndef __chkapi_c_h__
#define __chkapi_c_h__

#ifdef _WIN32
typedef __int64 chkapi_c_long_long;
typedef unsigned __int64 chkapi_c_ulong_long;
#else
typedef long long chkapi_c_long_long;
typedef unsigned long long chkapi_c_ulong_long;
#endif

#undef DLLEXPORT
#undef DLLIMPORT
#ifdef _WIN32
#define DLLEXPORT __declspec(dllexport)
#define DLLIMPORT __declspec(dllimport)
#else
#define DLLEXPORT /* nothing */
#define DLLIMPORT /* nothing */
#endif

// Initialise ISS, return uicore* as void*, return 0 when failed.
extern "C" DLLEXPORT void* chkapi_c_engine_init(unsigned *error);

extern "C" DLLEXPORT int chkapi_c_model_close(void* core);

extern "C" DLLEXPORT int chkapi_c_model_reset(void* core);

extern "C" DLLEXPORT void chkapi_c_print_error();

// Other C-api functions use void* as uicore* and return the checkers API error
// codes (0 is ok, > 0 is error, -1 is message, < -1 is warning

extern "C" DLLEXPORT int chkapi_c_load_prog(
    void*       core,
    const char* program);

extern "C" DLLEXPORT int chkapi_c_step(
    void* core,
    int   count,
    int&  cycles_simulated);

// Get value from storages <= 64 bit
extern "C" DLLEXPORT int chkapi_c_get(
    void*               core,
    const char*         storage_name,
    unsigned            address,
    chkapi_c_long_long& val);

// Get value from any storage.
//   storage <= 64 bit: val is pointer to single 64 bit int
//   storage >  64 bit: val is 64 bit int array with sufficient elements to hold
//                      data
extern "C" DLLEXPORT int chkapi_c_get_ptr(
    void*               core,
    const char*         storage_name,
    unsigned            address,
    chkapi_c_long_long* val);

// Put value into storages <= 64 bit
extern "C" DLLEXPORT int chkapi_c_put(
    void*               core,
    const char*         storage_name,
    unsigned            address,
    chkapi_c_long_long& val);

// Put values in any storage
//   storage <= 64 bit: val is pointer to single 64 bit int
//   storage >  64 bit: val is 64 bit int array with sufficient elements to hold
//                      data
extern "C" DLLEXPORT int chkapi_c_put_ptr(
    void*               core,
    const char*         storage_name,
    unsigned            address,
    chkapi_c_long_long* val);

extern "C" DLLEXPORT int chkapi_c_breakpoint_set(
    void*    core,
    unsigned address);

extern "C" DLLEXPORT int chkapi_c_breakpoint_clear(
    void*    core,
    unsigned address);

extern "C" DLLEXPORT int chkapi_c_watch_eop_set(void* core);

extern "C" DLLEXPORT int chkapi_c_watchpoint_set(void* core,char *reg_name,int value);

#ifndef __checkers_ia__
extern "C" DLLEXPORT int chkapi_c_model_decoder_reset(void *core);
#endif

#endif
