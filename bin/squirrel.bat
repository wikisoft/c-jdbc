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
SET SQUIRREL_HOME=%CJDBC_HOME%\3rdparty\squirrel
SET CJDBC_DEFAULT_JVMDEBUG_PORT=52001
:classpath
Rem Set the classpath.
SET CLASSPATH=;%CJDBC_HOME%\drivers\c-jdbc-driver.jar;%SQUIRREL_HOME%\lib\squirrel-sql.jar;%SQUIRREL_HOME%\lib\log4j.jar;%SQUIRREL_HOME%\lib\nanoxml-2.1.jar;%SQUIRREL_HOME%\lib\fw.jar;%SQUIRREL_HOME%\;%HSQL_HOME%\lib\hsqldb.jar

Rem Change directory if needed


Rem Java Command.
%JAVA% %JVM_OPTIONS%  -classpath %CLASSPATH% net.sourceforge.squirrel_sql.client.Main -settingsdir=%SQUIRREL_HOME% -loggingConfigFile=%SQUIRREL_HOME%\log4j.properties -squirrelHome=%SQUIRREL_SQL_HOME%  %1 %2 %3 %4 %5 %6 %7 %8 %9

:end
