@ECHO off
cls
TITLE Running Jmeter GUI from Gradle...
ECHO.
ECHO Running Jmeter GUI from Gradle...
ECHO.

gradlew.bat printBuildScriptClasspath jmeterEditor --info

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
