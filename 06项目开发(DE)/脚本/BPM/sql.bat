cd /d %~dp0
set DIR=%cd%
echo DIR=%DIR%
set dbhost=127.0.0.1
set dbuser=sa
set dbpassword=1
set dbname=sfdata
for /R %DIR% %%f in (*.sql) do ( 
  echo %%f
  osql -S %dbhost% -U %dbuser% -P %dbpassword% -d %dbname% -i %%f
)
pause