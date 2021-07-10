#/bin/bash
rm -rf vendor
rm -rf node_modules
docker compose build
docker-compose up -d
docker-compose exec test-app-php composer install
docker-compose exec test-app-php npm install
