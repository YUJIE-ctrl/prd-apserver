#!/bin/bash
result=`ps -e -o pid,cmd |grep "java -jar" | grep -v grep |awk '{ print $1 }' `
if [ -n $result ]
then
    kill -9 $result
fi
nohup java -jar /opt/app.jar > /dev/null 2> /dev/null < /dev/null &
exit 0    