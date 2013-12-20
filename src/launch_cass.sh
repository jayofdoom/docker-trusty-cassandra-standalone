#!/bin/sh
LOCAL_IP=`ip a s dev eth0 | grep 'inet ' | cut -d/ -f1 | awk '{print $2}'`
# Cassandra has to know the exact local IP it's configured on so we rewrite
# the configuration at runtime to include it
sed -i "s/localhost/$LOCAL_IP/" /etc/cassandra/cassandra.yaml
sed -i "s/127.0.0.1/$LOCAL_IP/" /etc/cassandra/cassandra.yaml
. /etc/cassandra/cassandra-env.sh
/usr/sbin/cassandra -f
