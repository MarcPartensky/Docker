#!/bin/sh

if $SWARM
then
    sep="-c"
else
    sep="-f"
fi

services=$@

config_files() {
    for service in $services
    do
        echo -n "$sep services/$service.yml "
    done
}

if $SWARM
then
    cmd="docker stack deploy $(config_files) $STACK"
else
    cmd="docker compose $(config_files) up -d"
fi

echo $cmd
# eval $cmd
