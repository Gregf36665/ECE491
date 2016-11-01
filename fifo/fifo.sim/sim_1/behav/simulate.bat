@echo off
set xv_path=C:\\Xilinx\\Vivado\\2016.2\\bin
call %xv_path%/xsim fifo_upgrade_sim_behav -key {Behavioral:sim_1:Functional:fifo_upgrade_sim} -tclbatch fifo_upgrade_sim.tcl -view C:/Users/flynng/Desktop/ECE491/fifo/fifo_sim_behav.wcfg -view C:/Users/flynng/Desktop/ECE491/fifo/fifo_upgrade_sim_behav.wcfg -view C:/Users/flynng/Desktop/ECE491/fifo/correlator_test_behav.wcfg -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
