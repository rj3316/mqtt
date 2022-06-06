#!/bin/bash

#HOST=192.168.55.3
HOST=$(cat dns.dir)
PORT=1883
TOPIC=$2

if [ "${TOPIC}" = "" ];
then
	TOPIC="test"
fi

mosquitto_pub -h $HOST -p $PORT -t $TOPIC -m $1
