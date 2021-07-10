#!/bin/bash
cp .env.example .env
rm -rf vendor
rm -rf node_modules
chmod 777 storage/*
chmod 777 storage/framework/*
docker-compose up -d
docker-compose exec test-app-php php artisan key:generate
docker-compose exec test-app-php composer install
docker-compose exec test-app-php npm install
