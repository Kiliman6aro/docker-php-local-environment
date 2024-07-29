FROM php:7.4-fpm

RUN apt-get update && apt-get install -y \
    git \
    libcurl4-openssl-dev \
    pkg-config \
    libssl-dev \
    libicu-dev \
    unzip \
    zip \
    jq  \	
    zlib1g-dev \
    libzip-dev \
    libmagickwand-dev \
    libfreetype6-dev \
    libjpeg62-turbo-dev \
    libpng-dev \
    && rm -rf /var/lib/apt/lists/*

    RUN pecl install mongodb \
    && docker-php-ext-enable mongodb \
    && pecl install imagick \
    && docker-php-ext-enable imagick \
    && docker-php-ext-install zip pdo pdo_mysql bcmath intl \
    && docker-php-ext-configure gd --with-freetype --with-jpeg \
    && docker-php-ext-install gd \
    && docker-php-ext-install intl \
    && pecl install apcu \
    && docker-php-ext-enable apcu

# Устанавливаем Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Устанавливаем рабочую директорию
WORKDIR /var/www/html
