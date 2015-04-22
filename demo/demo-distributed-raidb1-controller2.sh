#!/bin/sh

if [ -z "$CJDBC_HOME" ] ; then 
  echo "Cannot find C-JDBC home directory. Please set the CJDBC_HOME environment variable."
  exit 1
fi

cd $CJDBC_HOME/bin

echo "Starting hsqldb on port 9003"
./hsqldb.sh -port 9003 &

echo "Starting hsqldb on port 9004"
./hsqldb.sh -port 9004 &


echo "Waiting for hsqldb servers to finish start up"
sleep 5

echo "Starting Controller 2"
./controller.sh -f ../config/controller/controller-distributed-2.xml &
