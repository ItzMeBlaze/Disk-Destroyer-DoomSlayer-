#echo this is a much much much better way of doing it!
@echo off
setlocal enabledelayedexpansion

:: Define the special characters
set "str=!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"  :: 128 special characters
set "filename=@@@@@@@@@@@@@@@@.txt"  :: 16 special characters for the filename
set "message=################################################################################################################################################################################################################################################################"  :: 256 special characters for the print message

:: Capture the start time
set "start_time=%time%"

:: Write to the file for up to 10 seconds
:loop
:: Get the current time
set "current_time=%time%"
:: Calculate elapsed time in seconds
set /a "elapsed_time=(%current_time:~0,2%*3600 + %current_time:~3,2%*60 + %current_time:~6,2%) - (%start_time:~0,2%*3600 + %start_time:~3,2%*60 + %start_time:~6,2%)"
if !elapsed_time! lss 10 (
    echo %str% >> %filename%
    goto loop
)

:: Print the message
echo %message%
