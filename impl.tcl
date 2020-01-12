
# Set output directory
set outDir ./out
file mkdir $outDir

# read synth checkpoint
open_checkpoint $outDir/post_synth.dcp

# read constraints
read_xdc -mode out_of_context ./riscv.xdc

# implement design
opt_design
place_design
phys_opt_design
route_design

# write checkpoint
write_checkpoint -force $outDir/post_route.dcp

# generate reports
report_route_status -file $outDir/post_route_status.rpt
report_utilization -file $outDir/post_route_util.rpt
report_timing_summary -file $outDir/post_route_timing_summary.rpt

