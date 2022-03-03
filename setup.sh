#!/bin/sh

services=$@

config_files() {
    for service in $services
    do
        echo -n "-c services/$service.yml "
    done
}

cmd="docker stack deploy $(config_files) $STACK"
echo $cmd
# eval $cmd
