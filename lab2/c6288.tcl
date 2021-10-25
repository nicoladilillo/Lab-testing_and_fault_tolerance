read_netlist pdt2002.v -format verilog -insensitive -library 
read_netlist c6288.vhd -insensitive 

run_build_model c6288

#add_po_masks datao(1)
#add_po_masks datao(2)
#add_po_masks datao(1)

add_po_masks -all

#remove_po_masks datao(1)
#remove_po_masks datao(2)
#remove_po_masks datao(3)


run_drc

set_faults -model stuck
add_faults -all

set_patterns -external c6288.stil
run_simulation
run_fault_sim

set_fault -summary verbose -fault_coverage
report_summaries

quit
