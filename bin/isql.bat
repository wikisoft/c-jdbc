@echo off

Rem CJDBC_HOME definition
if exist %CJDBC_HOME% goto begin
echo "Cannot find C-JDBC home directory. Please set the CJDBC_HOME environment variable."
goto end

:begin

:java
Rem JAVA setup.
Rem
Rem We try to use first the java JVM in JAVA_HOME and if not found, 
Rem we use the one found in the path.
Rem You can specify additional options to give to the Java JVM in the
Rem JAVA_OPTS environment variable.
SET JAVA=java
if not exist %JAVA_HOME%\bin\java goto definition
SET JAVA=%JAVA_HOME%\bin\java

:definition

SET HSQL_HOME=%CJDBC_HOME%\3rdparty\hsqldb
SET ISQL_HOME=%CJDBC_HOME%\3rdparty\iSQL
SET CJDBC_DEFAULT_JVMDEBUG_PORT=52002
:classpath
Rem Set the classpath.
SET CLASSPATH=;%CJDBC_HOME%\drivers\c-jdbc-driver.jar;%ISQL_HOME%\lib\bsf.jar;%ISQL_HOME%\lib\isql-core.jar;%ISQL_HOME%\lib\jpython1.1.jar;%ISQL_HOME%\lib\lax.jar;%ISQL_HOME%\lib\mozilla-rhino;%HSQL_HOME%\lib\hsqldb.jar

Rem Change directory if needed
cd %ISQL_HOME%

Rem Java Command.
%JAVA% %JVM_OPTIONS%  -classpath %CLASSPATH% com.zerog.lax.LAX iSQL-Viewer.lax  %1 %2 %3 %4 %5 %6 %7 %8 %9

:end
