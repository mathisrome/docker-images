#!/bin/bash

docker compose build
docker compose up -d

# Installation de symfony
docker compose exec symfony-php composer create-project symfony/skeleton:"6.4.*" .
docker compose exec symfony-php composer require symfony/orm-pack -n
docker compose exec symfony-php composer require --dev symfony/maker-bundle -n
docker compose exec symfony-php composer require --dev symfony/profiler-pack -n
docker compose exec symfony-php composer require symfony/security-bundle -n
docker compose exec symfony-php composer require --dev orm-fixtures -n


# Installation de Vite
docker compose exec vite npm create vite ./

docker compose down

FILE="app/package.json"
SEARCH_PATTERN='"dev": "vite"'
REPLACE_PATTERN='"dev": "vite --host"'

if [[ "$OSTYPE" == "darwin"* ]]; then
  # macOS
  sed -i '' "s/$SEARCH_PATTERN/$REPLACE_PATTERN/" "$FILE"
else
  # Linux and other Unix-like OS
  sed -i "s/$SEARCH_PATTERN/$REPLACE_PATTERN/" "$FILE"
fi

FILE="docker-compose.yml"

if [[ "$OSTYPE" == "darwin"* ]]; then
  sed -i '' -e '/vite:/,/command:/s|command: tail -f /dev/null|command: sh -c "npm install \&\& npm run dev"|' "$FILE"
else
  sed -i -e '/vite:/,/command:/s|command: tail -f /dev/null|command: sh -c "npm install \&\& npm run dev"|' "$FILE"
fi

docker compose up -d