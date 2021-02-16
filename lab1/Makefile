.SILENT:

srlatch:
	echo "srlatch_test was created"
	iverilog srlatch.v srlatch_tb.v -o srlatch_test

dlatch:
	echo "dlatch_test was created"
	iverilog srlatch.v dlatch.v dlatch_tb.v clockgen.v -o dlatch_test

dflipflop:
	echo "dflipflop_test was created"
	iverilog srlatch.v dlatch.v dflipflop.v clockgen.v dflipflop_tb.v -o dflipflop_test

all: srlatch dlatch dflipflop