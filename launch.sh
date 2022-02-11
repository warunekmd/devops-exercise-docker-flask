#!/bin/sh

docker-compose up -d nginx
 
docker exec -it nginx curl -s http://127.0.0.1/data | jq '.' > files/results.txt

cat files/results.txt
