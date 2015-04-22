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

:classpath
Rem Set the classpath.
SET CLASSPATH=;%CJDBC_HOME%\lib\metouia.jar;%CJDBC_HOME%\lib\dom4j-1.5-beta-2.jar;%CJDBC_HOME%\lib\jaxen-1.1-beta-2.jar;%CJDBC_HOME%\config\language;%CJDBC_HOME%\config;%CJDBC_HOME%\lib\c-jdbc-console.jar;%CJDBC_HOME%\lib\looks-1.3b1.jar;%CJDBC_HOME%\xml;%CJDBC_HOME%\lib\crimson.jar

Rem Change directory if needed


Rem Java Command.
%JAVA% %JVM_OPTIONS%  -Dswing.defaultlaf=net.sourceforge.mlf.metouia.MetouiaLookAndFeel  -classpath %CLASSPATH% org.objectweb.cjdbc.console.wizard.XmlWizard  %1 %2 %3 %4 %5 %6 %7 %8 %9

:end
