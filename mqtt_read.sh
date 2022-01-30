#!/bin/bash

ip=192.168.1.88
port=1883
topic="etxe/kobazulo/bombilla"

mosquitto_sub -h $ip -p $port -t $topic

