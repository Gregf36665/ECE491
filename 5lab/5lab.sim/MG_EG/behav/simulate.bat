@echo off
set xv_path=C:\\Xilinx\\Vivado\\2016.2\\bin
call %xv_path%/xsim mx_rcvr_bench_3_behav -key {Behavioral:MG_EG:Functional:mx_rcvr_bench_3} -tclbatch mx_rcvr_bench_3.tcl -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
