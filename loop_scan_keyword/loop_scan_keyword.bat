ECHO OFF
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



FOR /F "EOL=/ TOKENS=1,2,3,4,5,6,7,8,9,10,11,12* DELIMS=',[}; " = %%I IN (sample.txt) DO IF %%J==PRJ_NAME @SET PRJ1_TEMP=%%L
FOR /F "EOL=/ TOKENS=1,2,3,4,5,6,7,8,9,10,11,12* DELIMS=',[}; " = %%I IN (sample.txt) DO IF %%J==PRJ_NAME @SET PRJ2_TEMP=%%M
FOR /F "EOL=/ TOKENS=1,2,3,4,5,6,7,8,9,10,11,12* DELIMS=',[}; " = %%I IN (sample.txt) DO IF %%J==PRJ_NAME @SET PRJ3_TEMP=%%N
FOR /F "EOL=/ TOKENS=1,2,3,4,5,6,7,8,9,10,11,12* DELIMS=',[}; " = %%I IN (sample.txt) DO IF %%J==PRJ_NAME @SET PRJ4_TEMP=%%O
FOR /F "EOL=/ TOKENS=1,2,3,4,5,6,7,8,9,10,11,12* DELIMS=',[}; " = %%I IN (sample.txt) DO IF %%J==PRJ_NAME @SET PRJ5_TEMP=%%P
FOR /F "EOL=/ TOKENS=1,2,3,4,5,6,7,8,9,10,11,12* DELIMS=',[}; " = %%I IN (sample.txt) DO IF %%J==PRJ_NAME @SET PRJ6_TEMP=%%Q
FOR /F "EOL=/ TOKENS=1,2,3,4,5,6,7,8,9,10,11,12* DELIMS=',[}; " = %%I IN (sample.txt) DO IF %%J==PRJ_NAME @SET PRJ7_TEMP=%%R
FOR /F "EOL=/ TOKENS=1,2,3,4,5,6,7,8,9,10,11,12* DELIMS=',[}; " = %%I IN (sample.txt) DO IF %%J==PRJ_NAME @SET PRJ8_TEMP=%%S

REM =============================================================
REM   We drop the char '_' 
REM =============================================================

@REM ECHO %PRJ1_TEMP%
@REM ECHO %PRJ2_TEMP%E
@REM ECHO %PRJ3_TEMP%
@REM ECHO %PRJ4_TEMP%
@REM ECHO %PRJ5_TEMP%
@REM ECHO %PRJ6_TEMP%
@REM ECHO %PRJ7_TEMP%
@REM ECHO %PRJ8_TEMP%

IF %PRJ1_TEMP%a==_a SET PRJ1_TEMP=
IF %PRJ2_TEMP%a==_a SET PRJ2_TEMP=
IF %PRJ3_TEMP%a==_a SET PRJ3_TEMP=
IF %PRJ4_TEMP%a==_a SET PRJ4_TEMP=
IF %PRJ5_TEMP%a==_a SET PRJ5_TEMP=
IF %PRJ6_TEMP%a==_a SET PRJ6_TEMP=
IF %PRJ7_TEMP%a==_a SET PRJ7_TEMP=
IF %PRJ8_TEMP%a==_a SET PRJ8_TEMP=

SET PRJECTNAME=%PRJ1_TEMP%%PRJ2_TEMP%%PRJ3_TEMP%%PRJ4_TEMP%%PRJ5_TEMP%%PRJ6_TEMP%%PRJ7_TEMP%%PRJ8_TEMP%
ECHO %PRJECTNAME%