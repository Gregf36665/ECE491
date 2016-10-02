@echo off
set xv_path=C:\\Xilinx\\Vivado\\2016.2\\bin
call %xv_path%/xsim rx_testbench_behav -key {Behavioral:sim_1:Functional:rx_testbench} -tclbatch rx_testbench.tcl -view C:/Users/flynng/Desktop/ECE491/4lab/4lab.srcs/sim_1/imports/4lab/rx_testbench_behav.wcfg -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
