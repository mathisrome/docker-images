#!/bin/bash

docker compose -f docker-compose.init.yml up -d
docker compose -f docker-compose.init.yml exec vite npm create vite ./
docker compose -f docker-compose.init.yml down

mv docker-compose.dev.yml docker-compose.yml

rm docker-compose.init.yml