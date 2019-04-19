@echo off
SET MATLABROOT="C:\Program Files\MATLAB\R2018b"
PATH=%MATLABROOT%;%PATH%
::START matlab.exe -batch %1 -logfile c:\temp\logfile
START matlab.exe -batch %1 -logfile %1.log
PAUSE