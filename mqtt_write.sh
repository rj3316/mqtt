#!/bin/bash

ip=192.168.1.88
port=1883
topic="etxe/kobazulo/bombilla"

mosquitto_pub -h $ip -p $port -t $topic -m "{ st:$1 }"

