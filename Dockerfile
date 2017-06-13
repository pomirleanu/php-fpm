FROM php:7.1-fpm

MAINTAINER Pomirleanu Florentin <pomirleanu.florentin@gmail.com>

RUN apt-get update && apt-get upgrade -y \
    libfreetype6-dev \
    libjpeg62-turbo-dev \
    libpq-dev \
    libmagickwand-dev \
    libmcrypt-dev \
    libmcrypt-dev \
    libpng12-dev \
    libmemcached-dev \
    libssl-dev \
    libssl-doc \
    libsasl2-dev \
    zlib1g-dev \
    libmagickwand-dev --no-install-recommends \
    && docker-php-ext-install -j$(nproc) bz2 iconv mcrypt mbstring pdo_mysql mysqli pgsql pdo_pgsql json zip \
    && docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ \
    && docker-php-ext-install -j$(nproc) gd

#install Imagemagick & PHP Imagick ext
RUN pecl install imagick && docker-php-ext-enable imagick

# Install xdebug
RUN pecl install xdebug && docker-php-ext-enable xdebug

# Install Redis
RUN pecl install redis && docker-php-ext-enable redis
