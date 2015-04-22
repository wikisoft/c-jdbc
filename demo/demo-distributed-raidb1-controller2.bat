@echo off
title C-JDBC Distributed RAIDb-1 demo - Controller 2
echo ******************************************************
echo ******************************************************
echo **                                                  **
echo ** Please press a key when hsqldb servers are ready **
echo **                                                  **
echo ******************************************************
echo ******************************************************

if exist %CJDBC_HOME% goto begin
echo "Cannot find C-JDBC home directory. Please set the CJDBC_HOME environment variable."
goto end

:begin
cd "%CJDBC_HOME%\bin"

echo Starting hsqldb on port 9003
start \B hsqldb.bat -port 9003

echo Starting hsqldb on port 9004
start \B hsqldb.bat -port 9004

pause

echo Starting Controller 2 in distributed Configuration
start \B controller.bat -f ..\config\controller\controller-distributed-2.xml

:end