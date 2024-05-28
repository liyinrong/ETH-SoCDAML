source -echo -verbose ../../scripts_block/rm_setup/common_setup.tcl
source -echo -verbose ../../scripts_block/rm_setup/dc_setup_filenames.tcl

puts "RM-Info: Running script [info script]\n"

#################################################################################
# Design Compiler Reference Methodology Setup for Top-Down Flow
# Script: dc_setup.tcl
# Version: M-2016.12-SP4 (July 17, 2017)
# Copyright (C) 2007-2017 Synopsys, Inc. All rights reserved.
#################################################################################



#################################################################################
# Setup Variables
#
# Modify settings in this section to customize your Design Compiler Reference 
# Methodology run.
# Portions of dc_setup.tcl may be used by other tools so program name checks
# are performed where necessary.
#################################################################################

  # The following setting removes new variable info messages from the end of the log file
  set_app_var sh_new_variable_message false

if {$synopsys_program_name == "dc_shell" || $synopsys_program_name == "de_shell"}  {

  #################################################################################
  # Design Compiler and  DC Explorer Setup Variables
  #################################################################################

  # Use the set_host_options command to enable multicore optimization to improve runtime.
  # This feature has special usage and license requirements.  Refer to the 
  # "Support for Multicore Technology" section in the Design Compiler User Guide
  # for multicore usage guidelines.
  # Note: This is a DC Ultra feature and is not supported in DC Expert.

  # For the Lynx-compatible reference methodology, multicore optimization is configured
  # by the following setting at the beginning of the dc.tcl script.
  # set TEV(num_cores) 4

  if {[info exists TEV(num_cores)]} {
    set_host_options -max_cores $TEV(num_cores)
  }

  # Change alib_library_analysis_path to point to a central cache of analyzed libraries
  # to save runtime and disk space.  The following setting only reflects the
  # default value and should be changed to a central location for best results.

  set_app_var alib_library_analysis_path .

  # Add any additional Design Compiler variables needed here

  #################################################################################
  # DC Explorer Specific Setup Variables
  #################################################################################

  if {[shell_is_in_exploration_mode]} {
    # Uncomment the following setting to use top-level signal ports instead of a  
    # isolation power controller.

    # set_app_var upf_auto_iso_enable_source top_level_port

    # Uncomment the following setting to allow DC Explorer to perform optimization with
    # physical design data. 

    # set_app_var de_enable_physical_flow true 

    # Add any additional DC Explorer variables needed here

  }
}

# Note: When autoread is used ${RTL_SOURCE_FILES} can include a list of
#       both directories and files.


set RTL_SOURCE_FILES  ""      ;# Enter the list of source RTL files if reading from RTL

# The following variables are used by scripts in the rm_dc_scripts folder to direct 
# the location of the output files.

if {[info exists SEV(rpt_dir)]} {
  set REPORTS_DIR $SEV(rpt_dir)
} else {
  # Alternative null location is used only when directly running dc_setup.tcl for analysis
  set REPORTS_DIR "../rpts/null"
}
if {[info exists SEV(dst_dir)]} {
  set RESULTS_DIR $SEV(dst_dir)
} else {
  # Alternative null location is used only when directly running dc_setup.tcl for analysis
  set RESULTS_DIR "../work/null"
}

file mkdir ${REPORTS_DIR}
file mkdir ${RESULTS_DIR}

#set variable OPTIMIZATION_FLOW from following RM+ flows
#High Performance Low Power (hplp)
#High Connectivity (hc)
#Runtime Exploration (rtm_exp)

######### BEGIN CHANGED FOR ASIP SCRIPTS ############
# Original:
# set OPTIMIZATION_FLOW  "" ;# Specify one flow out of hplp | hc | rtm_exp
# Changed to:
if {[info exists env(ASIP_OPTIMIZATION_FLOW)]} {
  puts "INFO: Using ASIP_OPTIMIZATION_FLOW $::env(ASIP_OPTIMIZATION_FLOW)"
  set OPTIMIZATION_FLOW  $::env(ASIP_OPTIMIZATION_FLOW)
} else {
  set OPTIMIZATION_FLOW  "" ;# Specify one flow out of hplp | hc | rtm_exp
}
######### END CHANGED FOR ASIP SCRIPTS ############


#################################################################################
# Search Path Setup
#
# Set up the search path to find the libraries and design files.
#################################################################################

  set_app_var search_path ". ${ADDITIONAL_SEARCH_PATH} $search_path"

#################################################################################
# Library Setup
#
# This section is designed to work with the settings from common_setup.tcl
# without any additional modification.
#################################################################################

  # Milkyway variable settings

  # Make sure to define the Milkyway library variable
  # mw_design_library, it is needed by write_milkyway command

  set mw_reference_library ${MW_REFERENCE_LIB_DIRS}
  set mw_design_library ${RESULTS_DIR}/${DCRM_MW_LIBRARY_NAME}

  set mw_site_name_mapping { {CORE unit} {Core unit} {core unit} }

# The remainder of the setup below should only be performed in Design Compiler or DC Explorer
if {$synopsys_program_name == "dc_shell" || $synopsys_program_name == "de_shell"}  {

  set_app_var target_library ${TARGET_LIBRARY_FILES}
  set_app_var synthetic_library dw_foundation.sldb


  set_app_var link_library "* $target_library $ADDITIONAL_LINK_LIB_FILES $synthetic_library"

  # Set min libraries if they exist
  foreach {max_library min_library} $MIN_LIBRARY_FILES {
    set_min_library $max_library -min_version $min_library
  }

  if {[shell_is_in_topographical_mode]} {

    # To activate the extended layer mode to support 4095 layers uncomment the extend_mw_layers command 
    # before creating the Milkyway library. The extended layer mode is permanent and cannot be reverted 
    # back to the 255 layer mode once activated.

    # extend_mw_layers

    # Only create new Milkyway design library if it doesn't already exist
    if {![file isdirectory $mw_design_library ]} {
      create_mw_lib   -technology $TECH_FILE \
                      -mw_reference_library $mw_reference_library \
                      $mw_design_library
    } else {
      # If Milkyway design library already exists, ensure that it is consistent with specified Milkyway reference libraries
      set_mw_lib_reference $mw_design_library -mw_reference_library $mw_reference_library
    }

    open_mw_lib     $mw_design_library

    check_library > ${REPORTS_DIR}/${DCRM_CHECK_LIBRARY_REPORT}

    set_tlu_plus_files -max_tluplus $TLUPLUS_MAX_FILE \
                       -min_tluplus $TLUPLUS_MIN_FILE \
                       -tech2itf_map $MAP_FILE

    check_tlu_plus_files
  }

  #################################################################################
  # Library Modifications
  #
  # Apply library modifications after the libraries are loaded.
  #################################################################################

  if {[file exists [which ${LIBRARY_DONT_USE_FILE}]]} {
    puts "RM-Info: Sourcing script file [which ${LIBRARY_DONT_USE_FILE}]\n"
    source -echo -verbose ${LIBRARY_DONT_USE_FILE}
  }
}

puts "RM-Info: Completed script [info script]\n"


