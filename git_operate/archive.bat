@echo on
rem C:\Program Files (x86)\Git\bin\sh.exe" --login -i -c "git archive master | tar -x -C $0" "%~1"
rem using archive to save git data.

SET SHELL_PATH=C:\\Program Files\\Git\\bin
SET SHELL_NAME=sh.exe
SET GIT_CMD=git archive
SET GIT_BRANCH=master

SET GIT_LOG=git log --date=short --pretty=format:"%%ad-%%h-%GIT_BRANCH%" -1
REM Log format is like this: 2018-10-16-fb19168
SET FORMAT_TYPE_ARGUMENT=--format zip
SET OUTPUT_ARGUMENT=-o $(%GIT_LOG%).zip

REM "%SHELL_PATH%\\%SHELL_NAME%" --login -i -c "%GIT_CMD% %GIT_BRANCH% | tar -x -C $0" "%~1"
REM "%SHELL_PATH%\\%SHELL_NAME%" --login -i -c "%GIT_CMD% %FORMAT_TYPE_ARGUMENT% %OUTPUT_ARGUMENT% %GIT_BRANCH%"
"%SHELL_PATH%\\%SHELL_NAME%" --login -i -c "%GIT_CMD% %FORMAT_TYPE_ARGUMENT% %OUTPUT_ARGUMENT% %GIT_BRANCH%"
