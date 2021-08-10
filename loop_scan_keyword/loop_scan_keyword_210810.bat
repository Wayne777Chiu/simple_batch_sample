ECHO ON
@REM  =============================================================
@REM    Get PRJ_NAME to parsing sample
@REM  =============================================================

@REM  "refer: https://blog.miniasp.com/post/2010/09/24/How-to-parse-text-from-file-or-command-using-Batch"
@REM  "refer: https://ss64.com/nt/for_f.html"
@REM  "refer: https://www.robvanderwoude.com/for.php"
@REM  "refer: https://www.robvanderwoude.com/if.php"
@REM  "refer: https://ss64.com/nt/for_f.html"
@REM  =============================================================
@REM  Purpose:
@REM  PRJ_NAME is a 8 bytes string. 
@REM  We parsing it to check the parameters.
@REM  =============================================================
@REM  Syntax 
@REM          FOR /F ["options"] %%parameter IN (filenameset) DO command
@REM          FOR /F ["options"] %%parameter IN ("Text string to process") DO command
@REM  =============================================================
@REM  Key
@REM     options:
@REM         delims=X  the delimiter character(s). Default for string = a space or TAB.
@REM         skip=n    A number of lines to skip at the beginning of file. (default = 0)
@REM         eol=;     character at the start of each line to indicate a comment
@REM                   the defult is a semicolon(;)
@REM         tokens=n  specifices which numbered items to read from each line (default = 1)
@REM                
@REM                   1 : %%I
@REM                   2 : %%J
@REM                   3 : %%K
@REM                   4 : %%L
@REM                   5 : %%M
@REM                   6 : %%N
@REM                   7 : %%O
@REM                   8 : %%P
@REM                   9 : %%Q
@REM                   10: %%R
@REM                   11: %%S
@REM                   12: %%T
@REM         usebackq  use the alternate quoting style:
@REM                   - Instead of double quotes use single quotes for 'text string to process'
@REM                   - Use double quotes for long file names in "filenameset".
@REM                   - Use back quotes for `command to process`
@REM  Filenameset      A set of one or more files, enclosed in parentheses (file1,file2).
@REM  command          The command to carry out, including any parameters.
@REM                   This can be single command, or if you enclose it 
@REM                   in  (parentheses), several commands, one per line.
@REM  %%parameter      A replaceable parameter:
@REM                   in a batch file use %%G (on the command line %G)
@REM                   (staring at I) (in here, it needs add double-'%' for use ex. %%I)

@REM Find the line const char PRJ_NAME[8]={'X','C','5',' ','+','-','_','6'};
FOR /F "EOL=/ TOKENS=1,2,3,4,5,6,7,8,9,10,11,12,13* DELIMS=',[}; " = %%I IN (sample.txt) DO (
IF "%%K"=="PRJ_NAME" (
@REM =============================================================
@REM   The char '_' drop 
@REM =============================================================
IF "%%Na"=="_a" (SET PRJ1_TEMP=) ELSE (SET PRJ1_TEMP=%%N)
IF "%%Oa"=="_a" (SET PRJ2_TEMP=) ELSE (SET PRJ2_TEMP=%%O)
IF "%%Pa"=="_a" (SET PRJ3_TEMP=) ELSE (SET PRJ3_TEMP=%%P)
IF "%%Qa"=="_a" (SET PRJ4_TEMP=) ELSE (SET PRJ4_TEMP=%%Q)
IF "%%Ra"=="_a" (SET PRJ5_TEMP=) ELSE (SET PRJ5_TEMP=%%R)
IF "%%Sa"=="_a" (SET PRJ6_TEMP=) ELSE (SET PRJ6_TEMP=%%S)
IF "%%Ta"=="_a" (SET PRJ7_TEMP=) ELSE (SET PRJ7_TEMP=%%T)
IF "%%Ua"=="_a" (SET PRJ8_TEMP=) ELSE (SET PRJ8_TEMP=%%U)
))

SET PRJECTNAME=%PRJ1_TEMP%%PRJ2_TEMP%%PRJ3_TEMP%%PRJ4_TEMP%%PRJ5_TEMP%%PRJ6_TEMP%%PRJ7_TEMP%%PRJ8_TEMP%
ECHO %PRJECTNAME%