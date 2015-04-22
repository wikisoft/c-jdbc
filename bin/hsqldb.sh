#!/bin/sh

if [ -z "$CJDBC_HOME" ] ; then 
  echo "Cannot find C-JDBC home directory. Please set the CJDBC_HOME environment variable."
  exit 1
fi
HSQL_HOME=$CJDBC_HOME/3rdparty/hsqldb

# Options
JAVA_OPTS=""

# JAVA setup
#
# We try to use first the java JVM in JAVA_HOME and if not found, 
# we use the one found in the classpath.
# You can specify additional options to give to the Java JVM in the
# JAVA_OPTS environment variable.
if [ -z "$JAVA_HOME" ]
then
    JAVA=`which java`
else
    JAVA=$JAVA_HOME/bin/java
fi
export JAVA

# CLASSPATH definition
CLASSPATH=$CLASSPATH:$HSQL_HOME/lib/hsqldb.jar

# Start hsqldb
DATA=$2
# Assume that default is to start HSQLDB on port 9001
if [ $DATA = "" ]; then DATA="9001"; fi
DATA=$HSQL_HOME/data/$DATA
if [ ! -d $DATA ]; then mkdir $DATA; fi
cd $DATA
cp $HSQL_HOME/data/*.* $DATA

${JAVA} ${JAVA_OPTS} -classpath $CLASSPATH  org.hsqldb.Server "$@"
