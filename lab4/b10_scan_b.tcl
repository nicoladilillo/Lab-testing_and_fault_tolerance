read_netlist pdt2002.v -library -insensitive
read_netlist b12_scan.v -master -insensitive

run_build_model b12

# add constraints
#add_cell_constraints xx \state_reg[0] 
#add_cell_constraints xx \state_reg[1]
#add_cell_constraints xx \state_reg[2] 

run_drc b12_scan.spf

#set_patterns -internal
#set_atpg -full_seq_atpg
#run_atpg -auto_compression

#quit