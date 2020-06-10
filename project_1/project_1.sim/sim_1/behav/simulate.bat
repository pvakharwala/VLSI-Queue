@echo off
set xv_path=H:\\Vivado\\Vivado\\2014.4\\bin
call %xv_path%/xsim fifo_behav -key {Behavioral:sim_1:Functional:fifo} -tclbatch fifo.tcl -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
