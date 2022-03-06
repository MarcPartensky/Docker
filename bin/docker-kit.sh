#!/bin/sh

PROJECT_PATH="$PROGRAMS_PATH/docker"
export COMPOSE_PATH_SEPARATOR=":"
export COMPOSE_FILE=$(find $PROJECT_PATH/services/*.yml | xargs -I @ echo -n @:)
export COMPOSE_FILE=${COMPOSE_FILE::-1}

if [ "$1" = "-f" ]
then
    docker-compose --file $@
else
    if [ -f $PWD/docker-compose.yml ]
    then
        docker-compose --file $PWD/docker-compose.yml $@
    else
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
    fi
fi
