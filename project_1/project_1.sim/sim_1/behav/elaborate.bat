@echo off
set xv_path=H:\\Vivado\\Vivado\\2014.4\\bin
call %xv_path%/xelab  -wto cb1143273fe643298985b2e03a06f3dd -m64 --debug typical --relax -L xil_defaultlib -L secureip --snapshot fifo_behav xil_defaultlib.fifo -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
