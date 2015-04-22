@echo off
title HSQLDB %2
if exist %CJDBC_HOME% goto begin
echo "Cannot find C-JDBC home directory. Please set the CJDBC_HOME environment variable."
goto end

:begin
SET HSQL_HOME=%CJDBC_HOME%\3rdparty\hsqldb

Rem Options
SET JAVA_OPTS=

:java
Rem JAVA setup
Rem
Rem We try to use first the java JVM in JAVA_HOME and if not found, 
Rem we use the one found in the classpath.
Rem You can specify additional options to give to the Java JVM in the
Rem JAVA_OPTS environment variable.
SET JAVA=java
if not exist %JAVA_HOME%\bin\java goto classpath
SET JAVA=%JAVA_HOME%\bin\java

:classpath
Rem CLASSPATH definition
SET CLASSPATH=%CLASSPATH%;%CJDBC_HOME%\3rdparty\hsqldb\lib\hsqldb.jar


SET DATA=%HSQL_HOME%\data\%2

Rem If script is called without -port xxxx assume default HSQLDB port 9001
Rem like if the user called hsqldb.bat -port 9001
IF %DATA%==%HSQL_HOME%\data\ SET DATA=%HSQL_HOME%\data\9001

IF NOT EXIST %DATA% mkdir %DATA%
cd %DATA%
copy /Y %HSQL_HOME%\data\test.* %DATA% > %HSQL_HOME%\data\copy.log

Rem Start hsqldb
%JAVA% %JAVA_OPTS% -classpath %CLASSPATH% org.hsqldb.Server %1 %2 %3 %4 %5 %6
:end
