# git Operate

## Description 
the Git command batch file in windows system.
System Test: Windows 10

## command batch file
archive.bat    save git folder <br>
sample:
`
"C:\\Program Files\\Git\\bin\\sh.exe" --login -i -c "git archive --format zip -o $(git log --date=short --pretty=format:"%ad-%h-master" -1).zip master"
`
