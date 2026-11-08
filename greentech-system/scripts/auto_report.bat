@echo off
rem Kịch bản tự động lọc log sự cố CRITICAL và ERROR

set LOG_FILE=..\data\log-he-thong.log
set REPORT_FILE=..\backup\bao-cao-su-co.txt

echo ======================================== >> %REPORT_FILE%
echo Bao cao su co he thong - %DATE% %TIME% >> %REPORT_FILE%
echo ======================================== >> %REPORT_FILE%

findstr /C:"CRITICAL" /C:"ERROR" %LOG_FILE% >> %REPORT_FILE%

echo Complete auto report.
