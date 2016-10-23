# 
# Synthesis run script generated by Vivado
# 

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7a100tcsg324-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir C:/Users/flynng/Desktop/ECE491/5lab/5lab.cache/wt [current_project]
set_property parent.project_path C:/Users/flynng/Desktop/ECE491/5lab/5lab.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property board_part digilentinc.com:nexys4_ddr:part0:1.1 [current_project]
read_verilog -library xil_defaultlib -sv {
  C:/Users/flynng/Desktop/ECE491/5lab/5lab.srcs/sources_1/imports/imports/sources_1/imports/lab2.srcs/sources_1/imports/lab1/reg_param.sv
  C:/Users/flynng/Desktop/ECE491/5lab/5lab.srcs/sources_1/imports/imports/sources_1/imports/lab2.srcs/sources_1/imports/lab1/clkenb.sv
  C:/Users/flynng/Desktop/ECE491/5lab/5lab.srcs/sources_1/imports/new/temp_data.sv
  C:/Users/flynng/Desktop/ECE491/5lab/5lab.srcs/sources_1/imports/imports/lab1/seven_seg.sv
  C:/Users/flynng/Desktop/ECE491/5lab/5lab.srcs/sources_1/imports/new/rxd_synchroniser.sv
  C:/Users/flynng/Desktop/ECE491/5lab/5lab.srcs/sources_1/imports/imports/sources_1/imports/lab2.srcs/sources_1/imports/lab1/mux8_parm.sv
  C:/Users/flynng/Desktop/ECE491/5lab/5lab.srcs/sources_1/imports/new/f_error.sv
  C:/Users/flynng/Desktop/ECE491/5lab/5lab.srcs/sources_1/imports/new/fsm.sv
  C:/Users/flynng/Desktop/ECE491/5lab/5lab.srcs/sources_1/imports/new/delay_timer.sv
  C:/Users/flynng/Desktop/ECE491/5lab/5lab.srcs/sources_1/imports/imports/lab1/decoder_3_8_en.sv
  C:/Users/flynng/Desktop/ECE491/5lab/5lab.srcs/sources_1/imports/new/data.sv
  C:/Users/flynng/Desktop/ECE491/5lab/5lab.srcs/sources_1/imports/imports/sources_1/imports/lab2.srcs/sources_1/imports/lab1/counter_parm.sv
  C:/Users/flynng/Desktop/ECE491/5lab/5lab.srcs/sources_1/imports/new/receiver.sv
  C:/Users/flynng/Desktop/ECE491/5lab/5lab.srcs/sources_1/imports/imports/lab1/dispctl.sv
  C:/Users/flynng/Desktop/ECE491/5lab/5lab.srcs/sources_1/imports/imports/sources_1/imports/lab2.srcs/sources_1/imports/lab1/nexys4DDR.sv
  C:/Users/flynng/Desktop/ECE491/5lab/5lab.srcs/sources_1/imports/5lab/fsm_data.sv
  C:/Users/flynng/Desktop/ECE491/5lab/5lab.srcs/sources_1/imports/5lab/fsm_pll.sv
  C:/Users/flynng/Desktop/ECE491/5lab/5lab.srcs/sources_1/imports/5lab/fsm_psfd.sv
  C:/Users/flynng/Desktop/ECE491/5lab/5lab.srcs/sources_1/new/FSMs.sv
  C:/Users/flynng/Desktop/ECE491/5lab/5lab.srcs/sources_1/new/mx_rcvr.sv
  C:/Users/flynng/Desktop/ECE491/5lab/5lab.srcs/sources_1/new/data_buffer.sv
  C:/Users/flynng/Desktop/ECE491/5lab/5lab.srcs/sources_1/new/sync_input.sv
  C:/Users/flynng/Desktop/ECE491/5lab/5lab.srcs/sources_1/new/counter.sv
  C:/Users/flynng/Desktop/ECE491/5lab/5lab.srcs/sources_1/imports/Downloads/check_p.sv
}
foreach dcp [get_files -quiet -all *.dcp] {
  set_property used_in_implementation false $dcp
}

synth_design -top mx_rcvr -part xc7a100tcsg324-1


write_checkpoint -force -noxdef mx_rcvr.dcp

catch { report_utilization -file mx_rcvr_utilization_synth.rpt -pb mx_rcvr_utilization_synth.pb }
