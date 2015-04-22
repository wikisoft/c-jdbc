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

SET CJDBC_CONFIG=%CJDBC_HOME%\config
SET CJDBC_LOG=%CJDBC_HOME%\log
SET CJDBC_DEFAULT_JVMDEBUG_PORT=51001
:classpath
Rem Set the classpath.
SET CLASSPATH=;%CJDBC_HOME%\lib\jakarta-regexp-1.4-dev.jar;%CJDBC_HOME%\lib\octopus\Octopus.jar;%CJDBC_HOME%\lib\octopus\OctopusGenerator.jar;%CJDBC_HOME%\lib\octopus\csvjdbc.jar;%CJDBC_HOME%\lib\c-jdbc-controller.jar;%CJDBC_HOME%\lib\octopus;%CJDBC_HOME%\drivers\c-jdbc-driver.jar;%CJDBC_HOME%\3rdparty\hsqldb\lib\hsqldb.jar;%CJDBC_HOME%\drivers;%CJDBC_HOME%\lib\crimson.jar;%CJDBC_HOME%\xml;%CJDBC_HOME%\lib\jgroups-core.jar;%CJDBC_HOME%\lib\dom4j-1.5-beta-2.jar;%CJDBC_HOME%\lib\jaxen-1.1-beta-2.jar;%CJDBC_HOME%\lib\log4j.jar;%CJDBC_HOME%\lib\commons-cli.jar;%CJDBC_HOME%\lib\jmx\mx4j-tools.jar;%CJDBC_HOME%\lib\jmx\xsl;%CJDBC_HOME%\lib\jmx\xml-apis.jar;%CJDBC_HOME%\lib\jmx\mx4j.jar;%CJDBC_HOME%\lib\jmx\mx4j-remote.jar;%CJDBC_HOME%\lib\jmx\xalan.jar;%CJDBC_HOME%\lib\mail\activation.jar;%CJDBC_HOME%\lib\mail\mail.jar;%CJDBC_HOME%\lib\tribe.jar;%CJDBC_HOME%\lib\commons-logging.jar;%CJDBC_CONFIG%\language;%CJDBC_CONFIG%\controller;%CJDBC_CONFIG%\virtualdatabase;%CJDBC_CONFIG%\

Rem Change directory if needed


Rem Java Command.
%JAVA% %JVM_OPTIONS%  -Dcjdbc.home=%CJDBC_HOME%  -Dcjdbc.log=%CJDBC_LOG%  -Djava.security.policy=%CJDBC_HOME%\config\java.policy  -classpath %CLASSPATH% org.objectweb.cjdbc.controller.core.Controller  %1 %2 %3 %4 %5 %6 %7 %8 %9

:end
