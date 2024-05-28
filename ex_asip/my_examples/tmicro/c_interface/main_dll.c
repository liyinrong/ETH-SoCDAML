/*
-- Copyright (c) 2014-2016 Synopsys, Inc. This Synopsys processor model 
-- captures an ASIP Designer Design Technique. The model and all associated 
-- documentation are proprietary to Synopsys, Inc. and may only be used 
-- pursuant to the terms and conditions of a written license agreement with 
-- Synopsys, Inc.  All other use, reproduction, modification, or distribution 
-- of the Synopsys processor model or the associated  documentation is 
-- strictly prohibited. 
*/


#include "chkapi_c.h"
#include <iostream>

#define PERROR(fname,ecode)\
    if (ecode != 0) \
{ \
        std::cout << "failed " << #fname << ": errorcode = " << ecode << std::endl; \
        chkapi_c_print_error (); \
        return 1; \
}

int main ()
{
    void * tmicro_p;
    unsigned error;
    chkapi_c_long_long val=-1;

    //create instance of ISS
    tmicro_p = chkapi_c_engine_init(&error);
    PERROR (chkapi_c_engine_init, error);

    //load program
    error = chkapi_c_load_prog (tmicro_p, "test");
    PERROR (chkapi_c_load_prog, error);

    //simulate #cycles
    int cycles_simulated = 0;
    error = chkapi_c_step (tmicro_p, 10, cycles_simulated);
    PERROR (chkapi_c_step, error);
    std::cout << "Simulated " << cycles_simulated << " cycles" << std::endl;

    //get PC
    chkapi_c_get(tmicro_p, "PC", 0, val);
    std::cout << "PC = " << val << std::endl;

    //get R1
    chkapi_c_get(tmicro_p, "R", 1, val);
    std::cout << "R1 = " << val << std::endl;

    //put R1
    val = 22;
    chkapi_c_put(tmicro_p, "R", 1, val);
    std::cout << "R1 = " << val << std::endl;

    //get R1
    chkapi_c_get(tmicro_p, "R", 1, val);
    std::cout << "R1 = " << val << std::endl;

    chkapi_c_model_close (tmicro_p);

    return 0;
} 


