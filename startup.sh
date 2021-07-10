#!/bin/bash
rm -f .env
cp .env.example .env
sudo rm -rf vendor
sudo rm -rf node_modules
chmod 777 storage/*
chmod 777 storage/framework/*
docker-compose up -d
docker-compose exec test-app-php composer install
docker-compose exec test-app-php npm install
docker-compose exec test-app-php php artisan key:generate
