# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct /scratch/ex_hetero_vitis_soc_12fs24/vitis_workspace/zedboard_basic/platform.tcl
# 
# OR launch xsct and run below command.
# source /scratch/ex_hetero_vitis_soc_12fs24/vitis_workspace/zedboard_basic/platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {zedboard_basic}\
-hw {/scratch/ex_hetero_vitis_soc_12fs24/src/platform/basic/design_1_wrapper.xsa}\
-proc {ps7_cortexa9_0} -os {standalone} -out {/scratch/ex_hetero_vitis_soc_12fs24/vitis_workspace}

platform write
platform generate -domains 
platform active {zedboard_basic}
platform generate
platform active {zedboard_basic}
