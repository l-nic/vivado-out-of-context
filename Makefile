
all: synth impl

synth:
	vivado -mode batch -nolog -nojournal -source ./synth.tcl

impl:
	vivado -mode batch -nolog -nojournal -source ./impl.tcl

timing:
	vivado -mode batch -nolog -nojournal -source ./report_timing.tcl

