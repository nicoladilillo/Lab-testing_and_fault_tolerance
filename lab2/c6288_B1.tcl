read_netlist pdt2002.v -format verilog -insensitive -library 
read_netlist c6288.vhd -insensitive 

run_build_model c6288

## Task A.2

#add_po_masks datao(1)
#add_po_masks datao(2)
#add_po_masks datao(3)

add_po_masks -all

#remove_po_masks datao(1)
#remove_po_masks datao(2)
#remove_po_masks datao(3)


## Task B1

#add_pi_constraints 0 datai(0)
#add_pi_constraints 1 datai(0)
#add_pi_constraints X datai(1)


#add_pi_constraints X datai(0)
#add_pi_constraints X datai(1)
#add_pi_constraints X datai(2)

run_drc

set_faults -model stuck
add_faults -all

set_patterns -internal
run_atpg -auto_compression

set_fault -summary verbose -fault_coverage
report_summaries

quit
