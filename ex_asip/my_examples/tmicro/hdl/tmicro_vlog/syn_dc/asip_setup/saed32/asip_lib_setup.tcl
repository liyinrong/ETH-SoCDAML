##########################################################################################
# File: asip_lib_setup.tcl
##########################################################################################

if {[info exists env(SAED32_HOME)]} {
    puts "Info: Using SAED32 installation from $::env(SAED32_HOME)\n"
} else {
    puts "Error: SAED32_HOME not defined, please set ENV variable pointing to SAED32 library!\n"
    exit
}

set DESIGN_REF_DATA_PATH          $::env(SAED32_HOME)  ;
                                     #  Absolute path prefix variable for library/design data.
                                     #  Use this variable to prefix the common absolute path  
                                     #  to the common variables defined below.
                                     #  Absolute paths are mandatory for hierarchical 
                                     #  reference methodology flow.

#########################
# Library Setup Variables
#########################

# For the following variables, use a blank space to separate multiple entries.
# Example: set TARGET_LIBRARY_FILES "lib1.db lib2.db lib3.db"

set ADDITIONAL_SEARCH_PATH        " \
        ../../scripts_block/rm_setup \
        ${DESIGN_REF_DATA_PATH}/lib/stdcell_rvt/db_nldm \
        ${DESIGN_REF_DATA_PATH}/lib/sram/db_nldm \
        ${DESIGN_REF_DATA_PATH}/lib/io_std/db_nldm "  ;#  Additional search path to be added to the default search path

set TARGET_LIBRARY_FILES          " \
        saed32rvt_ff1p16v125c.db \
        saed32rvt_pg_ff1p16v125c.db \
        saed32rvt_ulvl_ff1p16v125c_i0p95v.db"  ;#  Target technology logical libraries

set ADDITIONAL_LINK_LIB_FILES     " \
        saed32sram_ff1p16v125c.db \
        saed32sram_ss0p95v125c.db \
        saed32io_wb_ff1p16v125c_2p75v.db "  ;#  Extra link logical libraries not included in TARGET_LIBRARY_FILES

set MIN_LIBRARY_FILES             " \
        saed32rvt_ff1p16v125c.db saed32rvt_ff1p16vn40c.db \
        saed32rvt_pg_ff1p16v125c.db saed32rvt_pg_ff1p16vn40c.db \
        saed32rvt_ulvl_ff1p16v125c_i0p95v.db saed32rvt_ulvl_ff1p16vn40c_i0p95v.db \
        saed32sram_ff1p16v125c.db saed32sram_ff1p16vn40c.db "  ;#  List of max min library pairs "max1 min1 max2 min2 max3 min3"...

set MW_REFERENCE_LIB_DIRS         " \
        ${DESIGN_REF_DATA_PATH}/lib/stdcell_rvt/milkyway/saed32nm_rvt_1p9m \
        ${DESIGN_REF_DATA_PATH}/lib/sram/milkyway/SRAM32NM \
        ${DESIGN_REF_DATA_PATH}/lib/io_std/milkyway/saed32_io_wb "  ;#  Milkyway reference libraries (include IC Compiler ILMs here)

set MW_REFERENCE_CONTROL_FILE     ""  ;#  Reference Control file to define the Milkyway reference libs

set TECH_FILE                     "${DESIGN_REF_DATA_PATH}/tech/milkyway/saed32nm_1p9m_mw.tf"  ;#  Milkyway technology file
set MAP_FILE                      "${DESIGN_REF_DATA_PATH}/tech/star_rcxt/saed32nm_tf_itf_tluplus.map"  ;#  Mapping file for TLUplus
set TLUPLUS_MAX_FILE              "${DESIGN_REF_DATA_PATH}/tech/star_rcxt/saed32nm_1p9m_Cmax.tluplus"  ;#  Max TLUplus file
set TLUPLUS_MIN_FILE              "${DESIGN_REF_DATA_PATH}/tech/star_rcxt/saed32nm_1p9m_Cmin.tluplus"  ;#  Min TLUplus file

set MIN_ROUTING_LAYER            "M2"   ;# Min routing layer
set MAX_ROUTING_LAYER            "M8"   ;# Max routing layer

set LIBRARY_DONT_USE_FILE        ""   ;# Tcl file with library modifications for dont_use

##########################################################################################
# Multivoltage Common Variables
#
# Define the following multivoltage common variables for the reference methodology scripts 
# for multivoltage flows. 
# Use as few or as many of the following definitions as needed by your design.
##########################################################################################

set PD1                          ""           ;# Name of power domain/voltage area  1
set VA1_COORDINATES              {}           ;# Coordinates for voltage area 1
set MW_POWER_NET1                "VDD1"       ;# Power net for voltage area 1

set PD2                          ""           ;# Name of power domain/voltage area  2
set VA2_COORDINATES              {}           ;# Coordinates for voltage area 2
set MW_POWER_NET2                "VDD2"       ;# Power net for voltage area 2

set PD3                          ""           ;# Name of power domain/voltage area  3
set VA3_COORDINATES              {}           ;# Coordinates for voltage area 3
set MW_POWER_NET3                "VDD3"       ;# Power net for voltage area 3

set PD4                          ""           ;# Name of power domain/voltage area  4
set VA4_COORDINATES              {}           ;# Coordinates for voltage area 4
set MW_POWER_NET4                "VDD4"       ;# Power net for voltage area 4


