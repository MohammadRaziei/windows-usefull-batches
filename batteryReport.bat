@echo off
powercfg /batteryreport
.\battery-report.html
DEL .\battery-report.html