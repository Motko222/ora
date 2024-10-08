#!/bin/bash

#docker compose safe
if command -v docker-compose &>/dev/null; then
    docker_compose="docker-compose"
elif docker --help | grep -q "compose"; then
    docker_compose="docker compose"
fi

cd ~/tora
$docker_compose logs -f -t 1000
