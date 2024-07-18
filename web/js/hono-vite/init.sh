#!/bin/bash

docker compose -f docker-compose.init.yml build
docker compose -f docker-compose.init.yml up -d
docker compose -f docker-compose.init.yml exec hono npm create hono@latest ./ -y
docker compose -f docker-compose.init.yml exec vite npm create vite ./
docker compose -f docker-compose.init.yml down

mv docker-compose.dev.yml docker-compose.yml

rm docker-compose.init.yml

FILE="front/package.json"
SEARCH_PATTERN='"dev": "vite"'
REPLACE_PATTERN='"dev": "vite --host"'

if [[ "$OSTYPE" == "darwin"* ]]; then
  # macOS
  sed -i '' "s/$SEARCH_PATTERN/$REPLACE_PATTERN/" "$FILE"
else
  # Linux and other Unix-like OS
  sed -i "s/$SEARCH_PATTERN/$REPLACE_PATTERN/" "$FILE"
fi

docker compose up -d