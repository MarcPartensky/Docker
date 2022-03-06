#!/bin/sh

if [ $1 = merge ]
then
    cat ./env/$2.txt | xargs -I @ echo ./services/@.yml | xargs ./bin/docker-merge.py > ./stacks/docker-compose.yml
    # export COMPOSE_FILE="$PWD/../docker-compose.yml"
    exit
fi


if [ -z $STACK ]
then
    sep="-f"
else
    sep="-c"
fi

services=$@

config_files() {
    for service in $services
    do
        echo -n "$sep services/$service.yml "
    done
}

if [ -z $STACK ]
then
    cmd="docker compose $(config_files) up -d"
else
    cmd="docker stack deploy $(config_files) $STACK"
fi

echo $cmd
eval $cmd
