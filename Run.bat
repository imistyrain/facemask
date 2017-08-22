@echo off

set DARKNETEXE=../build/darknet/x64/darknet.exe
set DATAPTAH=ibm.data
set MODEL=yolo-ibm
set CFG=%MODEL%-test.cfg
set WEIGHTS=%MODEL%_40000.weights
if "%1"=="" (set IMGFILE=ibm.png) else (set IMGFILE=%1)

"%DARKNETEXE%" detector test %DATAPTAH%  %CFG% %WEIGHTS%  %IMGFILE%

pause