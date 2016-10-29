proc start_step { step } {
  set stopFile ".stop.rst"
  if {[file isfile .stop.rst]} {
    puts ""
    puts "*** Halting run - EA reset detected ***"
    puts ""
    puts ""
    return -code error
  }
  set beginFile ".$step.begin.rst"
  set platform "$::tcl_platform(platform)"
  set user "$::tcl_platform(user)"
  set pid [pid]
  set host ""
  if { [string equal $platform unix] } {
    if { [info exist ::env(HOSTNAME)] } {
      set host $::env(HOSTNAME)
    }
  } else {
    if { [info exist ::env(COMPUTERNAME)] } {
      set host $::env(COMPUTERNAME)
    }
  }
  set ch [open $beginFile w]
  puts $ch "<?xml version=\"1.0\"?>"
  puts $ch "<ProcessHandle Version=\"1\" Minor=\"0\">"
  puts $ch "    <Process Command=\".planAhead.\" Owner=\"$user\" Host=\"$host\" Pid=\"$pid\">"
  puts $ch "    </Process>"
  puts $ch "</ProcessHandle>"
  close $ch
}

proc end_step { step } {
  set endFile ".$step.end.rst"
  set ch [open $endFile w]
  close $ch
}

proc step_failed { step } {
  set endFile ".$step.error.rst"
  set ch [open $endFile w]
  close $ch
}

set_msg_config -id {Common 17-41} -limit 10000000
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
set_msg_config  -ruleid {1}  -id {Synth 8-1921}  -string {{WARNING: [Synth 8-1921] elaboration system task error violates IEEE 1800 syntax [C:/Users/birrur/ECE491/5lab/5lab.srcs/sources_1/imports/imports/sources_1/imports/lab2.srcs/sources_1/imports/lab1/clkenb.sv:35]}}  -suppress 
set_msg_config  -ruleid {2}  -id {Synth 8-1921}  -new_severity {ADVISORY} 
set_msg_config  -ruleid {4}  -id {Synth 8-2292}  -string {{WARNING: [Synth 8-2292] literal value truncated to fit in 5 bits [C:/Users/flynng/Desktop/ECE491/5lab/5lab.srcs/sources_1/imports/5lab/fsm_psfd.sv:75]}}  -suppress 

start_step write_bitstream
set rc [catch {
  create_msg_db write_bitstream.pb
  set_param xicom.use_bs_reader 1
  open_checkpoint nexys4DDR_routed.dcp
  set_property webtalk.parent_dir C:/Users/flynng/Desktop/ECE491/5lab/5lab.cache/wt [current_project]
  catch { write_mem_info -force nexys4DDR.mmi }
  write_bitstream -force nexys4DDR.bit 
  catch { write_sysdef -hwdef nexys4DDR.hwdef -bitfile nexys4DDR.bit -meminfo nexys4DDR.mmi -file nexys4DDR.sysdef }
  catch {write_debug_probes -quiet -force debug_nets}
  close_msg_db -file write_bitstream.pb
} RESULT]
if {$rc} {
  step_failed write_bitstream
  return -code error $RESULT
} else {
  end_step write_bitstream
}

