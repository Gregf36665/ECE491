# 
# Synthesis run script generated by Vivado
# 

set_param general.maxThreads 8
set_msg_config -id {Common 17-41} -limit 10000000
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
set_msg_config -id {HDL-1065} -limit 10000
set_msg_config  -ruleid {1}  -id {Synth 8-1921}  -new_severity {ADVISORY} 
create_project -in_memory -part xc7a100tcsg324-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir C:/Users/flynng/Desktop/ECE491/4lab/4lab.cache/wt [current_project]
set_property parent.project_path C:/Users/flynng/Desktop/ECE491/4lab/4lab.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property board_part digilentinc.com:nexys4_ddr:part0:1.1 [current_project]
set_property ip_repo_paths c:/Users/flynng/Desktop/ECE491/4lab/4lab.srcs [current_project]
read_verilog -library xil_defaultlib -sv {
  C:/Users/flynng/Desktop/ECE491/4lab/4lab.srcs/sources_1/imports/sources_1/imports/lab2.srcs/sources_1/imports/lab1/reg_param.sv
  C:/Users/flynng/Desktop/ECE491/4lab/4lab.srcs/sources_1/imports/sources_1/imports/lab2.srcs/sources_1/imports/lab1/clkenb.sv
  C:/Users/flynng/Desktop/ECE491/4lab/4lab.srcs/sources_1/new/rxd_synchroniser.sv
  C:/Users/flynng/Desktop/ECE491/4lab/4lab.srcs/sources_1/new/f_error.sv
  C:/Users/flynng/Desktop/ECE491/4lab/4lab.srcs/sources_1/new/fsm.sv
  C:/Users/flynng/Desktop/ECE491/4lab/4lab.srcs/sources_1/new/delay_timer.sv
  C:/Users/flynng/Desktop/ECE491/4lab/4lab.srcs/sources_1/new/data.sv
  C:/Users/flynng/Desktop/ECE491/4lab/4lab.srcs/sources_1/new/temp_data.sv
  C:/Users/flynng/Desktop/ECE491/4lab/4lab.srcs/sources_1/imports/sources_1/imports/lab2.srcs/sources_1/imports/lab1/counter_parm.sv
  C:/Users/flynng/Desktop/ECE491/4lab/4lab.srcs/sources_1/new/receiver.sv
}
foreach dcp [get_files -quiet -all *.dcp] {
  set_property used_in_implementation false $dcp
}
read_xdc C:/Users/flynng/Desktop/ECE491/4lab/4lab.srcs/constrs_1/imports/lab1/nexys4DDR.xdc
set_property used_in_implementation false [get_files C:/Users/flynng/Desktop/ECE491/4lab/4lab.srcs/constrs_1/imports/lab1/nexys4DDR.xdc]


synth_design -top receiver -part xc7a100tcsg324-1


write_checkpoint -force -noxdef receiver.dcp

catch { report_utilization -file receiver_utilization_synth.rpt -pb receiver_utilization_synth.pb }