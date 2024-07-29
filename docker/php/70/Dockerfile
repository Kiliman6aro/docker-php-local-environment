FROM php:7.0-fpm

# Использование архивного репозитория Debian Stretch
RUN echo "deb http://archive.debian.org/debian stretch main" > /etc/apt/sources.list

# Установка зависимостей и PHP расширений
RUN apt-get update && apt-get install -y \
    git \
    libcurl4-openssl-dev \
    pkg-config \
    libssl-dev \
    libicu-dev \
    unzip \
    zip \
    zlib1g-dev \
    && pecl install mongodb-1.5.5 \
    && docker-php-ext-enable mongodb \
    && docker-php-ext-install zip \
    && docker-php-ext-install intl \
    && docker-php-ext-install pdo pdo_mysql

# Установка и включение Redis (совместимой версии с PHP 7.0)
RUN pecl install redis-3.1.6 \
    && docker-php-ext-enable redis

# Установка Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/bin --filename=composer --1

# Установка рабочей директории
WORKDIR /var/www/html
