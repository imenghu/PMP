cd /d %~dp0
set DIR=%cd%
echo DIR=%DIR%
set dbhost=DESKTOP-GP8TCQB\SQLEXPRESS
set dbuser=sa
set dbpassword=11111111
set dbname=sfdata
for /R %DIR% %%f in (*.sql) do ( 
  echo %%f
  osql -S %dbhost% -U %dbuser% -P %dbpassword% -d %dbname% -i %%f
)
pause