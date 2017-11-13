#!/bin/bash

DOCKER_PID=/var/run/docker.pid
DOCKER_SOCKET=/var/run/docker.sock
DOCKER_GROUP=docker
CURRENT_USER=`whoami`

if [ ! -e $DOCKER_PID ]; then	
	sudo service docker start
fi

id -nG $CURRENT_USER | grep -qw $DOCKER_GROUP

EXIT_CODE=$?

if [ $EXIT_CODE -ne 0 ]; then
	sudo usermod -G $DOCKER_GROUP $CURRENT_USER
	exec su -l $CURRENT_USER
fi

docker-compose up -d
