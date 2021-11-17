read_netlist pdt2002.v -library -insensitive
read_netlist b06_scan.v -master -insensitive

run_build_model b06

run_drc b06_scan.spf

#LOS summary
#set_delay -launch_cycle last_shift
#set_faults -model transition
#add_faults -all

#LOC summary
set_delay -launch_cycle system_clock 
# set_delay -nopi_changes
set_atpg -capture_cycles 2
set_faults -model transition

set_patterns -internal
# set_atpg -full_seq_atpg     
run_atpg -auto_compression 

report_summaries > output.txt
write_patterns FILENAME.stil -internal -format stil

quit
