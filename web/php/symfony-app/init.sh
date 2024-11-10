#!/bin/bash

docker compose build
docker compose up -d

# Installation de symfony
docker compose exec symfony-php composer create-project symfony/skeleton:"6.4.*" .
docker compose exec symfony-php composer require webapp