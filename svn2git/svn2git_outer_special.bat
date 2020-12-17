@echo on
echo This is for the directory not in the trunk.
echo and we how to resave it in the trunk. 
echo then change it from svn to git.
echo Create Folder for SVN

SET HOST_PORT=1111
SET LOCALHOST=localhost
SET BRANCH_NAME_A=SOM6897_C_
SET BRANCH_NAME_B=SOM6897_D_
SET BRANCH_NAME_C=SOM6897_E_
SET BRANCH_NAME_D=SOM6897_F_
SET BRANCH_NAME_E=SOM6897_G_
SET BRANCH_NAME_F=SOM6897_H_
SET BRANCH_NAME_G=SOM6897_I_
SET BRANCH_NAME_H=SOM6897_J_
SET BRANCH_NAME_I=SOM6897_K_
SET BRANCH_NAME_J=SOM6897_M_
SET BRANCH_NAME_K=SOM6897_N_
SET BRANCH_NAME_L=SOM6897_O_
SET BRANCH_NAME_M=SOM6897_P_
SET BRANCH_NAME_N=SOM6897_Q_
SET BRANCH_NAME_O=SOM6897_R_

mkdir repo

:goto_repository
cd repo
if %1a==a goto GenStd
SET SVN_PRJ=%1_svn
rem SET GIT_PRJ=%1_git
SET GIT_PRJ_A=%1_git_A
SET GIT_PRJ_B=%1_git_B
SET GIT_PRJ_C=%1_git_C
SET GIT_PRJ_D=%1_git_D
SET GIT_PRJ_E=%1_git_E
SET GIT_PRJ_F=%1_git_F
SET GIT_PRJ_G=%1_git_G
SET GIT_PRJ_H=%1_git_H
SET GIT_PRJ_I=%1_git_I
SET GIT_PRJ_J=%1_git_J
SET GIT_PRJ_K=%1_git_K
SET GIT_PRJ_L=%1_git_L
SET GIT_PRJ_M=%1_git_M
SET GIT_PRJ_N=%1_git_N
SET GIT_PRJ_O=%1_git_O
goto Process

:GenStd
echo "In this case, Not Support this mode!!"
REM SET SVN_PRJ=svnprj
goto terminal_stop

:Process
mkdir %SVN_PRJ%
rem mkdir %GIT_PRJ%
mkdir %GIT_PRJ_A%
mkdir %GIT_PRJ_B%
mkdir %GIT_PRJ_C%
mkdir %GIT_PRJ_D%
mkdir %GIT_PRJ_E%
mkdir %GIT_PRJ_F%
mkdir %GIT_PRJ_G%
mkdir %GIT_PRJ_H%
mkdir %GIT_PRJ_I%
mkdir %GIT_PRJ_J%
mkdir %GIT_PRJ_K%
mkdir %GIT_PRJ_L%
mkdir %GIT_PRJ_M%
mkdir %GIT_PRJ_N%
mkdir %GIT_PRJ_O%
cd..              
                  
SET CURRENT_PATH=%cd%
SET SVN_PATH=repo\\%SVN_PRJ%
rem SET GIT_PATH=repo\\%GIT_PRJ%
                               
SET GIT_UNIX_PATH_A=repo//%GIT_PRJ_A%
SET GIT_UNIX_PATH_B=repo//%GIT_PRJ_B%
SET GIT_UNIX_PATH_C=repo//%GIT_PRJ_C%
SET GIT_UNIX_PATH_D=repo//%GIT_PRJ_D%
SET GIT_UNIX_PATH_E=repo//%GIT_PRJ_E%
SET GIT_UNIX_PATH_F=repo//%GIT_PRJ_F%
SET GIT_UNIX_PATH_G=repo//%GIT_PRJ_G%
SET GIT_UNIX_PATH_H=repo//%GIT_PRJ_H%
SET GIT_UNIX_PATH_I=repo//%GIT_PRJ_I%
SET GIT_UNIX_PATH_J=repo//%GIT_PRJ_J%
SET GIT_UNIX_PATH_K=repo//%GIT_PRJ_K%
SET GIT_UNIX_PATH_L=repo//%GIT_PRJ_L%
SET GIT_UNIX_PATH_M=repo//%GIT_PRJ_M%
SET GIT_UNIX_PATH_N=repo//%GIT_PRJ_N%
SET GIT_UNIX_PATH_O=repo//%GIT_PRJ_O%

SET GIT_HOME=C:\\Program Files\\Git\\bin
SET BASH_CMD=sh.exe

echo xcopy folder to repo
xcopy /E/I/H .\\%1 .\\%SVN_PATH%

echo start svn server
start svn_server.bat %CURRENT_PATH%\\%SVN_PATH%

echo translate svn project to git project
echo open git script terminal.
"%GIT_HOME%\\%BASH_CMD%" --login -i -c "git.exe svn clone svn://%LOCALHOST%:%HOST_PORT% .//%GIT_UNIX_PATH_A% -T trunk//%BRANCH_NAME_A% -b branches -t tags"
"%GIT_HOME%\\%BASH_CMD%" --login -i -c "git.exe svn clone svn://%LOCALHOST%:%HOST_PORT% .//%GIT_UNIX_PATH_B% -T trunk//%BRANCH_NAME_B% -b branches -t tags"
"%GIT_HOME%\\%BASH_CMD%" --login -i -c "git.exe svn clone svn://%LOCALHOST%:%HOST_PORT% .//%GIT_UNIX_PATH_C% -T trunk//%BRANCH_NAME_C% -b branches -t tags"
"%GIT_HOME%\\%BASH_CMD%" --login -i -c "git.exe svn clone svn://%LOCALHOST%:%HOST_PORT% .//%GIT_UNIX_PATH_D% -T trunk//%BRANCH_NAME_D% -b branches -t tags"
"%GIT_HOME%\\%BASH_CMD%" --login -i -c "git.exe svn clone svn://%LOCALHOST%:%HOST_PORT% .//%GIT_UNIX_PATH_E% -T trunk//%BRANCH_NAME_E% -b branches -t tags"
"%GIT_HOME%\\%BASH_CMD%" --login -i -c "git.exe svn clone svn://%LOCALHOST%:%HOST_PORT% .//%GIT_UNIX_PATH_F% -T trunk//%BRANCH_NAME_F% -b branches -t tags"
"%GIT_HOME%\\%BASH_CMD%" --login -i -c "git.exe svn clone svn://%LOCALHOST%:%HOST_PORT% .//%GIT_UNIX_PATH_G% -T trunk//%BRANCH_NAME_G% -b branches -t tags"
"%GIT_HOME%\\%BASH_CMD%" --login -i -c "git.exe svn clone svn://%LOCALHOST%:%HOST_PORT% .//%GIT_UNIX_PATH_H% -T trunk//%BRANCH_NAME_H% -b branches -t tags"
"%GIT_HOME%\\%BASH_CMD%" --login -i -c "git.exe svn clone svn://%LOCALHOST%:%HOST_PORT% .//%GIT_UNIX_PATH_I% -T trunk//%BRANCH_NAME_I% -b branches -t tags"
"%GIT_HOME%\\%BASH_CMD%" --login -i -c "git.exe svn clone svn://%LOCALHOST%:%HOST_PORT% .//%GIT_UNIX_PATH_J% -T trunk//%BRANCH_NAME_J% -b branches -t tags"
"%GIT_HOME%\\%BASH_CMD%" --login -i -c "git.exe svn clone svn://%LOCALHOST%:%HOST_PORT% .//%GIT_UNIX_PATH_K% -T trunk//%BRANCH_NAME_K% -b branches -t tags"
"%GIT_HOME%\\%BASH_CMD%" --login -i -c "git.exe svn clone svn://%LOCALHOST%:%HOST_PORT% .//%GIT_UNIX_PATH_L% -T trunk//%BRANCH_NAME_L% -b branches -t tags"
"%GIT_HOME%\\%BASH_CMD%" --login -i -c "git.exe svn clone svn://%LOCALHOST%:%HOST_PORT% .//%GIT_UNIX_PATH_M% -T trunk//%BRANCH_NAME_M% -b branches -t tags"
"%GIT_HOME%\\%BASH_CMD%" --login -i -c "git.exe svn clone svn://%LOCALHOST%:%HOST_PORT% .//%GIT_UNIX_PATH_N% -T trunk//%BRANCH_NAME_N% -b branches -t tags"
"%GIT_HOME%\\%BASH_CMD%" --login -i -c "git.exe svn clone svn://%LOCALHOST%:%HOST_PORT% .//%GIT_UNIX_PATH_O% -T trunk//%BRANCH_NAME_O% -b branches -t tags"
SET GIT_IMPORT_FOLDER=som-6897_x
echo subtree to %1/master git.
echo NOTE: You must create the branches first!
CD .\%GIT_IMPORT_FOLDER%
"%GIT_HOME%\\%BASH_CMD%" --login -i -c "git checkout %BRANCH_NAME_A%"
"%GIT_HOME%\\%BASH_CMD%" --login -i -c "git subtree add --prefix=origin ..//%GIT_UNIX_PATH_A% master"
"%GIT_HOME%\\%BASH_CMD%" --login -i -c "git checkout %BRANCH_NAME_B%"
"%GIT_HOME%\\%BASH_CMD%" --login -i -c "git subtree add --prefix=origin ..//%GIT_UNIX_PATH_B% master"
"%GIT_HOME%\\%BASH_CMD%" --login -i -c "git checkout %BRANCH_NAME_C%"
"%GIT_HOME%\\%BASH_CMD%" --login -i -c "git subtree add --prefix=origin ..//%GIT_UNIX_PATH_C% master"
"%GIT_HOME%\\%BASH_CMD%" --login -i -c "git checkout %BRANCH_NAME_D%"
"%GIT_HOME%\\%BASH_CMD%" --login -i -c "git subtree add --prefix=origin ..//%GIT_UNIX_PATH_D% master"
"%GIT_HOME%\\%BASH_CMD%" --login -i -c "git checkout %BRANCH_NAME_E%"
"%GIT_HOME%\\%BASH_CMD%" --login -i -c "git subtree add --prefix=origin ..//%GIT_UNIX_PATH_E% master"
"%GIT_HOME%\\%BASH_CMD%" --login -i -c "git checkout %BRANCH_NAME_F%"
"%GIT_HOME%\\%BASH_CMD%" --login -i -c "git subtree add --prefix=origin ..//%GIT_UNIX_PATH_F% master"
"%GIT_HOME%\\%BASH_CMD%" --login -i -c "git checkout %BRANCH_NAME_G%"
"%GIT_HOME%\\%BASH_CMD%" --login -i -c "git subtree add --prefix=origin ..//%GIT_UNIX_PATH_G% master"
"%GIT_HOME%\\%BASH_CMD%" --login -i -c "git checkout %BRANCH_NAME_H%"
"%GIT_HOME%\\%BASH_CMD%" --login -i -c "git subtree add --prefix=origin ..//%GIT_UNIX_PATH_H% master"
"%GIT_HOME%\\%BASH_CMD%" --login -i -c "git checkout %BRANCH_NAME_I%"
"%GIT_HOME%\\%BASH_CMD%" --login -i -c "git subtree add --prefix=origin ..//%GIT_UNIX_PATH_I% master"
"%GIT_HOME%\\%BASH_CMD%" --login -i -c "git checkout %BRANCH_NAME_J%"
"%GIT_HOME%\\%BASH_CMD%" --login -i -c "git subtree add --prefix=origin ..//%GIT_UNIX_PATH_J% master"
"%GIT_HOME%\\%BASH_CMD%" --login -i -c "git checkout %BRANCH_NAME_K%"
"%GIT_HOME%\\%BASH_CMD%" --login -i -c "git subtree add --prefix=origin ..//%GIT_UNIX_PATH_K% master"
"%GIT_HOME%\\%BASH_CMD%" --login -i -c "git checkout %BRANCH_NAME_L%"
"%GIT_HOME%\\%BASH_CMD%" --login -i -c "git subtree add --prefix=origin ..//%GIT_UNIX_PATH_L% master"
"%GIT_HOME%\\%BASH_CMD%" --login -i -c "git checkout %BRANCH_NAME_M%"
"%GIT_HOME%\\%BASH_CMD%" --login -i -c "git subtree add --prefix=origin ..//%GIT_UNIX_PATH_M% master"
"%GIT_HOME%\\%BASH_CMD%" --login -i -c "git checkout %BRANCH_NAME_N%"
"%GIT_HOME%\\%BASH_CMD%" --login -i -c "git subtree add --prefix=origin ..//%GIT_UNIX_PATH_N% master"
"%GIT_HOME%\\%BASH_CMD%" --login -i -c "git checkout %BRANCH_NAME_O%"
"%GIT_HOME%\\%BASH_CMD%" --login -i -c "git subtree add --prefix=origin ..//%GIT_UNIX_PATH_O% master"
goto success_exit


:terminal_stop
echo "Wrong!!"
goto go_exit

:success_exit
echo "Success"
goto go_exit

:go_exit
rem git subtree add --prefix=origin D:\\nb_tmp\\tmp\\code\\svn_tmp\\keep_practice\\svn2git\\repo\\SOM6897_git master