#!/bin/sh

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
