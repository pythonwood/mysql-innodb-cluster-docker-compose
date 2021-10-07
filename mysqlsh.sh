#!/bin/bash

set -e

source ./.env

# docker run --rm -it mysql/mysql-server:${MYSQL_VERSION} mysqlsh \
# should not -it
docker-compose exec shell \
    mysqlsh \
    --cluster \
    --user=${MYSQL_USER} \
    --password=${MYSQL_PASSWORD} \
    --host=router \
    --port=6446 \
    "$@"
