FROM php:8.1-fpm

RUN apt-get update && apt-get install -y \
    git \
    libcurl4-openssl-dev \
    pkg-config \
    libssl-dev \
    libicu-dev \
    unzip \
    zip \
    zlib1g-dev \
    libzip-dev \
    && rm -rf /var/lib/apt/lists/*

RUN pecl install mongodb \
    && docker-php-ext-enable mongodb

RUN docker-php-ext-install zip pdo pdo_mysql intl

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

WORKDIR /var/www/html
