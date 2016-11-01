@echo off
set xv_path=C:\\Xilinx\\Vivado\\2016.2\\bin
call %xv_path%/xsim Erroneous_SelfCheck_behav -key {Behavioral:SB_JP:Functional:Erroneous_SelfCheck} -tclbatch Erroneous_SelfCheck.tcl -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
