## HEADER $Id: lcrm_setup.tcl,v 1.3 2017/05/31 23:25:32 sshukla Exp $
#########################################################################################
# Lynx Compatible Reference Methodology (LCRM) Setup File
# Script: lcrm_setup.tcl
# Version: M-2016.12-SP4 (July 17, 2017)
# Copyright (C) 2010-2017 Synopsys, Inc. All rights reserved.
#########################################################################################
## DESCRIPTION:
## * This script provides LCRM scripts access to a subset of Lynx functions.
## * It manages variables and metric procedures used by the LCRM scripts when
## * running standalone or within the Lynx Design System.
## * 
## * Automation Variables:
## * The LCRM scripts utilize some variables for managing directory structures used
## * for log files, reports, and output data. These variables are hardcoded for correct
## * operation when running LCRM scripts standalone. When running the LCRM scripts within
## * the Lynx Design System, these variables are under control of the flow automation.
## * 
## * Metrics:
## * The lcrm_setup.tcl contains procedures to support extraction of metric information
## * about the design and system. These appear as METRIC strings in the log file. When
## * running within the Lynx Design System, these METRIC messages are extracted and 
## * transferred to a database server. The Lynx Management Cockpit application can be used
## * to analyze and generate reports from the collected data.
## * 
## * Users of LCRM scripts need not modify any of the contents of this script or
## * related references contained in each task script. These Lynx Compatible functions
## * work when in Lynx and when running standalone and do not add any appreciable runtime
## * overhead.
## -----------------------------------------------------------------------------


## -----------------------------------------------------------------------------
## Lynx System Variable. 
## When running in Lynx, these SEV* variables are configured in the GUI and saved
## in the system_*.tcl file. When running outside of Lynx, a number of SEV(*) variables 
## need to be set to values to avoid errors in some of the metric procedures.
## The environment variable LYNX_RTL_PRESENT is set automatically when Lynx is run and
## is used here to setup variables according to the runtime environment
## -----------------------------------------------------------------------------


## enable consistent script error handling across tools
set sh_continue_on_error true

## not all tool tcl shells handle the source options. StarRCXT is one example needing special handling
if {[info exists synopsys_program_name]} {
  if { $synopsys_program_name=="tcl" } {
    set source_options ""
  } else {
    set source_options "-e -v"
  }
} else {
  # tcl program does not support -e -v options
  set source_options ""
}

## Support of DC Explorer uses same program name as dc_shell. This is done in the LCRM
## to provide compatibility with procedures in this file that only rely on dc_shell.
if { [info exists synopsys_program_name] && $synopsys_program_name == "de_shell" } {
  set_app_var de_rename_shell_name_to_dc_shell true
  set_app_var synopsys_program_name dc_shell
}

## -----------------------------------------------------------------------------
## SVARs needing to be initialized for proper metric function
## -----------------------------------------------------------------------------
set SVAR(metrics,path_group_ignore_list_setup) ""
set SVAR(metrics,path_group_ignore_list_hold) ""
set SVAR(metrics,max_path_group_count) 5

if { [info exists env(LYNX_RTM_PRESENT)] } {

  puts "RM-Info: Lynx is setting SEV variables."
  set LYNX(rtm_present) 1
  set system_files [list ../../scripts_global/conf/system.tcl \
                         ../../scripts_global/conf/system_common.tcl \
                         ../../scripts_global/conf/system_block.tcl]
  foreach ind_system_file $system_files {
    if {[file exists $ind_system_file]} {
      eval source $source_options $ind_system_file
      puts "sourcing $ind_system_file"
    }
  }

  ## -----------------------------------------------------------------------------
  ## Allow Lynx to define and override dynamic System Environment Variables
  ## -----------------------------------------------------------------------------

  eval source $source_options $env(LYNX_VARFILE_SEV)

} else {

  set LYNX(rtm_present) 0
  puts "RM-Info: Setting default SEV variables for running outside of Lynx."
  set SEV(project_dir)    my_project_dir
  set SEV(project_name)   lcrm
  set SEV(release_dir)    my_release_dir
  set SEV(techlib_dir)    my_techlib_dir
  ## keep generating them for QV and DT
  set SEV(metrics_enable) 1
  set SEV(log_file)       my_log_file
  set SEV(ver_star)       NaM
  set SEV(task)           [file root [file tail $SEV(script_file)]]
  set SEV(aro_enable)     0

}


## Remaining SEVs are calculated the same whether running standalone or in Lynx

if { ![info exist SEV(dont_run)] }      { set SEV(dont_run) 0 }
if { ![info exist SEV(dont_exit)] }     { set SEV(dont_exit) 0 }
if { ![info exist SEV(analysis_task)] } { set SEV(analysis_task) 0 }

set SEV(tmp_dir) [pwd]

set SEV(workarea_dir)   [file dirname [file dirname [file dirname [file dirname [file dirname $SEV(tmp_dir)]]]]]
set SEV(techlib_name)   [file tail  [file dirname [file dirname [file dirname $SEV(tmp_dir)]]]]

set SEV(block_dir)      [file dirname [file dirname $SEV(tmp_dir)]]
set SEV(block_name)     [file tail $SEV(block_dir)]
set SEV(step_dir)       [file dirname $SEV(tmp_dir)]
set SEV(step)           [file tail $SEV(step_dir)]
set SEV(gscript_dir)    [file normalize $SEV(tmp_dir)/../../scripts_global]
set SEV(tscript_dir)    [file normalize $SEV(tmp_dir)/../../scripts_global/$SEV(techlib_name)]
set SEV(bscript_dir)    [file normalize $SEV(tmp_dir)/../../scripts_block]
set SEV(work_dir)       [file normalize $SEV(tmp_dir)/../work]
set SEV(src_dir)        [file normalize $SEV(tmp_dir)/../work/$SEV(src)]
set SEV(dst_dir)        [file normalize $SEV(tmp_dir)/../work/$SEV(dst)]
set SEV(log_dir)        [file normalize $SEV(tmp_dir)/../logs/$SEV(dst)]
set SEV(rpt_dir)        [file normalize $SEV(tmp_dir)/../rpts/$SEV(dst)]

## -----------------------------------------------------------------------------
## The SVAR(design_name) must be undefined at this point in the script
## -----------------------------------------------------------------------------

set SVAR(design_name)  undefined

if { [info exists env(LYNX_RTM_PRESENT)] } {

  if { ![info exists SVAR(misc,early_complete_enable)] } { set SVAR(misc,early_complete_enable) 0 }

  ## -----------------------------------------------------------------------------
  ## Allow Lynx to override Task Environment Variables
  ## -----------------------------------------------------------------------------

  puts "RM-Info: Lynx is setting any TEV overrides from the RTM environment"
  eval source $source_options $env(LYNX_VARFILE_TEV)

} else {
  ## disable early_complete feature for all standalone execution
  set SVAR(misc,early_complete_enable) 0
}

## -----------------------------------------------------------------------------
## These Task variables that need to be assigned for proper standalone behavior but
## that are controlled in the Lynx environment by the content of LYNX_VARFILE_TEV file
## sourced below
## -----------------------------------------------------------------------------

set TEV(vx_enable) 0
set TEV(scenario) DEFAULT_SCENARIO
set TEV(report_level) NORMAL

## -----------------------------------------------------------------------------
## These procedures/variables are not uniformly available
## for all tools used in the flow. This section of code creates
## the procedures/variables if they are not available.
## -----------------------------------------------------------------------------

if { ![info exists synopsys_root] } {
set synopsys_root "synopsys_root"
}

if { ![info exists synopsys_program_name] } {
set synopsys_program_name "tcl"
}

if { $synopsys_program_name == "tcl" } {
set sh_product_version [info patchlevel]
}

if { [info command parse_proc_arguments] != "parse_proc_arguments" } {
proc parse_proc_arguments { cmdSwitch procArgs optsRef } {
upvar $optsRef opts
if { $cmdSwitch == "-args" } {
foreach arg $procArgs {
if { [string index $arg 0] == "-" } {
  set curArg $arg
  set opts($curArg) 1
} else {
  if { [info exists curArg] } {
    set opts($curArg) $arg
    unset curArg
  } else {
    puts "SNPS_ERROR: Found invalid argument: '$arg', with no preceding switch."
    puts "SNPS_ERROR: Called from procedure: [lindex [info level -1] 0]"
  }
}
}
}
}
}

if { [info command define_proc_attributes] != "define_proc_attributes" } {
proc define_proc_attributes args {}
}

if { [info command date] != "date" } {
proc date {} {
return [clock format [clock seconds] -format {%a %b %e %H:%M:%S %Y}]
}
}

## -----------------------------------------------------------------------------
## sproc_script_stop: LCRM customized version
## -----------------------------------------------------------------------------

proc sproc_script_stop { args } {

  global LYNX SEV synopsys_program_name

  set options(-exit) 0
  set options(-mem_mb) -1

  parse_proc_arguments -args $args options

  if {[info exists ::DESIGN_NAME]} {
    ## LCRM generates the corrected SYS.BLOCK metric reflecting DESIGN_NAME
    sproc_msg -info "METRIC | STRING SYS.BLOCK          | $::DESIGN_NAME"
  }

  ## -------------------------------------
  ## Generate metrics for each of the TEV variables.
  ## -------------------------------------

  set generate_metrics_for_tev 0

  if { $generate_metrics_for_tev } {

    set name_list [lsort [array names TEV]]
    foreach name $name_list {
      set length [llength $TEV($name)]
      if { $length == 0 } {
        sproc_msg -info "METRIC | STRING TEV.$name | NULL_VALUE"
      } else {
        sproc_msg -info "METRIC | STRING TEV.$name | $TEV($name)"
      }
    }

  }

  ## -------------------------------------
  ## Generate end-of-script metrics.
  ## -------------------------------------

  sproc_metric_system -end_of_script -mem_mb $options(-mem_mb)

  ## -------------------------------------
  ## Exit processing.
  ## -------------------------------------

  if { $LYNX(rtm_present) } {
    if { $SEV(dont_exit) } {
      ## User is requesting that no exit be performed.
    } else {
      ## Check to see if explicit exit is being requested.
      if { $options(-exit) } {
        if { $synopsys_program_name == "cdesigner" } {
          exit -force 1
        } elseif { $synopsys_program_name == "spyglass" } {
          ## avoid auto session saving
          exit -force
        } elseif { $synopsys_program_name == "vcst" } {
          ## avoid auto session saving
          exit -force
        } else {
          exit
        }
      }
    }
  } else {
    if { $synopsys_program_name == "cdesigner" } {
      exit -force 1
    } else {
      exit
    }
  }

}

define_proc_attributes sproc_script_stop \
  -info "Standard procedure for ending a script." \
  -define_args {
  {-exit  "Perform an exit." "" boolean optional}
  {-mem_mb "The amount of memory used by the task. (Integer number of MBs)" AnInt int optional}
}

## -----------------------------------------------------------------------------
## sproc_generate_metrics:
## -----------------------------------------------------------------------------

proc sproc_generate_metrics {} {

sproc_pinfo -mode start

global env SEV SVAR TEV
  global synopsys_program_name
  global power_enable_analysis
  global case_analysis_sequential_propagation
  global DESIGN_NAME DCRM_MCMM_SCENARIOS_SETUP_FILE
  global REPORTS_DIR

  file mkdir $SEV(rpt_dir)

  switch $synopsys_program_name {
    dc_shell {
      source ../../scripts_block/lcrm_setup/metric_reports_dc.tcl
      #sproc_metric_main -metrics_design -metrics_power -metrics_sta
    }
    icc_shell {
      set my_all_active_scenarios [all_active_scenarios]
      source ../../scripts_block/lcrm_setup/metric_reports_icc.tcl
      if { 0 && [regexp {clock_opt_} $SEV(script_file) ] && [llength $my_all_active_scenarios] > 0 } {
        #sproc_metric_main -metrics_design -metrics_power -metrics_sta -metrics_cts
      } else {
        #sproc_metric_main -metrics_design -metrics_power -metrics_sta
      }
    }
    icc2_shell {
      set my_all_active_scenarios [all_scenarios]
      source ../../scripts_block/lcrm_setup/metric_reports_icc2.tcl
      if { 0 && [regexp {clock_opt_} $SEV(script_file) ] && [llength $my_all_active_scenarios] > 0 } {
        #sproc_metric_main -metrics_design -metrics_power -metrics_sta -metrics_cts
      } else {
        #sproc_metric_main -metrics_design -metrics_power -metrics_sta
      }
    }
    pt_shell {
      set RPT(basename) $SEV(rpt_dir)/pt.$TEV(scenario)
      source ../../scripts_block/lcrm_setup/metric_reports_pt.tcl
      if { $power_enable_analysis } {
        #sproc_metric_main -metrics_sta -scenario_name $TEV(scenario) -metrics_power
      } else {
        #sproc_metric_main -metrics_sta -scenario_name $TEV(scenario)
      }
    }
    tmax_tcl {
      redirect ${REPORTS_DIR}/tmax_rm.report_summaries {
        report_summaries 
      }
      #sproc_metric_atpg
    }
  }

  sproc_pinfo -mode stop

}

## -----------------------------------------------------------------------------
## sproc_early_complete:
## -----------------------------------------------------------------------------

proc sproc_early_complete  { args } {

  sproc_pinfo -mode start

  global SEV SVAR env LYNX
  global NDM

  set options(-enable) 1
  parse_proc_arguments -args $args options

  ## early complete currently not supported for ICC2
  if { [info exists NDM(early_complete_save,check.hier_boolean)] && ( $NDM(early_complete_save,check.hier_boolean) == 1 ) } {
    sproc_msg -warning "sproc_early_complete : NDM(early_complete_save,check.hier_boolean) detected."
    sproc_msg -warning "sproc_early_complete : early complete is not supported for hierarchical designs so skipping."
    set options(-enable) 0
  }

  if { $SVAR(misc,early_complete_enable) && ( $options(-enable) == 1 ) } {

    sproc_msg -warning "Early complete enabled."

    if { $LYNX(rtm_present) } {
      ## set socket_host   $env(LYNX_SOCKET_HOST)
      ## set socket_port   $env(LYNX_SOCKET_PORT)
      set file_early [file rootname $SEV(log_file)].early

      exec $env(SYNOPSYS_RTM)/auxx/rtm/rtm_touch.tcl $LYNX(socket_host) $LYNX(socket_port) $file_early
    }

  } else {

    sproc_msg -warning "Early complete disabled."

  }

  sproc_pinfo -mode stop

}

define_proc_attributes sproc_early_complete  \
  -info "Procedure to signal early completion of task to RTM." \
  -define_args {
  {-enable      "Optionally enable / disable early complete (1 enable, 0 disable)." AnInt int optional}
}

## -----------------------------------------------------------------------------
## sproc_metric_system:
## -----------------------------------------------------------------------------

proc sproc_metric_system { args } {

  sproc_pinfo -mode start

  global env SEV SVAR TEV DEV
  global synopsys_program_name sh_product_version
  global aux_synopsys_program_name aux_sh_product_version
  global SNPS_time_start SNPS_time_stop SNPS_rpt_time_elapsed SNPS_machine_name

  set options(-start_of_script) 0
  set options(-end_of_script) 0
  set options(-mem_mb) -1

  parse_proc_arguments -args $args options

  if { $options(-start_of_script) } {

    ## -------------------------------------
    ## Determine startTime
    ## -------------------------------------

    set SNPS_time_start [clock seconds]

    ## -------------------------------------
    ## Determine taskType
    ## -------------------------------------

    if { $SEV(dont_run) || $SEV(dont_exit) } {
      if { $SEV(analysis_task) } {
        set taskType ANALYZE_INTERACTIVE
      } else {
        set taskType OPTIMIZE_INTERACTIVE
      }
    } else {
      if { $SEV(analysis_task) } {
        set taskType ANALYZE
      } else {
        set taskType OPTIMIZE
      }
    }

    ## -------------------------------------
    ## Print SYS metrics
    ## -------------------------------------

    sproc_msg -info "METRIC | TIMESTAMP SYS.START_TIME       | [clock seconds]"
    sproc_msg -info "METRIC | STRING    SYS.USER             | [exec whoami]"
    sproc_msg -info "METRIC | STRING    SYS.PROJECT_NAME     | $SEV(project_name)"
    sproc_msg -info "METRIC | STRING    SYS.BLOCK_DIR        | $SEV(block_dir)"
    sproc_msg -info "METRIC | STRING    SYS.BLOCK            | $SVAR(design_name)"
    sproc_msg -info "METRIC | STRING    SYS.STEP             | $SEV(step)"
    sproc_msg -info "METRIC | STRING    SYS.SRC              | $SEV(src)"
    sproc_msg -info "METRIC | STRING    SYS.DST              | $SEV(dst)"
    sproc_msg -info "METRIC | STRING    SYS.TASK             | $SEV(task)"
    sproc_msg -info "METRIC | STRING    SYS.TASK_TYPE        | $taskType"

    ## -------------------------------------
    ## Print INFO metrics
    ## -------------------------------------

    sproc_msg -info "METRIC | STRING    INFO.START_TIME      | [date]"
    set SNPS_machine_name [exec uname -n]
    sproc_msg -info "METRIC | STRING    INFO.MACHINE         | $SNPS_machine_name"

  }

  if { $options(-end_of_script) } {

    ## -------------------------------------
    ## Determine jobId
    ## -------------------------------------

    set jobId unknown
    if { [info exists env(LYNX_JOB)] } {
      if { $SEV(js_method) == "lsf" } {
        if { [info exists env(LSB_JOBID)] } {
          set jobId $env(LSB_JOBID)
        }
      }
      if { $SEV(js_method) == "grd" } {
        if { [info exists env(JOB_ID)] } {
          set jobId $env(JOB_ID)
        }
      }
    }

    ## -------------------------------------
    ## Determine toolName
    ## -------------------------------------

    if { [info exists aux_synopsys_program_name] && ($aux_synopsys_program_name != "") } {
      set toolName $aux_synopsys_program_name
    } elseif { [info exists synopsys_program_name] && ($synopsys_program_name != "") } {
      set toolName $synopsys_program_name
    } else {
      set toolName toolNameUnknown
    }

    ## -------------------------------------
    ## Determine toolVersion
    ## -------------------------------------

    if { [info exists aux_sh_product_version] && ($aux_sh_product_version != "") } {
      set toolVersion $aux_sh_product_version
    } elseif { [info exists sh_product_version] && ($sh_product_version != "") } {
      set toolVersion $sh_product_version
    } else {
      set toolVersion toolVersionUnknown
    }

    ## -------------------------------------
    ## Determine licenseList
    ## -------------------------------------

    set licenseList [list]
    unset -nocomplain license_string_flag
    if { [info command list_licenses] == "list_licenses" } {
      redirect -var report {
        list_licenses
      }
      set lines [split $report "\n"]
      foreach line $lines {
        if { [regexp {^\s*$} $line] || [regexp {Licenses in use:} $line]} {
          if {[regexp {Licenses in use:} $line]} {
            set license_string_flag 1
          }
          continue
        }
        if { [regexp {^\s+} $line] } {
          set the_license [regsub -all {\s} $line {}]
          lappend licenseList $the_license
        } elseif { ![regexp {^1} $line] } {
          ## ICC2 format
          set the_license $line
          lappend licenseList $the_license
        }
      }

    } elseif { $synopsys_program_name == "tmax_tcl" } {
      redirect -var report {
        report_licenses
      }
      set lines [split $report "\n"]
      foreach line $lines {
        if { [regexp {^\s*$} $line]|| [regexp {Licenses in use:} $line] } {
            if {[regexp {Licenses in use:} $line]} {
                set license_string_flag 1
            }
          continue
        }
        if { [regexp {^\s+} $line] } {
          set the_license [regsub -all {\s} $line {}]
          lappend licenseList $the_license
        }
      }
    }

    if { [llength $licenseList] == 0 } {
      if { [info exists license_string_flag] && $license_string_flag == 1} {
        set licenselist ""
      } else {
        set licenseList [list LicenseDataUnavailable]
      }
    }

    ## -------------------------------------
    ## Determine TEV() info about jobs/cores
    ## -------------------------------------

    if { ![info exists TEV(num_jobs)] }        { set TEV(num_jobs) 1 }
    if { ![info exists TEV(num_cores)] }       { set TEV(num_cores) 1 }
    if { ![info exists TEV(num_child_jobs)] }  { set TEV(num_child_jobs) 1 }
    if { ![info exists TEV(num_child_cores)] } { set TEV(num_child_cores) 1 }

    ## -------------------------------------
    ## Determine memory/cputime info
    ## -------------------------------------

    set memory_used NaM
    set cputime_s NaM

    switch $synopsys_program_name {
      pt_shell {
        if { [info exists SEV(pt_dmsa_slave)] } {
          ## -------------------------------------
          ## If running DMSA, report the max memory across the master and slaves.
          ## -------------------------------------
          remote_execute { set slave_mem_kb [mem] }
          get_distributed_variables { slave_mem_kb }
          set mem_kb_list [mem]
          foreach session [array names slave_mem_kb] {
            lappend mem_kb_list $slave_mem_kb($session)
          }
          set mem_kb [lindex [lsort -integer -decreasing $mem_kb_list] 0]
        } else {
          set mem_kb [mem]
        }
        set mem_b [expr $mem_kb * pow(2,10)]
        set mem_mb [expr int($mem_b / pow(2,20)) + 1]
        set memory_used $mem_mb
        set cputime_s [cputime]
      }
      ptc_shell {
        set mem_kb [mem]
        set mem_b [expr $mem_kb * pow(2,10)]
        set mem_mb [expr int($mem_b / pow(2,20)) + 1]
        set memory_used $mem_mb
        set cputime_s [cputime]
      }
      dc_shell -
      icc_shell {
        set mem_kb [mem -all]
        set mem_b [expr $mem_kb * pow(2,10)]
        set mem_mb [expr int($mem_b / pow(2,20)) + 1]
        set memory_used $mem_mb
        set cputime_s [cputime]
      }
      icc2_shell -
      icc2_lm_shell -
      fm_shell {
        set mem_kb [mem]
        set mem_b [expr $mem_kb * pow(2,10)]
        set mem_mb [expr int($mem_b / pow(2,20)) + 1]
        set memory_used $mem_mb
        set cputime_s [cputime]
      }
      vcst {
        set mem_mb [get_resource_cost -tcl -mem]
        set memory_used $mem_mb
        set cputime_s [get_resource_cost -tcl -cpu]
      }
    }

    if { $options(-mem_mb) >= 0 } {
      set memory_used $options(-mem_mb)
    }

    ## -------------------------------------
    ## Determine time info
    ## -------------------------------------

    set SNPS_time_stop [clock seconds]
    set SNPS_time_total_seconds [expr $SNPS_time_stop - $SNPS_time_start]
    set totalTime [sproc_metric_time_elapsed -start $SNPS_time_start -stop $SNPS_time_stop]

    if { [info exists SNPS_rpt_time_elapsed] } {
      set SNPS_time_stop_minus_reports [expr $SNPS_time_stop - $SNPS_rpt_time_elapsed]
      set SNPS_time_total_minus_reports_seconds [ expr $SNPS_time_stop_minus_reports - $SNPS_time_start]
      set reportTime [sproc_metric_time_elapsed -start $SNPS_time_start -stop $SNPS_time_stop_minus_reports]
    } else {
      set reportTime "unknown"
    }

    ## -------------------------------------
    ## Output ARO information
    ## -------------------------------------

    if { $SEV(aro_enable) && ($jobId != "unknown") && ($memory_used != "NaM") } {

      set log_file [file normalize $SEV(log_file)]
      set file_part_org [file tail $log_file]
      set dir_part_org  [file dirname $log_file]
      set file_part_new .[file rootname $file_part_org].metrics.aro_mem
      set aro_mem_file $dir_part_org/$file_part_new

      file delete -force $aro_mem_file
      set fid [open $aro_mem_file w]
      puts $fid "INFO.MEMORY_USED|INTEGER|$memory_used"
      close $fid

      sproc_send_aro_mem -job_id $jobId -memory_used $memory_used

    }

    ## -------------------------------------
    ## -------------------------------------
    ## Resource Summary - Gather the data
    ## -------------------------------------
    ## -------------------------------------

    set lynx_resource_name_list [list]
    unset -nocomplain lynx_resource_value

    set name "Host"
    set value $SNPS_machine_name
    lappend lynx_resource_name_list $name
    set lynx_resource_value($name) $value

    set name "Tool"
    set value $toolName
    lappend lynx_resource_name_list $name
    set lynx_resource_value($name) $value

    set name "Version"
    set value $toolVersion
    lappend lynx_resource_name_list $name
    set lynx_resource_value($name) $value

    set name "Cores"
    set value $TEV(num_cores)
    lappend lynx_resource_name_list $name
    set lynx_resource_value($name) $value

    set wall_time [expr $SNPS_time_stop - $SNPS_time_start]
    set name "Wall Time"
    set value $wall_time
    lappend lynx_resource_name_list $name
    set lynx_resource_value($name) $value

    if { $cputime_s == "NaM" } {
      set cputime_s NA
      set cputime_e NA
    } else {
      set cputime_s [expr int($cputime_s)]
      if { ($cputime_s >= 10) && ($wall_time >= 10) } {
        set total_wall_time [expr $TEV(num_cores) * $wall_time]
        set cputime_e [format "%.2f" [expr double($cputime_s) / double($total_wall_time) * 100.0]]
      } else {
        set cputime_e NA
      }
    }
    set name "CPU Time"
    set value $cputime_s
    lappend lynx_resource_name_list $name
    set lynx_resource_value($name) $value

    set name "CPU Efficiency"
    set value $cputime_e
    lappend lynx_resource_name_list $name
    set lynx_resource_value($name) $value

    if { $memory_used == "NaM" } {
      set value_m NA
    } else {
      set value_m $memory_used
    }
    set name "Mem"
    set value $value_m
    lappend lynx_resource_name_list $name
    set lynx_resource_value($name) $value

    set name "User"
    set value [exec whoami]
    lappend lynx_resource_name_list $name
    set lynx_resource_value($name) $value

    set name "Logfile"
    set value $SEV(log_file)
    lappend lynx_resource_name_list $name
    set lynx_resource_value($name) $value

    set name "Stop Time"
    set value $SNPS_time_stop
    lappend lynx_resource_name_list $name
    set lynx_resource_value($name) $value

    ## -------------------------------------
    ## Resource Summary - Create lynx_task file
    ## -------------------------------------

    ## Skip for view tasks

    if { [info exists SEV(task_being_viewed)] } {

      ## Skip output for view tasks

    } else {

      set file $SEV(rpt_dir)/.$SEV(task).lynx_task

      file delete -force $file

      set fid [open $file w]

      if { [info exists SEV(flow_order)] } {
        puts $fid "flow_order|$SEV(flow_order)"
      } else {
        puts $fid "flow_order|0"
      }
      foreach lynx_resource_name $lynx_resource_name_list {
        puts $fid "$lynx_resource_name|$lynx_resource_value($lynx_resource_name)"
      }

      close $fid

    }

    ## -------------------------------------
    ## Print INFO metrics
    ## -------------------------------------

    sproc_msg -info "METRIC | INTEGER   INFO.NUM_JOBS        | $TEV(num_jobs)"
    sproc_msg -info "METRIC | INTEGER   INFO.NUM_CORES       | $TEV(num_cores)"
    sproc_msg -info "METRIC | INTEGER   INFO.NUM_CHILD_JOBS  | $TEV(num_child_jobs)"
    sproc_msg -info "METRIC | INTEGER   INFO.NUM_CHILD_CORES | $TEV(num_child_cores)"
    sproc_msg -info "METRIC | INTEGER   INFO.MEMORY_USED     | $memory_used"
    sproc_msg -info "METRIC | STRING    INFO.STOP_TIME       | [date]"
    sproc_msg -info "METRIC | STRING    INFO.TOTAL_TIME      | $totalTime"
    sproc_msg -info "METRIC | STRING    INFO.REPORT_TIME     | $reportTime"

    ## -------------------------------------
    ## Print SYS metrics
    ## -------------------------------------

    sproc_msg -info "METRIC | STRING    SYS.JOB_ID           | $jobId"
    sproc_msg -info "METRIC | STRING    SYS.TOOL_NAME        | $toolName"
    sproc_msg -info "METRIC | STRING    SYS.TOOL_VERSION     | $toolVersion"
    sproc_msg -info "METRIC | STRING    SYS.LICENSES         | $licenseList"
    sproc_msg -info "METRIC | TIMESTAMP SYS.STOP_TIME        | $SNPS_time_stop"

  }

  sproc_pinfo -mode stop
}

define_proc_attributes sproc_metric_system \
  -info "Used to generate metrics related to task execution." \
  -define_args {
  {-start_of_script "Indicates routine is being called at start of script execution." "" boolean optional}
  {-end_of_script "Indicates routine is being called at end of script execution." "" boolean optional}
  {-mem_mb "The amount of memory used by the task. (Integer number of MBs)" AnInt int optional}
}

## -----------------------------------------------------------------------------
## sproc_metric_time_elapsed:
## -----------------------------------------------------------------------------

proc sproc_metric_time_elapsed { args } {

  sproc_pinfo -mode start

  set options(-start) 0
  set options(-stop) 0
  parse_proc_arguments -args $args options

  set seconds_in_day [expr 24 * 3600.0]
  set total_seconds [expr $options(-stop) - $options(-start)]
  set num_days_f [expr floor($total_seconds / $seconds_in_day)]
  set partial_day_f [expr ($total_seconds / $seconds_in_day) - $num_days_f]
  set num_days [expr int($num_days_f)]
  set partial_day [expr int($partial_day_f * $seconds_in_day)]
  set hms [clock format $partial_day -format %T -gmt true]
  set dhms [format "%02d:%s" $num_days $hms]

  sproc_pinfo -mode stop

  return "$dhms"

}

define_proc_attributes sproc_metric_time_elapsed \
  -info "Used to generate metrics related to duration of task execution." \
  -define_args {
  {-start "Indicates start time in seconds." "" int required}
  {-stop  "Indicates stop time in seconds." "" int required}
}

## -----------------------------------------------------------------------------
## sproc_msg:
## -----------------------------------------------------------------------------

proc sproc_msg { args } {

  ## Assigning default value of "bell" since that is never used.

  set options(-info)    "\b"
  set options(-warning) "\b"
  set options(-error)   "\b"
  set options(-fatal)   "\b"
  set options(-setup)   "\b"
  set options(-issue)   "\b"
  set options(-note)    "\b"
  set options(-header)  0
  parse_proc_arguments -args $args options

  if { $options(-fatal) != "\b" } {
    puts "SNPS_FATAL  : $options(-fatal)"
  } elseif { $options(-error) != "\b" } {
    puts "SNPS_ERROR  : $options(-error)"
  } elseif { $options(-warning) != "\b" } {
    puts "SNPS_WARNING: $options(-warning)"
  } elseif { $options(-issue) != "\b" } {
    puts "SNPS_ISSUE  : $options(-issue)"
  } elseif { $options(-note) != "\b" } {
    puts "SNPS_NOTE   : $options(-note)"
  } elseif { $options(-info)  != "\b" } {
    puts "SNPS_INFO   : $options(-info)"
  } elseif { $options(-setup) != "\b" } {
    puts "SNPS_SETUP  : $options(-setup)"
  } elseif { $options(-header) } {
    puts "SNPS_HEADER : ## ------------------------------------- "
  } else {
    puts "SNPS_ERROR  : Unrecognized arguments for sproc_msg : $args"
  }
}

define_proc_attributes sproc_msg \
  -info "Standard message printing procedure." \
  -define_args {
  {-fatal   "Fatal message"   AString string optional}
  {-error   "Error message"   AString string optional}
  {-warning "Warning message" AString string optional}
  {-issue   "Issue message"   AString string optional}
  {-note    "Note  message"   AString string optional}
  {-info    "Info message"    AString string optional}
  {-setup   "Setup message"   AString string optional}
  {-header  "Header flag"     ""      boolean optional}
}

## -----------------------------------------------------------------------------
## sproc_pinfo:
## -----------------------------------------------------------------------------

proc sproc_pinfo { args } {

  set options(-mode) ""
  parse_proc_arguments -args $args options

  set parent_level [expr [info level] - 1]
  set parent_name [lindex [info level $parent_level] 0]
  set parent_name [regsub {^::} $parent_name {}]

  set no_msg_list [list \
    sproc_refresh_file_system \
    sproc_metric_normalize \
    ]

  if { [lsearch $no_msg_list $parent_name] >= 0 } {
    ## Suppress messages for these procedures.
  } else {
    switch $options(-mode) {
      start   { sproc_msg -info "PROC_START : $parent_name" }
      stop    { sproc_msg -info "PROC_STOP  : $parent_name" }
      default { sproc_msg -error "Invalid argument to sproc_pinfo" }
    }
  }

}

define_proc_attributes sproc_pinfo \
  -info "Prints standard messages at procedure boundaries." \
  -define_args {
  {-mode "Specifies which message to print" AnOos one_of_string
    {required value_help {values {start stop}}}
  }
}

## -----------------------------------------------------------------------------
## sproc_pt_report_qor:
## -----------------------------------------------------------------------------

proc sproc_pt_report_qor { args } {

  global env SEV SVAR TEV
  global synopsys_program_name
  global sh_product_version
  global sh_dev_null
  global pt_shell_mode

  ## -------------------------------------
  ## Process arguments
  ## -------------------------------------

  set options(-scenario) [list]
  parse_proc_arguments -args $args options

  ## -------------------------------------
  ## Basic error checking
  ## -------------------------------------

  if { $synopsys_program_name != "pt_shell" } {
    puts "Error: This script only functions properly in PrimeTime."
    return 0
  }

  switch $pt_shell_mode {
    primetime {
      if { [llength $options(-scenario)] != 1 } {
        puts "Error: A single scenario must be specified."
        return 0
      }
    }
    primetime_slave {
      if { [llength $options(-scenario)] != 1 } {
        puts "Error: A single scenario must be specified."
        return 0
      }
      if { $options(-scenario) != [current_scenario] } {
        puts "Error: Slave session does not match selected scenario."
        return 0
      }
    }
    primetime_master {
      puts "Error: This command not implemented for PT DMSA Masters."
      return 0
    }
  }

  catch { set design [current_design] } result
  if { $design == "" } {
    return 0
  }

  ## -------------------------------------
  ## Variables to configure this procedure.
  ## -------------------------------------

  set max_path_count 100000

  ## -------------------------------------
  ## Print banner
  ## -------------------------------------

  puts "## -------------------------------------"
  puts "## Report : Lynx Design System version of 'report_qor' for Primetime"
  puts "## Design : [get_object_name $design]"
  puts "## Scenario(s):"
  foreach scenario $options(-scenario) {
    puts "##   $scenario"
  }
  puts "## Version: $sh_product_version"
  puts "## Date   : [date]"
  puts "## -------------------------------------"
  puts ""

  ## -------------------------------------
  ## Gather data for report. (per path_group)
  ## -------------------------------------

  set path_group_name_list [list]

  foreach_in_collection path_group_obj [get_path_groups] {

    set path_group_name [get_object_name $path_group_obj]

    set timing_path_max_worst [get_timing_paths -group $path_group_obj -delay_type max]

    set num_of_paths [sizeof_collection $timing_path_max_worst]

    if { $num_of_paths == 0 } {

      continue

    } else {

      lappend path_group_name_list $path_group_name

      ## -------------------------------------
      ## Max info (per path_group)
      ## -------------------------------------

      set pg($path_group_name,max,levels) [sproc_pt_report_qor_count_levels $timing_path_max_worst]
      set pg($path_group_name,max,delay) [get_attribute $timing_path_max_worst arrival]
      set slack [get_attribute $timing_path_max_worst slack]
      if { $slack == "" } {
        set pg($path_group_name,max,wns) 99.99
      } else {
        set pg($path_group_name,max,wns) $slack
      }

      set endpoint_clock [get_attribute $timing_path_max_worst endpoint_clock]
      if { $endpoint_clock == "" } {
        set pg($path_group_name,max,period) 0.0
      } else {
        set period [get_attribute $endpoint_clock period]
        if { $period == "" } {
          set pg($path_group_name,max,period) 0.0
        } else {
          set pg($path_group_name,max,period) $period
        }
      }

      set tns 0.0
      set nvp 0
      if { $pg($path_group_name,max,wns) < 0.0 } {
        set timing_paths_max [get_timing_paths -group $path_group_obj -delay_type max -slack_lesser_than 0.0 -max_paths $max_path_count]
        set nvp [sizeof_collection $timing_paths_max]
        foreach_in_collection path $timing_paths_max {
          set slack [get_attribute $path slack]
          set tns [expr $tns + $slack]
        }
      }
      set pg($path_group_name,max,tns) $tns
      set pg($path_group_name,max,nvp) $nvp

      ## -------------------------------------
      ## Min info (per path_group)
      ## -------------------------------------

      set timing_path_min_worst [get_timing_paths -group $path_group_name -delay_type min]

      set slack [get_attribute $timing_path_min_worst slack]
      if { $slack == "" } {
        set pg($path_group_name,min,wns) 99.99
      } else {
        set pg($path_group_name,min,wns) $slack
      }

      set tns 0.0
      set nvp 0
      if { $pg($path_group_name,min,wns) < 0.0 } {
        set timing_paths_min [get_timing_paths -group $path_group_obj -delay_type min -slack_lesser_than 0.0 -max_paths $max_path_count]
        set nvp [sizeof_collection $timing_paths_min]
        foreach_in_collection path $timing_paths_min {
          set slack [get_attribute $path slack]
          set tns [expr $tns + $slack]
        }
      }
      set pg($path_group_name,min,tns) $tns
      set pg($path_group_name,min,nvp) $nvp

    }
  }

  ## -------------------------------------
  ## Gather data for report. (per scenario)
  ## -------------------------------------

  ## set timing_path_max_worst [get_timing_paths -delay_type max]
  set worst_slack ""
  foreach_in_collection path [get_timing_paths -delay_type max] {
    set slack [get_attribute $path slack]
    if { $slack != "" } {
      if { $worst_slack == "" } {
        set worst_slack $slack
        set timing_path_max_worst $path
      } else {
        if { $slack < $worst_slack } {
          set worst_slack $slack
          set timing_path_max_worst $path
        }
      }
    }
  }
  if { $worst_slack == "" } {
    set timing_path_max_worst $path
  }

  ## -------------------------------------
  ## Max info (per scenario)
  ## -------------------------------------

  set path_group_name ___DESIGN___

  set pg($path_group_name,max,levels) [sproc_pt_report_qor_count_levels $timing_path_max_worst]
  set pg($path_group_name,max,delay) [get_attribute $timing_path_max_worst arrival]
  set slack [get_attribute $timing_path_max_worst slack]

  if { $slack == "" } {
    set pg($path_group_name,max,wns) 0.0
  } else {
    if { $slack < 0.0 } {
      set pg($path_group_name,max,wns) [expr abs($slack)]
    } else {
      set pg($path_group_name,max,wns) 0.0
    }
  }

  set endpoint_clock [get_attribute $timing_path_max_worst endpoint_clock]
  if { $endpoint_clock == "" } {
    set pg($path_group_name,max,period) n/a
  } else {
    set period [get_attribute $endpoint_clock period]
    if { $period == "" } {
      set pg($path_group_name,max,period) n/a
    } else {
      set pg($path_group_name,max,period) $period
    }
  }

  set tns 0.0
  set nvp 0
  if { $pg($path_group_name,max,wns) > 0.0 } {
    set timing_paths_max [get_timing_paths -delay_type max -slack_lesser_than 0.0 -max_paths $max_path_count]
    set nvp [sizeof_collection $timing_paths_max]
    foreach_in_collection path $timing_paths_max {
      set slack [get_attribute $path slack]
      set tns [expr $tns + $slack]
    }
  }
  set pg($path_group_name,max,tns) [expr abs($tns)]
  set pg($path_group_name,max,nvp) $nvp

  ## -------------------------------------
  ## Min info (per scenario)
  ## -------------------------------------

  ## set timing_path_min_worst [get_timing_paths -delay_type min]
  set worst_slack ""
  foreach_in_collection path [get_timing_paths -delay_type min] {
    set slack [get_attribute $path slack]
    if { $slack != "" } {
      if { $worst_slack == "" } {
        set worst_slack $slack
        set timing_path_min_worst $path
      } else {
        if { $slack < $worst_slack } {
          set worst_slack $slack
          set timing_path_min_worst $path
        }
      }
    }
  }
  if { $worst_slack == "" } {
    set timing_path_min_worst $path
  }

  set slack [get_attribute $timing_path_min_worst slack]
  if { $slack == "" } {
    set pg($path_group_name,min,wns) 0.00
  } else {
    if { $slack < 0.0 } {
      set pg($path_group_name,min,wns) [expr abs($slack)]
    } else {
      set pg($path_group_name,min,wns) 0.0
    }
  }

  set tns 0.0
  set nvp 0
  if { $pg($path_group_name,min,wns) > 0.0 } {
    set timing_paths_min [get_timing_paths -delay_type min -slack_lesser_than 0.0 -max_paths $max_path_count]
    set nvp [sizeof_collection $timing_paths_min]
    foreach_in_collection path $timing_paths_min {
      set slack [get_attribute $path slack]
      set tns [expr $tns + $slack]
    }
  }
  set pg($path_group_name,min,tns) [expr abs($tns)]
  set pg($path_group_name,min,nvp) $nvp

  ## -------------------------------------
  ## Create body of report.
  ## -------------------------------------

  foreach scenario $options(-scenario) {
    foreach path_group_name $path_group_name_list {

      puts "  Scenario '$scenario'"
      puts "  Timing Path Group '$path_group_name'"
      puts "  -----------------------------------"
      puts "  Levels of Logic:             $pg($path_group_name,max,levels)"
      puts "  Critical Path Length:        $pg($path_group_name,max,delay)"
      puts "  Critical Path Slack:         $pg($path_group_name,max,wns)"
      puts "  Critical Path Clk Period:    $pg($path_group_name,max,period)"
      puts "  Total Negative Slack:        $pg($path_group_name,max,tns)"
      puts "  No. of Violating Paths:      $pg($path_group_name,max,nvp)"
      puts "  Worst Hold Violation:        $pg($path_group_name,min,wns)"
      puts "  Total Hold Violation:        $pg($path_group_name,min,tns)"
      puts "  No. of Hold Violations:      $pg($path_group_name,min,nvp)"
      puts "  -----------------------------------"
      puts ""
      if { $pg($path_group_name,max,nvp) >= $max_path_count } {
        puts "Warning: No. of Violating Paths exceeds $max_path_count"
        puts ""
      }
      if { $pg($path_group_name,min,nvp) >= $max_path_count } {
        puts "Warning: No. of Hold Violations exceeds $max_path_count"
        puts ""
      }
    }

    set path_group_name ___DESIGN___
    puts "  Scenario: $scenario        WNS: $pg($path_group_name,max,wns) TNS: $pg($path_group_name,max,tns) Number of Violating Paths: $pg($path_group_name,max,nvp)"
    puts "  Design                     WNS: $pg($path_group_name,max,wns) TNS: $pg($path_group_name,max,tns) Number of Violating Paths: $pg($path_group_name,max,nvp)"
    puts ""
    puts "  Scenario: $scenario (Hold) WNS: $pg($path_group_name,min,wns) TNS: $pg($path_group_name,min,tns) Number of Violating Paths: $pg($path_group_name,min,nvp)"
    puts "  Design              (Hold) WNS: $pg($path_group_name,min,wns) TNS: $pg($path_group_name,min,tns) Number of Violating Paths: $pg($path_group_name,min,nvp)"
    puts ""

  }

  puts "End of Report"

}

define_proc_attributes sproc_pt_report_qor \
  -info "Report QoR for Primetime" \
  -define_args {
  {-scenario "The scenario to process." AString string optional}
}

## -----------------------------------------------------------------------------
## sproc_pt_report_qor_count_levels:
## -----------------------------------------------------------------------------

proc sproc_pt_report_qor_count_levels { path } {
  set levels 0
  set endpoint [get_object_name [get_attribute -quiet $path endpoint]]
  foreach_in_collection point [get_attribute -quiet $path points] {
    set object [get_attribute -quiet $point object]
    if {[get_attribute -quiet $object object_class] == "pin"} {
      if {[get_attribute -quiet $object pin_direction] == "in"} {
        if {[get_attribute -quiet $object is_port] == "false"} {
          if {[get_attribute -quiet $object full_name] != $endpoint} {
            incr levels
          }
        }
      }
    }
  }
  return $levels
}

## -----------------------------------------------------------------------------
## sproc_report_info:
## -----------------------------------------------------------------------------

proc sproc_report_info { args } {
  global SEV

  set enabled 0

  if { $enabled } {

    set sev_name_list [list flow_order step dst task]
    set msg ""

    foreach sev_name $sev_name_list {
      if { $msg == "" } {
        set msg "SEV($sev_name) : $SEV($sev_name)"
      } else {
        set msg "$msg\nSEV($sev_name) : $SEV($sev_name)"
      }
    }

    puts $msg
    return $msg

  } else {

    return

  }
}

define_proc_attributes sproc_report_info \
  -info "Called to produce information for inclusion in report output." \
  -define_args {
}

## -----------------------------------------------------------------------------
## sproc_script_start:
## -----------------------------------------------------------------------------

proc sproc_script_start {} {

  sproc_metric_system -start_of_script

}

define_proc_attributes sproc_script_start \
  -info "Standard procedure for starting a script." \
  -define_args {
}

## -----------------------------------------------------------------------------
## sproc_script_version:
## -----------------------------------------------------------------------------

proc sproc_script_version {} {

  sproc_pinfo -mode start

  global LYNX
  global env SEV SVAR TEV

  ## Determine version of $SEV(script_file)

  set version "Nam"

  if { [file exists $SEV(script_file)] } {

    set fid [open $SEV(script_file) r]

    while { [gets $fid line] >= 0 } {

      ## -------------------------------------
      ## Perforce format example:
      ## set line {## HEADER $Id: //sps/lynx/ds_tmp/scripts_global/10_syn/dc_elaborate.tcl#4}
      ## -------------------------------------

      set re {^## HEADER \$Id: [\w\/\.]+#([\d]+)}

      if { [regexp $re $line match version] } {
        break
      }

      ## -------------------------------------
      ## CVS format example:
      ## set line {## HEADER $Id: tool_launch_part1.make,v 1.2 2010/04/02 21:34:44 gamble Exp}
      ## -------------------------------------

      set re {^## HEADER \$Id: [\w\/\.\,]+\s+([\d\.]+)}

      if { [regexp $re $line match version] } {
        break
      }

    }

    close $fid
  }

  sproc_pinfo -mode stop
  return $version

}

define_proc_attributes sproc_script_version \
  -info "Used to determine the version of a script." \
  -define_args {
}

## -----------------------------------------------------------------------------
## sproc_send_aro_mem:
## -----------------------------------------------------------------------------

proc sproc_send_aro_mem { args } {

  sproc_pinfo -mode start

  global env SEV SVAR TEV

  set options(-job_id) ""
  set options(-memory_used) ""
  parse_proc_arguments -args $args options

  ## -------------------------------------
  ## Open a blocking-style socket
  ## -------------------------------------

  set socket_host $SEV(aro_server)
  set socket_port $SEV(aro_port)

  set socket_ok 0
  set max_socket_attempts 10
  for { set i 1 } { $i < [expr $max_socket_attempts + 1] } { incr i } {
    set socket_return [catch { socket $socket_host $socket_port } socket_channel]
    if { $socket_return } {
      puts "SNPS_INFO: Unable to establish socket channel on attempt $i"
      after 1000
    } else {
      set socket_ok 1
      break
    }
  }

  if { !$socket_ok } {
    puts "SNPS_ERROR : Unable to create socket ($socket_host:$socket_port) from [info host] to ARO Daemon"
    puts "SNPS_ERROR : Socket returns $socket_channel"
  } else {

    fconfigure $socket_channel -blocking 1

    ## -------------------------------------
    ## Send MEM command to ARO daemon
    ## -------------------------------------

    puts $socket_channel "ARO_MEM_START"
    puts $socket_channel "FILE|$options(-job_id).aro_mem"
    puts $socket_channel "INFO.MEMORY_USED|INTEGER|$options(-memory_used)"
    puts $socket_channel "ARO_MEM_STOP"

    flush $socket_channel

    ## -------------------------------------
    ## Read MEM response from ARO daemon
    ## -------------------------------------

    set lines [list]
    while {1} {
      set line [gets $socket_channel]
      if { [eof $socket_channel] } {
        close $socket_channel
        break
      } else {
        lappend lines $line
      }
    }

    set aro_reply_status [lindex [split [lindex $lines 0] "|"] 0]
    set aro_reply_msg    [lindex [split [lindex $lines 0] "|"] 1]

    if { $aro_reply_status == "1" } {
      sproc_msg -info "Successful send of ARO_MEM"
    } else {
      sproc_msg -error "Reply during ARO_MEM: $aro_reply_msg"
    }

  }

  sproc_pinfo -mode stop

}

define_proc_attributes sproc_send_aro_mem \
  -info "Used to determine the version of a script." \
  -define_args {
  {-job_id      "The job id for the task reporting memory usage." AnInt int required}
  {-memory_used "The amount of memory in MB."                     AnInt int required}
}

## -----------------------------------------------------------------------------
## sproc_source:
## -----------------------------------------------------------------------------

proc sproc_source { args } {

  global synopsys_program_name SEV

  if { ![info exists SEV(log_level)] } {
    set SEV(log_level) 1
  }

  set options(-file) ""
  set options(-quiet) 0
  set options(-optional) 0
  parse_proc_arguments -args $args options

  if { [llength $options(-file)] > 0 } {
    ## The file specification is not empty.
    if { [file exists $options(-file)] } {

      sproc_script_msg 1 $options(-file)

      set cmd_base "uplevel 1 source"
      set cmd_verbosity ""
      set cmd_continue ""

      ## -------------------------------------
      ## Set cmd_verbosity
      ## -------------------------------------

      switch $synopsys_program_name {

        tcl -
        cdesigner -
        mvrc -
        spyglass {
          set cmd_verbosity ""
        }

        default {

          switch -glob [file tail $options(-file)] {
            procs.tcl -
            procs_flow.tcl -
            procs_user.tcl -
            system_common.tcl -
            system_block.tcl -
            *.sev.varfile -
            system_setup.tcl -
            common.tcl -
            block.tcl -
            *.tev.varfile -
            procs_lwrap.tcl -
            block_setup.tcl {
              set is_standard_file 1
            }
            default {
              set is_standard_file 0
            }
          }

          switch $SEV(log_level) {
            0 {
              ## Normal Mode
              set quite_mode $options(-quiet)
            }
            1 {
              ## Suppress-standard-files Mode
              if { $is_standard_file } {
                set quite_mode 1
              } else {
                set quite_mode $options(-quiet)
              }
            }
            2 {
              ## Suppress-all-files Mode
              set quite_mode 1
            }
            default {
              ## Default to Normal Mode if variable value is incorrect.
              set quite_mode $options(-quiet)
              sproc_msg -error "Value for SEV(log_level) not recognized."
            }
          }
          if { !$quite_mode } {
            set cmd_verbosity "-e -v"
          }
        }

      }

      ## -------------------------------------
      ## Set cmd_continue
      ## -------------------------------------

      switch $synopsys_program_name {

        icc_shell -
        pr_shell -
        pt_shell -
        vcst -
        fm_shell -
        dc_shell -
        ptc_shell -
        tmax_tcl {
          set cmd_continue "-continue_on_error"
        }

        default {
          set cmd_continue ""
        }
      }

      ## -------------------------------------
      ## Run the full cmd
      ## -------------------------------------

      set cmd_full "$cmd_base $cmd_verbosity $cmd_continue $options(-file)"
      eval $cmd_full

      sproc_script_msg 0 $options(-file)

    } else {

      sproc_msg -error "sproc_source: The specified file does not exist; '$options(-file)'"

    }

  } else {

    ## The file specification is empty.
    if { $options(-optional) } {
      sproc_msg -warning "sproc_source: An empty file specification was provided; file is optional."
    } else {
      sproc_msg -error   "sproc_source: An empty file specification was provided; file is not optional."
    }

  }

}

define_proc_attributes sproc_source \
  -info "Provides a standard way to source files." \
  -define_args {
  {-file "This option is used to specify the file to source. An argument value of <non-empty-string> requires that the specified file exists. An argument value of <empty-string> will cause an error unless the -optional argument is also supplied." AString string required}
  {-optional "This option prevents an <empty-string> -file argument from causing an error." "" boolean optional}
  {-quiet "Echo minimal file content." "" boolean optional}
}

## -----------------------------------------------------------------------------
## sproc_uniquify_list:
## -----------------------------------------------------------------------------

proc sproc_uniquify_list { args } {

  set options(-list) ""
  parse_proc_arguments -args $args options

  set output_list [list]

  foreach element $options(-list) {
    if { ![info exists list_of_found_elements($element)] } {
      set list_of_found_elements($element) 1
      lappend output_list $element
    }
  }

  return $output_list
}

define_proc_attributes sproc_uniquify_list \
  -info "Returns a list with no duplicate elements." \
  -define_args {
  {-list "Input list needing to be uniquified." AString string required}
}


if [file exists ../../scripts_block/lcrm_setup/procs_lwrap.tcl] {
  source ../../scripts_block/lcrm_setup/procs_lwrap.tcl
}

sproc_msg -info "METRIC | INTEGER INFO.LCRM_RTM_MODE          | $LYNX(rtm_present)"

## -----------------------------------------------------------------------------
## End of File
## -----------------------------------------------------------------------------


