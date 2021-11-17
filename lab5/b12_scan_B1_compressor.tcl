read_netlist pdt2002.v -library -insensitive
read_netlist b12_scan.v -master -insensitive

run_build_model b12

run_drc b12_scancompress.spf

#LOS
set_delay -launch_cycle last_shift
set_faults -model transition
add_faults -all

set_patterns -internal
run_atpg -auto_compression 

quit
