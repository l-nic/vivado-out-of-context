
# Set output directory
set outDir ./out
file mkdir $outDir

# read post_route checkpoint
open_checkpoint $outDir/post_route.dcp

# report timing
report_timing -nworst 10 -file $outDir/post_route_timing.rpt

