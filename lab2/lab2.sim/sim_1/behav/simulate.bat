@echo off
set xv_path=C:\\Xilinx\\Vivado\\2016.2\\bin
call %xv_path%/xsim transmitter_bench_behav -key {Behavioral:sim_1:Functional:transmitter_bench} -tclbatch transmitter_bench.tcl -view C:/Users/flynng/Desktop/ECE491/lab2/transmitter_bench_behav.wcfg -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
