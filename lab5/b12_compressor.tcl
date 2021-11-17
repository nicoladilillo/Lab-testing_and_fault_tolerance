uplevel #0 source pdt2002.dc_setup.tcl

read_verilog b12.v
current_design b12
link
check_design

report_area
set_dft_configuration -scan_compression enable

set test_default_scan_style multiplexed_flip_flop

set_scan_configuration -chain_count 4
set_scan_compression_configuration -chain_count 10

create_test_protocol -infer_asynch -infer_clock
dft_drc
preview_dft
insert_dft

streaming_dft_planner

change_names -rules verilog -hierarchy

report_scan_path -test_mode all

report_area

write -hierarchy -format verilog -output b12_scan.v

write_test_protocol -output b12_scan.spf -test_mode Internal_scan
write_test_protocol -output b12_scancompress.spf -test_mode ScanCompression_mode

quit
