#!/bin/sh

docker-compose up -d nginx

docker exec -it nginx curl http://127.0.0.1/data
