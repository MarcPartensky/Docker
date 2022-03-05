#!/bin/sh

PROJECT_PATH=".."

COMPOSE_PATH_SEPARATOR=" "
COMPOSE_FILE=$(/bin/ls $PROJECT_PATH/services)
echo $COMPOSE_FILE
docker-compose ps
exit

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
