@echo on
SET GIT_HOME=C:\\Program Files\\Git\\bin
SET BASH_CMD=sh.exe

if %ACTION%==gitclone goto clonefunction

:pullfunction
SET CMD=pull
cd %PROJECT_HOME%
goto execute_pull

:clonefunction
SET CMD=clone
goto execute_clone


:execute_clone
echo ******** %CMD% **** FOR %GITNAME% ***
if %LOG_FILE%a==a  goto execute_clone_wtlog
echo ******** %CMD% **** FOR %GITNAME% *** >> %LOG_FILE%
timeout /t 5
"%GIT_HOME%\\%BASH_CMD%" --login -i -c "git %CMD% --progress  %GITNAME% 2>&1 | tee -a %LOG_FILE%"
goto gobackloop

:execute_clone_wtlog
timeout /t 5
"%GIT_HOME%\\%BASH_CMD%" --login -i -c "git %CMD% --progress %GITNAME%"
goto gobackloop

:execute_pull
echo ******** %CMD% **** FOR %GITNAME% ***
echo ******** %CMD% **** FOR %GITNAME% *** >> ..\%LOG_FILE%
if %LOG_FILE%a==a  goto execute_pull_wtlog
timeout /t 5
"%GIT_HOME%\\%BASH_CMD%" --login -i -c "git %CMD% --progress 2>&1 | tee -a ..//%LOG_FILE%"
cd ..
goto gobackloop

:execute_pull_wtlog
timeout /t 5
"%GIT_HOME%\\%BASH_CMD%" --login -i -c "git %CMD% --progress "
cd ..
goto gobackloop

:gobackloop
loop.bat %START_NUM%
