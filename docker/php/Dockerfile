FROM php:7.4-fpm
RUN apt-get update \
  && apt-get install -y zlib1g-dev libzip-dev mariadb-client \
  && docker-php-ext-install zip pdo_mysql

# .env
RUN ls -al / > 000.txt
#RUN cp .env.example .env

# Composer install
COPY --from=composer /usr/bin/composer /usr/bin/composer

ENV COMPOSER_ALLOW_SUPERUSER 1
ENV COMPOSER_HOME /composer
ENV PATH $PATH:/composer/vendor/bin
WORKDIR /var/www
