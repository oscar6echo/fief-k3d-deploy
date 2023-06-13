#! /bin/bash

docker run \
    --rm \
    --name pgadmin \
    -p 8082:80 \
    -e PGADMIN_DEFAULT_EMAIL=admin@local.com \
    -e PGADMIN_DEFAULT_PASSWORD=admin \
    -d \
    --add-host=host.docker.internal:host-gateway \
    dpage/pgadmin4:2023-06-05-1
