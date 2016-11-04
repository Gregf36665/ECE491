set_property SRC_FILE_INFO {cfile:C:/Users/flynng/Desktop/ECE491/5lab/5lab.srcs/constrs_1/imports/lab1/nexys4DDR.xdc rfile:../../../../../5lab.srcs/constrs_1/imports/lab1/nexys4DDR.xdc id:1} [current_design]
set_property src_info {type:XDC file:1 line:10 export:INPUT save:INPUT read:READ} [current_design]
create_clock -period 10.000 -name sys_clk_pin -waveform {0.000 5.000} -add [get_ports CLK100MHZ]
