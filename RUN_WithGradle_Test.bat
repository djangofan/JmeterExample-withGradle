@ECHO off
cls
TITLE Running Jmeter tests from Gradle...
ECHO.
ECHO Running Jmeter tests from Gradle...
ECHO.

gradlew.bat printBuildScriptClasspath jmeterCleanReport jmeterRun -Penv=dev -DuserThreads=2 -DrampupSeconds=10 -DthreadLoops=1 -DapiVersion=v1 -DtestInt=999 -DtestString=BlahBlah

GOTO :end
:error
ECHO ---------------
ECHO.
ECHO There was an error.  Not running task.
ECHO.
ECHO ---------------
:end
ECHO.
ECHO End of script.  JMeter has finished.
ECHO.
ECHO The HTML report can be found at: 
pause
