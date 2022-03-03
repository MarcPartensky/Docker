#!/bin/sh

ENVIRONMENT=$1

config_files() {
    for file in $ENVIRONMENT/*.yml
    do
        echo -n "-c $file "
    done
}

eval "docker stack deploy $(config_files) vps"
