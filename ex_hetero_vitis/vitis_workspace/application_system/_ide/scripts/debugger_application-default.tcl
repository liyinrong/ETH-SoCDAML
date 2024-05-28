# Usage with Vitis IDE:
# In Vitis IDE create a Single Application Debug launch configuration,
# change the debug type to 'Attach to running target' and provide this 
# tcl script in 'Execute Script' option.
# Path of this script: /scratch/ex_hetero_vitis_soc_12fs24/vitis_workspace/application_system/_ide/scripts/debugger_application-default.tcl
# 
# 
# Usage with xsct:
# To debug using xsct, launch xsct and run below command
# source /scratch/ex_hetero_vitis_soc_12fs24/vitis_workspace/application_system/_ide/scripts/debugger_application-default.tcl
# 
connect -url tcp:127.0.0.1:3121
targets -set -nocase -filter {name =~"APU*"}
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Digilent Zed 210248774793" && level==0 && jtag_device_ctx=="jsn-Zed-210248774793-23727093-0"}
fpga -file /scratch/ex_hetero_vitis_soc_12fs24/vitis_workspace/application/_ide/bitstream/vpl_gen_fixed.bit
targets -set -nocase -filter {name =~"APU*"}
loadhw -hw /scratch/ex_hetero_vitis_soc_12fs24/vitis_workspace/zedboard_sw/export/zedboard_sw/hw/binary_container_1.xsa -mem-ranges [list {0x40000000 0xbfffffff}] -regs
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*"}
source /scratch/ex_hetero_vitis_soc_12fs24/vitis_workspace/application/_ide/psinit/ps7_init.tcl
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "*A9*#0"}
dow /scratch/ex_hetero_vitis_soc_12fs24/vitis_workspace/application/Debug/application.elf
configparams force-mem-access 0
targets -set -nocase -filter {name =~ "*A9*#0"}
con
