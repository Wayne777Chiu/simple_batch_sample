ECHO ON
@REM  =============================================================
@REM    Get PRJ_NAME to parsing sample
@REM  =============================================================

@REM  "refer: https://blog.miniasp.com/post/2010/09/24/How-to-parse-text-from-file-or-command-using-Batch"
@REM  "refer: https://ss64.com/nt/for_f.html"
@REM  PRJ_NAME is a 8 bytes string. 
@REM  We parsing it for 8 loop to check the parameters.
@REM  the TOEKNS: 
@REM  1 : %%I
@REM  2 : %%J
@REM  3 : %%K
@REM  4 : %%L
@REM  5 : %%M
@REM  6 : %%N
@REM  7 : %%O
@REM  8 : %%P
@REM  9 : %%Q
@REM  10: %%R
@REM  11: %%S
@REM  12: %%T
@REM  In order to parser the input string or file use the parameter : /F
@REM  the conditin use "......" to set parser condition.
@REM  EOL=/n or others, End of line condition.
@REM  TOEKN is same as upper descripton number, exception * character, it means the remain data in one line. (pass throught the data)
@REM  DELTMS: the delimiter to cut off the string point. 

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