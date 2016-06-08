:: go to java JAVA_HOME
cd %JAVA_HOME%\bin\
:: just verify that we'll got the right PID
jps -mv
:: Look up for your PID
for /f "tokens=2" %%a in ('tasklist^|find /i "JavaApp.exe"') do (set PID=%%a)
echo %PID%
:: Write down thread dump
jstack -l %PID% > %temp%\theard_dump_%PID%.txt
:: Open directory with just created file
start %temp%
