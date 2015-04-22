#!/bin/sh

# CJDBC_HOME definition
if [ -z "$CJDBC_HOME" ] ; then 
  echo "Cannot find C-JDBC home directory. Please set the CJDBC_HOME environment variable."
  exit 1
fi

# JAVA setup.
#
# We try to use first the java JVM in JAVA_HOME and if not found,
# we use the one found in the path.
# You can specify additional options to give to the Java JVM in the
# JAVA_OPTS environment variable.
if [ -z "$JAVA_HOME" ]
then
    JAVA=`which java`
    if [ ! -x "$JAVA" ]; then
      echo "Cannot find java command. Please set the JAVA_HOME environment variable."
      exit 1
    fi
else
    JAVA=$JAVA_HOME/bin/java
fi
export JAVA
  CJDBC_CONFIG=$CJDBC_HOME/config
  CJDBC_LOG=$CJDBC_HOME/log
  CJDBC_DEFAULT_JVMDEBUG_PORT=51001
  
# uncomment to debug
# JVM_OPTIONS="$JVM_OPTIONS -enableassertions -Xdebug -Xnoagent -Djava.compiler=none -Xrunjdwp:transport=dt_socket,server=y,suspend=n,address=$CJDBC_DEFAULT_JVMDEBUG_PORT"
  
# Set the classpath.
unset CLASSPATH
CLASSPATH=:$CJDBC_HOME/lib/jakarta-regexp-1.4-dev.jar:$CJDBC_HOME/lib/octopus/Octopus.jar:$CJDBC_HOME/lib/octopus/OctopusGenerator.jar:$CJDBC_HOME/lib/octopus/csvjdbc.jar:$CJDBC_HOME/lib/c-jdbc-controller.jar:$CJDBC_HOME/lib/octopus:$CJDBC_HOME/drivers/c-jdbc-driver.jar:$CJDBC_HOME/3rdparty/hsqldb/lib/hsqldb.jar:$CJDBC_HOME/drivers:$CJDBC_HOME/lib/crimson.jar:$CJDBC_HOME/xml:$CJDBC_HOME/lib/jgroups-core.jar:$CJDBC_HOME/lib/dom4j-1.5-beta-2.jar:$CJDBC_HOME/lib/jaxen-1.1-beta-2.jar:$CJDBC_HOME/lib/log4j.jar:$CJDBC_HOME/lib/commons-cli.jar:$CJDBC_HOME/lib/jmx/mx4j-tools.jar:$CJDBC_HOME/lib/jmx/xsl:$CJDBC_HOME/lib/jmx/xml-apis.jar:$CJDBC_HOME/lib/jmx/mx4j.jar:$CJDBC_HOME/lib/jmx/mx4j-remote.jar:$CJDBC_HOME/lib/jmx/xalan.jar:$CJDBC_HOME/lib/mail/activation.jar:$CJDBC_HOME/lib/mail/mail.jar:$CJDBC_HOME/lib/tribe.jar:$CJDBC_HOME/lib/commons-logging.jar:$CJDBC_CONFIG/language:$CJDBC_CONFIG/controller:$CJDBC_CONFIG/virtualdatabase:$CJDBC_CONFIG/

# Change directory if needed


# Java Command.
$JAVA $JVM_OPTIONS -classpath $CLASSPATH  -Dcjdbc.home=$CJDBC_HOME  -Dcjdbc.log=$CJDBC_LOG  -Djava.security.policy=$CJDBC_HOME/config/java.policy org.objectweb.cjdbc.controller.core.Controller  "$@"
