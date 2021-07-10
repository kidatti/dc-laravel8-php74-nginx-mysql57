FROM php:7.4-fpm
RUN apt-get update \
  && apt-get install -y zlib1g-dev libzip-dev mariadb-client \
  && docker-php-ext-install zip pdo_mysql \
  && curl -sL https://deb.nodesource.com/setup_12.x | bash - \
  && apt-get install -y nodejs

# Composer install
COPY --from=composer /usr/bin/composer /usr/bin/composer

ENV COMPOSER_ALLOW_SUPERUSER 1
ENV COMPOSER_HOME /composer
ENV PATH $PATH:/composer/vendor/bin
WORKDIR /var/www
