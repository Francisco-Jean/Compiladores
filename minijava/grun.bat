@echo off
set SCRIPT_DIR=%~dp0
java -cp ".;%SCRIPT_DIR%antlr-4.13.2-complete.jar" org.antlr.v4.gui.TestRig %*