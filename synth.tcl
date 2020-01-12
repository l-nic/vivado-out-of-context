
# Set output directory
set outDir ./out
file mkdir $outDir

# Set top level module
#set top TopWithLNIC
set top Rocket

# read verilog
read_verilog [ glob ../vagrant-firechip/hdl/*.v ]

# synthesize design
synth_design -mode out_of_context -flatten_hierarchy rebuilt -top $top -part xcvu9p-flga2104-3-e

# write checkpoint
write_checkpoint -force $outDir/post_synth.dcp

# generate reports
report_utilization -file $outDir/post_synth_util.rpt

