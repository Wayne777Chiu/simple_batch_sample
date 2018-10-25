@echo off
REM the start a loop for action
REM 
REM start [START_NUM] [LOOP_NUM] [ACTION] [LOG_FILE]
REM START_NUM Indicate Start steps
REM LOOP_NUM  Indicate loops number.
REM ACTION    means the active : gitclone, gitpull, etc.
REM LOG_FILE   
REM %1->START_NUM, %2->LOOP_NUM, %3->ACTION, %4->LOG_FILE

SET /a START_NUM=0
SET /a LOOP_NUM=2
SET ACTION=gitclone
SET LOG_FILE=log.txt

if %LOG_FILE%a==a goto nolog

:log_exist
echo ********   start shell **********  > %LOG_FILE%
goto gotoloop

:nolog
echo ********   start shell **********

:gotoloop
echo loop: from %START_NUM% to %LOOP_NUM% for %ACTION%
loop.bat
