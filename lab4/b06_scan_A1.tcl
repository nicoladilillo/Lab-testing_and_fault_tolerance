read_netlist pdt2002.v -library -insensitive
read_netlist b06_scan.v -master -insensitive

run_build_model b06

# add constraints
add_cell_constraints XX \state_reg[0] 
add_cell_constraints XX \state_reg[1]
add_cell_constraints XX \state_reg[2] 

run_drc b06_scan.spf

# analyze_faults -stuck 0 U50/I2 -verbose -display

set_faults -model stuck
add_faults -all

set_patterns -internal
set_atpg -full_seq_atpg
run_atpg -auto_compression 

quit