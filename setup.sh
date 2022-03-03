#!/bin/sh

services=$@

config_files() {
    for service in $services
    do
        echo -n "-c $service.yml "
    done
}

cmd="docker stack deploy $(config_files) $ENV"
echo $cmd
# eval $cmd
