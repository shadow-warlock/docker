FROM php:7.4-fpm

RUN apt-get update && apt-get install -y \
        libzip-dev \
        zip
RUN docker-php-ext-install mysqli pdo pdo_mysql && docker-php-ext-enable pdo_mysql

COPY --from=composer:latest /usr/bin/composer /usr/bin/composer
WORKDIR /var/www/project/backend
ARG GID=1000
ARG UID=1000
RUN groupadd -g $GID php
RUN useradd --uid $UID --gid $GID --shell /bin/bash php
USER php
