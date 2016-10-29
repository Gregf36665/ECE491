# 
# Synthesis run script generated by Vivado
# 

set_param xicom.use_bs_reader 1
set_msg_config -id {Common 17-41} -limit 10000000
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
set_msg_config  -ruleid {1}  -id {Synth 8-1921}  -string {{WARNING: [Synth 8-1921] elaboration system task error violates IEEE 1800 syntax [C:/Users/birrur/ECE491/5lab/5lab.srcs/sources_1/imports/imports/sources_1/imports/lab2.srcs/sources_1/imports/lab1/clkenb.sv:35]}}  -suppress 
set_msg_config  -ruleid {2}  -id {Synth 8-1921}  -new_severity {ADVISORY} 
set_msg_config  -ruleid {3}  -id {Synth 8-3332}  -new_severity {ADVISORY} 
set_msg_config  -ruleid {4}  -id {Synth 8-2292}  -string {{WARNING: [Synth 8-2292] literal value truncated to fit in 5 bits [C:/Users/flynng/Desktop/ECE491/5lab/5lab.srcs/sources_1/imports/5lab/fsm_psfd.sv:75]}}  -suppress 
create_project -in_memory -part xc7a100tcsg324-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir C:/Users/flynng/Desktop/ECE491/5lab/5lab.cache/wt [current_project]
set_property parent.project_path C:/Users/flynng/Desktop/ECE491/5lab/5lab.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property board_part digilentinc.com:nexys4_ddr:part0:1.1 [current_project]
set_property ip_repo_paths {
  c:/Users/flynng/Desktop/ECE491/4lab
  c:/Users/flynng/Desktop/ECE491/5lab
  c:/Users/flynng/Desktop/ECE491/fifo
  c:/Users/flynng/Desktop/ECE491/lab1
  c:/Users/flynng/Desktop/ECE491/lab2
  {c:/Users/flynng/Desktop/ECE491/lab 3}
} [current_project]
read_verilog -library xil_defaultlib -sv {
  C:/Users/flynng/Desktop/ECE491/5lab/5lab.srcs/sources_1/imports/5lab/fsm_data.sv
  C:/Users/flynng/Desktop/ECE491/5lab/5lab.srcs/sources_1/imports/5lab/fsm_pll.sv
  C:/Users/flynng/Desktop/ECE491/5lab/5lab.srcs/sources_1/imports/5lab/fsm_psfd.sv
  C:/Users/flynng/Desktop/ECE491/5lab/5lab.srcs/sources_1/new/one_bit_ff.sv
  C:/Users/flynng/Desktop/ECE491/5lab/5lab.srcs/sources_1/imports/imports/sources_1/imports/lab2.srcs/sources_1/imports/lab1/clkenb.sv
  C:/Users/flynng/Desktop/ECE491/5lab/5lab.srcs/sources_1/imports/new/f_error.sv
  C:/Users/flynng/Desktop/ECE491/5lab/5lab.srcs/sources_1/new/FSMs.sv
  C:/Users/flynng/Desktop/ECE491/5lab/5lab.srcs/sources_1/new/data_buffer.sv
  C:/Users/flynng/Desktop/ECE491/5lab/5lab.srcs/sources_1/new/sync_input.sv
  C:/Users/flynng/Desktop/ECE491/5lab/5lab.srcs/sources_1/new/counter.sv
  C:/Users/flynng/Desktop/ECE491/5lab/5lab.srcs/sources_1/new/mx_rcvr.sv
  C:/Users/flynng/Desktop/ECE491/5lab/5lab.srcs/sources_1/imports/Downloads/check_p.sv
  C:/Users/flynng/Desktop/ECE491/5lab/5lab.srcs/sources_1/imports/Downloads/jitteryclock.sv
  C:/Users/flynng/Desktop/ECE491/5lab/5lab.srcs/sources_1/imports/new/manchester_tx.sv
  C:/Users/flynng/Desktop/ECE491/5lab/5lab.srcs/sources_1/imports/new/transmitter_for_mx.sv
  C:/Users/flynng/Desktop/ECE491/5lab/5lab.srcs/sources_1/imports/new/clkenb_baud.sv
  C:/Users/flynng/Desktop/ECE491/5lab/5lab.srcs/sources_1/imports/lab1/counter_parm.sv
  C:/Users/flynng/Desktop/ECE491/5lab/5lab.srcs/sources_1/imports/lab1/reg_param.sv
  C:/Users/flynng/Desktop/ECE491/5lab/5lab.srcs/sources_1/imports/lab1/mux8_parm.sv
  C:/Users/flynng/Desktop/ECE491/5lab/5lab.srcs/sources_1/imports/Downloads/correlator.sv
  C:/Users/flynng/Desktop/ECE491/5lab/5lab.srcs/sources_1/imports/lab1/nexys4DDR.sv
  C:/Users/flynng/Desktop/ECE491/5lab/5lab.srcs/sources_1/imports/Downloads/mxtest_2.sv
  C:/Users/flynng/Desktop/ECE491/5lab/5lab.srcs/sources_1/new/fifo_fsm.sv
  C:/Users/flynng/Desktop/ECE491/5lab/5lab.srcs/sources_1/imports/lab1/dispctl.sv
  C:/Users/flynng/Desktop/ECE491/5lab/5lab.srcs/sources_1/imports/lab1/decoder_3_8_en.sv
  C:/Users/flynng/Desktop/ECE491/5lab/5lab.srcs/sources_1/imports/lab1/seven_seg.sv
}
foreach dcp [get_files -quiet -all *.dcp] {
  set_property used_in_implementation false $dcp
}
read_xdc C:/Users/flynng/Desktop/ECE491/5lab/5lab.srcs/constrs_1/imports/lab1/nexys4DDR.xdc
set_property used_in_implementation false [get_files C:/Users/flynng/Desktop/ECE491/5lab/5lab.srcs/constrs_1/imports/lab1/nexys4DDR.xdc]


synth_design -top nexys4DDR -part xc7a100tcsg324-1


write_checkpoint -force -noxdef nexys4DDR.dcp

catch { report_utilization -file nexys4DDR_utilization_synth.rpt -pb nexys4DDR_utilization_synth.pb }