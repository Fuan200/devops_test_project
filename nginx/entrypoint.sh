#!/bin/sh

if [ "$DOCKER_PROFILE" = "default" ]; then
    #cp /etc/nginx/conf.d/default.conf.template /etc/nginx/conf.d/default.conf
    rm -f /etc/nginx/conf.d/default.conf.template
elif [ "$DOCKER_PROFILE" = "random" ]; then
    rm -f /etc/nginx/conf.d/default.conf
    mv /etc/nginx/conf.d/default.conf.template /etc/nginx/conf.d/default.conf
else
    echo "$DOCKER_PROFILE"
fi

nginx -g "daemon off;"
