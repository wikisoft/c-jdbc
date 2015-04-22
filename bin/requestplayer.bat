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

rem SET JVM_OPTIONS="-Xms512m -Xmx1024m"
SET CJDBC_DEFAULT_JVMDEBUG_PORT=52003
:classpath
Rem Set the classpath.
SET CLASSPATH=;%CJDBC_HOME%\lib\commons-cli.jar;%CJDBC_HOME%\lib\c-jdbc-request-player.jar;%CJDBC_HOME%\drivers\c-jdbc-driver.jar;%CJDBC_HOME%\drivers;%CJDBC_HOME%\config

Rem Change directory if needed


Rem Java Command.
%JAVA% %JVM_OPTIONS%  -classpath %CLASSPATH% org.objectweb.cjdbc.requestplayer.ClientEmulator  %1 %2 %3 %4 %5 %6 %7 %8 %9

:end
