@echo off
set xv_path=C:\\Xilinx\\Vivado\\2016.2\\bin
call %xv_path%/xsim mx_rcvr_TB_behav -key {Behavioral:JS_CB:Functional:mx_rcvr_TB} -tclbatch mx_rcvr_TB.tcl -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
