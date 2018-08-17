#!/bin/sh
#A script to log the cpu and memory usage of linux processes namely - mongod and mongos
# Ver 1.01 By Santakd

MONGOD_PID=$(ps -ef | grep mongod | grep -v grep | awk '{print $2}')

MONGOS_PID=$(ps -ef | grep mongos | grep -v grep | awk '{print $2}')

LOG_FILE= ./logstats.log
echo $LOG_FILE
top -b | awk -v mongod="$MONGOD_PID" -v mongos="$MONGOS_PID" -v logtime="$(date +%T)" '$12 ~ mongod || $12 ~ mongos {print logtime","$1","$9","$10","$12}'
