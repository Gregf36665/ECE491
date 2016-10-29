@echo off
set xv_path=C:\\Xilinx\\Vivado\\2016.2\\bin
call %xv_path%/xsim mx_test_tx_rx_test_behav -key {Behavioral:sim_1:Functional:mx_test_tx_rx_test} -tclbatch mx_test_tx_rx_test.tcl -view C:/Users/flynng/Desktop/ECE491/5lab/mx_rcvr_test_behav.wcfg -view C:/Users/flynng/Desktop/ECE491/5lab/tx_rx_test_behav.wcfg -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
