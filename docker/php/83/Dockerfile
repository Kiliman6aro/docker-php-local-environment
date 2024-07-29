FROM php:8.3-fpm

# Установка необходимых пакетов
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

# Установка и активация расширения MongoDB
RUN pecl install mongodb \
    && docker-php-ext-enable mongodb

# Установка расширений PHP
RUN docker-php-ext-install zip pdo pdo_mysql intl

# Установка Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

WORKDIR /var/www/html
