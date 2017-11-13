#!/bin/bash

DOCKER_CONFIG=/etc/docker/daemon.json

sudo apt-get install docker.io docker-compose

if [ ! -f $DOCKER_CONFIG ]; then
	echo -e "{\n	\"dns\": [\""`nmcli dev show | grep 'IP4.DNS' | grep -sho "[0-9]*\.[0-9]*\.[0-9]*\.[0-9]*"`"\"]\n}" | sudo tee $DOCKER_CONFIG > /dev/null
fi
