@echo off
SET /a START_NUM=%1 + 1
SET /a TEMP_MUM= %LOOP_NUM% + 1

:BEFORELOOP
if %START_NUM% == %TEMP_MUM% goto gotoexit

:LOOP
echo loop %START_NUM% %LOOP_NUM% %ACTION% %LOG_FILE%
if %START_NUM%  == 1 goto step1
if %START_NUM%  == 2 goto step2
if %START_NUM%  == 3 goto step3
if %START_NUM%  == 4 goto step4
if %START_NUM%  == 5 goto step5
if %START_NUM%  == 6 goto step6
if %START_NUM%  == 7 goto step7


:STEP1
SET GITNAME=git@gitx.com:A_project/specialA.git
SET PROJECT_HOME=specialA
goto AFTERTHAT

:STEP2
SET GITNAME=git@gitx.com:A_project/specialB.git
SET PROJECT_HOME=specialB
goto AFTERTHAT

:STEP3
goto AFTERTHAT

:STEP4
goto AFTERTHAT

:STEP5
goto AFTERTHAT

:STEP6
goto AFTERTHAT

:STEP7
goto AFTERTHAT

:AFTERTHAT
rem echo This is %START_NUM% times
if %START_NUM% == %TEMP_MUM% goto gotoexit
execute.bat

:gotoexit
echo exit
