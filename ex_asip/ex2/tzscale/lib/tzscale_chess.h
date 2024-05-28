/*
-- File : tzscale_chess.h
--
-- Contents : Chess specific header-file for the tzscale processor.
--
-- Copyright (c) 2015-2016 Synopsys, Inc. This Synopsys processor model 
-- captures an ASIP Designer Design Technique. The model and all associated 
-- documentation are proprietary to Synopsys, Inc. and may only be used 
-- pursuant to the terms and conditions of a written license agreement with 
-- Synopsys, Inc.  All other use, reproduction, modification, or distribution 
-- of the Synopsys processor model or the associated  documentation is 
-- strictly prohibited. 
*/


#ifndef _tzscale_chess_h
#define _tzscale_chess_h

#include "tzscale.h"

// properties of short types

class signed   char  property( 8 bit signed);
class unsigned char  property( 8 bit unsigned);
class signed   short property(16 bit signed);
class unsigned short property(16 bit unsigned);
class v2short        property(vector short[2]);

chess_properties {

 // type promotions

    promotion w32            : transitory  { addr };
    // promotion int16p         : strong  { w32 } ...;

    promotion signed short   : strong  { w16, w32 }
                               transitory { addr } 
                               exclude { w32 extend_zero(w16) };

    promotion signed char    : strong  { w08, w16, w32 }
                               transitory { addr } 
                               exclude { w32 extend_zero(w08), 
                                         w32 extend_zero(w16) };
                       
    promotion unsigned short : strong { w16, w32 }
                               transitory { addr } 
                               exclude { w32 extend_sign(w16) };

    promotion unsigned char  : strong  { w08, w16, w32 }
                               transitory { addr } 
                               exclude { w32 extend_sign(w08),
                                         w32 extend_sign(w16) };


 // declaration of built-in type representations

    representation int, unsigned   : w32;
    representation char            : signed char;
    representation long            : int;
    representation unsigned long   : unsigned;
    representation void* : w32;
    representation v2short : w32;
    
 // general properties

    default_memory	    : DMb;
    spill_memory	    : DMb, DMh, DMw;	
    stack_pointer	    : SP;
    sp_location		    : free;
    sp_offset_type	    : int12;
    pointer_index_type	    : int12;
    link_register           : LR;
    breakpoint_focus_stage  : WB;
    no_redundant_loads      : DMb, DMh, DMw;
    small_static_memory     : DMb_stat;
		      
 // ABI
    argument_registers : X10, X11, X12, X13, X14, X15, X16, X17;
    argument_registers_return : X10, X11;

}

#include "tzscale_int.h"	    
#include "tzscale_longlong.h"	    
#include "tzscale_const.h"	    
#include "tzscale_mcpy.h"
#include "tzscale_bitfield.h"
#include "tzscale_float.h"	    
#include "tzscale_double.h"	    

class v2short {
    v2short(int);
};


promotion v2short(int) = nil;

promotion int operator*(v2short, v2short)     =  w32 dotp(w32, w32);
promotion int ext_mac_(int, int, int)          = w32 mac(w32, w32, w32);
promotion int ext_dotp_(v2short, v2short, int) = w32 sdotp(w32, w32, w32);

chess_rewrite int ext_mac_rule(int a, int b, int c) {
    return c + (int)a*b;
} -> {
    return ext_mac_(a,b,c);
}

chess_rewrite int ext_dotp_rule(v2short a, v2short b, int c) {
    return c + a*b;
} -> {
    return ext_dotp_(a,b,c);
}


#endif // _tzscale_chess_h
