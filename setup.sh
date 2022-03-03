#!/bin/sh

services=$@

config_files() {
    for service in services/$services
    do
        echo -n "-c $service.yml "
    done
}

cmd="docker stack deploy $(config_files) $STACK"
echo $cmd
# eval $cmd
