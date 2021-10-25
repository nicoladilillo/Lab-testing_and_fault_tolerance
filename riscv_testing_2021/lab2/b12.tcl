read_netlist pdt2002.v -format verilog -insensitive -library 
read_netlist b12.v -format verilog -insensitive 

run_build_model b12

#add_clock 1 clock

run_drc

set_faults -model stuck
add_faults -all

set_patterns -internal
set_atpg -full_seq_atpg
run_atpg -auto_compression

set_fault -summary verbose -fault_coverage
report_summaries

quit
