#!/bin/sh

PROJECT_PATH="$PROGRAMS_PATH/docker"
export COMPOSE_PATH_SEPARATOR=":"
export COMPOSE_FILE=$(find $PROJECT_PATH/services/*.yml | xargs -I @ echo -n @:)
export COMPOSE_FILE=${COMPOSE_FILE::-1}


if [ "$1" = "-f" ]
then
    docker-compose --file $@
    exit
fi

if [ -f $PWD/docker-compose.yml ]
then
    if [ "$#" -ne 1 ]
    then
        docker-compose ps
        exit
    fi
    docker-compose --file $PWD/docker-compose.yml $@
    exit
fi

if [ "$#" -ne 1 ]
then
    docker-compose ps
    exit
fi

docker-compose $@
if [ "$1" = "up" ]
then
    if [ "$2" = "-d" ]
    then
        docker-compose logs -f ${@: 3}
    else
        docker-compose logs -f ${@: 2}
    fi
elif [ "$1" = "start" ]
then
    docker-compose logs -f ${@: 2}
elif [ "$1" = "restart" ]
then
    docker-compose logs -f ${@: 2}
fi
