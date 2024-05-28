##########################################################################################
# Lynx Compatible Reference Methodology (LCRM) Setup File
# Script: metric_reports_icc2.tcl
# Version: M-2016.12-SP4 (July 17, 2017)
# Copyright (C) 2010-2017 Synopsys, Inc. All rights reserved.
##########################################################################################
## DESCRIPTION:
## * This script provides reports which are parsed to create design metrics
## -----------------------------------------------------------------------------

redirect -file $SEV(rpt_dir)/icc2.report_design {
  report_design -help
  report_design -floorplan -nosplit
  report_design -library -nosplit
  report_design -netlist -nosplit
  report_design -physical -nosplit
  report_design -routing -nosplit
}

redirect -file $SEV(rpt_dir)/icc2.report_power {
  sproc_report_info
  report_power -help
  report_power -scenarios [all_scenarios]
}

redirect -file $SEV(rpt_dir)/icc2.report_clock_qor {
  report_clock_qor -help
  report_clock_qor -nosplit
  report_clock_qor -type area -nosplit
}

redirect -file $SEV(rpt_dir)/icc2.report_clock_qor.structure {
  report_clock_qor -help
  report_clock_qor -type structure -nosplit
}

redirect -file $SEV(rpt_dir)/icc2.report_clock_settings {
  report_clock_settings -help
  report_clock_settings -nosplit
}

redirect -file $SEV(rpt_dir)/icc2.report_clock_timing {
  report_clock_timing -help
  report_clock_timing -type summary -clock_synthesis_view -scenarios [all_scenarios] -nosplit
  report_clock_timing -type skew    -clock_synthesis_view -scenarios [all_scenarios] -nosplit
  report_clock_timing -type latency -clock_synthesis_view -scenarios [all_scenarios] -nosplit
}

redirect -file $SEV(rpt_dir)/icc2.report_qor {
  sproc_report_info
  report_qor -help
  report_qor
  report_qor -summary -nosplit
}

redirect -file $SEV(rpt_dir)/icc2.report_threshold_voltage_group {
  sproc_report_info
  report_threshold_voltage_group -help
  report_threshold_voltage_group
}

redirect -file $SEV(rpt_dir)/icc2.report_user_units {
  sproc_report_info
  report_user_units -help
  report_user_units -nosplit
}

## -----------------------------------------------------------------------------
## End Of File
## -----------------------------------------------------------------------------




