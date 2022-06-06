#!/bin/bash

#HOST=192.168.55.3
HOST=$(cat dns.dir)
PORT=1883
TOPIC=$1

echo "Topic: ${TOPIC}"

if [ "${TOPIC}" = "" ];
then
	TOPIC="#"
fi

echo "Listening on topic ${TOPIC}..."

mosquitto_sub -h $HOST -p $PORT -t $TOPIC

