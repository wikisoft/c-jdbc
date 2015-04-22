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
  HSQL_HOME=$CJDBC_HOME/3rdparty/hsqldb
  ISQL_HOME=$CJDBC_HOME/3rdparty/iSQL
  CJDBC_DEFAULT_JVMDEBUG_PORT=52002
  
# uncomment to debug
# JVM_OPTIONS="$JVM_OPTIONS -enableassertions -Xdebug -Xnoagent -Djava.compiler=none -Xrunjdwp:transport=dt_socket,server=y,suspend=n,address=$CJDBC_DEFAULT_JVMDEBUG_PORT"
  
# Set the classpath.
unset CLASSPATH
CLASSPATH=:$CJDBC_HOME/drivers/c-jdbc-driver.jar:$ISQL_HOME/lib/bsf.jar:$ISQL_HOME/lib/isql-core.jar:$ISQL_HOME/lib/jpython1.1.jar:$ISQL_HOME/lib/lax.jar:$ISQL_HOME/lib/mozilla-rhino:$HSQL_HOME/lib/hsqldb.jar

# Change directory if needed
cd $ISQL_HOME

# Java Command.
$JAVA $JVM_OPTIONS -classpath $CLASSPATH com.zerog.lax.LAX iSQL-Viewer.lax  "$@"
