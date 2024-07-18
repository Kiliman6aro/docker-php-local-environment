FROM php:7.1-fpm

# Install Laravel dependencies
RUN apt-get update && apt-get install -y \
    libfreetype6-dev \
    libjpeg62-turbo-dev \
    libmcrypt-dev \
    libpng-dev \
    && rm -rf /var/lib/apt/lists/*

# Install PHP extensions
RUN docker-php-ext-install iconv mcrypt mbstring \
    && docker-php-ext-install zip \
    && docker-php-ext-install exif \
    && docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ \
    && docker-php-ext-install gd \
    && docker-php-ext-install pdo pdo_mysql

# Install and enable Redis (specifying version compatible with PHP 7.1)
RUN pecl install redis-4.3.0 \
    && docker-php-ext-enable redis

# Install Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/bin --filename=composer --1

WORKDIR /var/www/html
