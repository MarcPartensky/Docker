#!/bin/sh

PROJECT_PATH="$PROGRAMS_PATH/docker"
export COMPOSE_PATH_SEPARATOR=":"
export COMPOSE_FILE=$(find $PROJECT_PATH/services/*.yml | xargs -I @ echo -n @:)
export COMPOSE_FILE=${COMPOSE_FILE::-1}

tool=podman-compose
# tool=docker-compose


if [ "$1" = "-f" ]
then
    $tool --file $@
    exit
fi

if [ -f $PWD/docker-compose.yml ]
then
    if [ "$#" = 0 ]
    then
        $tool ps
        exit
    fi
    $tool --file $PWD/docker-compose.yml $@
    exit
fi

if [ "$#" = 0 ]
then
    docker-compose ps
    exit
fi

$tool $@
if [ "$1" = "up" ]
then
    if [ "$2" = "-d" ]
    then
        $tool logs -f ${@: 3}
    else
        $tool logs -f ${@: 2}
    fi
elif [ "$1" = "start" ]
then
    $tool logs -f ${@: 2}
elif [ "$1" = "restart" ]
then
    $tool logs -f ${@: 2}
fi
