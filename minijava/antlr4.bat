@echo off
set SCRIPT_DIR=%~dp0
java -jar "%SCRIPT_DIR%antlr-4.13.2-complete.jar" %*
javac -cp "%SCRIPT_DIR%antlr-4.13.2-complete.jar" *.java
