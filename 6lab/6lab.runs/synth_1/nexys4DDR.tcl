# 
# Synthesis run script generated by Vivado
# 

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7a100tcsg324-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir C:/Users/flynng/Desktop/ECE491/6lab/6lab.cache/wt [current_project]
set_property parent.project_path C:/Users/flynng/Desktop/ECE491/6lab/6lab.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property board_part digilentinc.com:nexys4_ddr:part0:1.1 [current_project]
read_verilog -library xil_defaultlib -sv {
  C:/Users/flynng/Desktop/ECE491/6lab/6.srcs/sources/imports/sync_input.sv
  C:/Users/flynng/Desktop/ECE491/6lab/6.srcs/sources/imports/one_bit_ff.sv
  C:/Users/flynng/Desktop/ECE491/6lab/6.srcs/sources/imports/fsm_psfd.sv
  C:/Users/flynng/Desktop/ECE491/6lab/6.srcs/sources/imports/fsm_pll.sv
  C:/Users/flynng/Desktop/ECE491/6lab/6.srcs/sources/imports/fsm_data.sv
  C:/Users/flynng/Desktop/ECE491/6lab/6.srcs/sources/imports/clkenb_baud.sv
  C:/Users/flynng/Desktop/ECE491/6lab/6.srcs/sources/imports/clkenb.sv
  C:/Users/flynng/Desktop/ECE491/6lab/6.srcs/sources/imports/reg_param.sv
  C:/Users/flynng/Desktop/ECE491/6lab/6.srcs/sources/imports/counter_parm.sv
  C:/Users/flynng/Desktop/ECE491/6lab/6.srcs/sources/imports/mux8_parm.sv
  C:/Users/flynng/Desktop/ECE491/6lab/6.srcs/sources/imports/seven_seg.sv
  C:/Users/flynng/Desktop/ECE491/6lab/6.srcs/sources/imports/f_error.sv
  C:/Users/flynng/Desktop/ECE491/6lab/6.srcs/sources/imports/FSMs.sv
  C:/Users/flynng/Desktop/ECE491/6lab/6.srcs/sources/imports/decoder_3_8_en.sv
  C:/Users/flynng/Desktop/ECE491/6lab/6.srcs/sources/imports/data_buffer.sv
  C:/Users/flynng/Desktop/ECE491/6lab/6.srcs/sources/imports/counter.sv
  C:/Users/flynng/Desktop/ECE491/6lab/6.srcs/sources/imports/correlator.sv
  C:/Users/flynng/Desktop/ECE491/6lab/6.srcs/sources/imports/transmitter_for_mx.sv
  C:/Users/flynng/Desktop/ECE491/6lab/6.srcs/sources/imports/transmitter.sv
  C:/Users/flynng/Desktop/ECE491/6lab/6.srcs/sources/imports/p_fifo.sv
  C:/Users/flynng/Desktop/ECE491/6lab/6.srcs/sources/imports/mx_rcvr.sv
  C:/Users/flynng/Desktop/ECE491/6lab/6.srcs/sources/imports/fifo_fsm.sv
  C:/Users/flynng/Desktop/ECE491/6lab/6.srcs/sources/imports/dispctl.sv
  C:/Users/flynng/Desktop/ECE491/6lab/6.srcs/sources/imports/single_pulser.sv
  C:/Users/flynng/Desktop/ECE491/6lab/6.srcs/sources/imports/mxtest_2.sv
  C:/Users/flynng/Desktop/ECE491/6lab/6.srcs/sources/imports/manchester_tx.sv
  C:/Users/flynng/Desktop/ECE491/6lab/6lab.srcs/sources_1/new/ReceiverTestUnit.sv
  C:/Users/flynng/Desktop/ECE491/6lab/6lab.srcs/sources_1/new/TransmitterTestUnit.sv
  C:/Users/flynng/Desktop/ECE491/6lab/6.srcs/sources/imports/nexys4DDR.sv
  C:/Users/flynng/Desktop/ECE491/6lab/6.srcs/sources/imports/check_p.sv
  C:/Users/flynng/Desktop/ECE491/6lab/6.srcs/sources/imports/accumulator.sv
}
foreach dcp [get_files -quiet -all *.dcp] {
  set_property used_in_implementation false $dcp
}
read_xdc C:/Users/flynng/Desktop/ECE491/6lab/6.srcs/constrs_1/imports/lab1/nexys4DDR.xdc
set_property used_in_implementation false [get_files C:/Users/flynng/Desktop/ECE491/6lab/6.srcs/constrs_1/imports/lab1/nexys4DDR.xdc]


synth_design -top nexys4DDR -part xc7a100tcsg324-1


write_checkpoint -force -noxdef nexys4DDR.dcp

catch { report_utilization -file nexys4DDR_utilization_synth.rpt -pb nexys4DDR_utilization_synth.pb }
