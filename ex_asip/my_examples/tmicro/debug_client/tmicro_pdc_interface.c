/*
-- File : tmicro_pdc_interface.c
--
-- Contents : Specialisation of Checkers_pdc_interface for tmicro
--
-- Copyright (c) 2014-2018 Synopsys, Inc. This Synopsys processor model 
-- captures an ASIP Designer Design Technique. The model and all associated 
-- documentation are proprietary to Synopsys, Inc. and may only be used 
-- pursuant to the terms and conditions of a written license agreement with 
-- Synopsys, Inc.  All other use, reproduction, modification, or distribution 
-- of the Synopsys processor model or the associated  documentation is 
-- strictly prohibited. 
*/

#include "tmicro_pdc_interface.h"
#include "checkers_api_l_structs.h"

bool tmicro_pdc_interface::expand_into_root_locations(
                                           const Checkers_storinfo* s)
{
    // Expansion is desired for range aliases, but unwanted for SR.
    return s->storage_name != "SR";   
}

void tmicro_pdc_interface::load_reg_cache()
{
    Checkers_pdc_interface::load_reg_cache();

    // reading from SR record components { CND; CB; IE; SRa; SRb; IM; }
    DataType sr_val = reg_cache["sr"];
    reg_cache["cnd"] =  (sr_val >> 0) & 1;
    reg_cache["cb"]  =  (sr_val >> 1) & 1;
    reg_cache["ie"]  =  (sr_val >> 2) & 1;
    reg_cache["im"]  =  (sr_val >> 8) & 0xff;
}

int tmicro_pdc_interface::put_register(string nm, const DataType& val)
{
    if (Checkers_pdc_interface::put_register(nm,val) == ok)
        return ok;

    // writing to SR record components { CND; CB; IE; SRa; SRb; IM; }

    to_lower(nm);
    int valid_reg = 1;
    DataType sr_val;
    cmd.get_register("sr",sr_val);
    if (nm == "cnd")
        sr_val = (sr_val & ~(1    << 0)) | (val & 1)    << 0;
    else if (nm == "cb")
        sr_val = (sr_val & ~(1    << 1)) | (val & 1)    << 1;
    else if (nm == "ie")
        sr_val = (sr_val & ~(1    << 2)) | (val & 1)    << 2;
    else if (nm == "im")
        sr_val = (sr_val & ~(0xff << 8)) | (val & 0xff) << 8;
    else
        valid_reg = 0;

    return (valid_reg) ? cmd.put_register("sr",sr_val) : failed;
}
