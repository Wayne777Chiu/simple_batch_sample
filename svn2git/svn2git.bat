@echo on

echo Create Folder for SVN

SET HOST_PORT=1111
SET LOCALHOST=localhost
SET TARGET_FORDER=trunk
mkdir repo

:goto_repository
cd repo
if %1a==a goto GenStd
SET SVN_PRJ=%1_svn
SET GIT_PRJ=%1_git
goto Process

:GenStd
echo "In this case, Not Support this mode!!"
REM SET SVN_PRJ=svnprj
goto terminal_stop

:Process
mkdir %SVN_PRJ%
mkdir %GIT_PRJ%
cd..

SET CURRENT_PATH=%cd%
SET SVN_PATH=repo\\%SVN_PRJ%
SET GIT_PATH=repo\\%GIT_PRJ%
SET GIT_UNIX_PATH=repo//%GIT_PRJ%
SET GIT_HOME=C:\\Program Files\\Git\\bin
SET BASH_CMD=sh.exe

echo xcopy folder to repo
xcopy /E/I/H .\\%1 .\\%SVN_PATH%

echo start svn server
start svn_server.bat %CURRENT_PATH%\\%SVN_PATH%

echo translate svn project to git project
echo open git script terminal.
"%GIT_HOME%\\%BASH_CMD%" --login -i -c "git.exe svn clone svn://%LOCALHOST%:%HOST_PORT% .//%GIT_UNIX_PATH% -T %TARGET_FORDER% -b branches -t tags"
goto success_exit

:terminal_stop
echo "Wrong!!"
goto go_exit

:success_exit
echo "Success"
goto go_exit

:go_exit
