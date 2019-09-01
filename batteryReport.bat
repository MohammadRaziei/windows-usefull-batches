@echo off
powercfg /batteryreport
.\battery-report.html
(timeout 1 > NUL)
DEL .\battery-report.html