#!/bin/bash

if [[ "$1" == "--profile" && "$2" == "random" ]]; then
    #export DOCKER_PROFILE="random"
    sudo docker-compose -f docker-compose.random.yml up
else
    sudo docker-compose up
    #export DOCKER_PROFILE="default"
fi

#sudo docker-compose "$@"