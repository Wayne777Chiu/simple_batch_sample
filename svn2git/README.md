SVN Project converse to GIT Project
===
###Step by Step to process

Command:
     svn2git.bat   <Origin_SVN_REPO>

ps: Origin_SVN_REPO use by bfolder structure not by server.

0. Copy the SVN Repository (SVN Project Name) in the batch folder. (<Origin_SVN_REPO>)
1. Create folder to store SVN Repository for SVN project.(//repo//SVN_Project_Folder+"_svn")
    ex. /<SVN_REPO>/<SVN_PRJ>, just create two folders to process in batch file.
    ex. svn2git.bat %1 (%1: SVN Project Name)
2. Create folder to store GIT Repository for GIT project.(//repo//GIT_Project_Folder+"_git")
    ex. /<SVN_REPO>/<SVN_PRJ>, just create two folders to process in batch file.
3. Set SVN server by batch file. (svn_server.bat)
    ex. svnserve.exe -d --listen-port 1111 -r \Local\Repository\database\folder
    ex. the tools locate in "\Program Files\TortoiseSVN\bin"
4. Execute git svn command to translate. 
    ex. git.exe svn clone "svn://localhost:1111" "\Local\Repository\database\folder -T trunk -b branches -t tags
    ex. the tools locate in "\Program Files\Git\mingw64\libexec\git-core"