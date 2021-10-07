#!/bin/bash

set -e

source ./.env

# should not -it
docker-compose exec shell \
    mysql \
    --user=${MYSQL_USER} \
    --password=${MYSQL_PASSWORD} \
    --host=router \
    --port=6446 \
    "$@"

