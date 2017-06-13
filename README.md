# PHP-FPM Docker Image

Docker container to install and run [PHP-FPM](https://php-fpm.org/).

[![Build Status](https://travis-ci.org/pomirleanu/php-fpm.svg?branch=master)](https://travis-ci.org/pomirleanu/php-fpm)

[![Automated Build](https://img.shields.io/docker/automated/jrottenberg/ffmpeg.svg)](https://hub.docker.com/r/pomirleanu/php-fpm/builds/)

## What is PHP-FPM ?
PHP-FPM (FastCGI Process Manager) is an alternative FastCGI implementation for PHP.

## Getting image
```shell
docker pull pomirleanu/php-fpm
```

## Basic usage

```shell
docker run -v /path/to/your/app:/var/www/html -d pomirleanu/php-fpm
```

## Running your PHP script

### Running image
Run the PHP-FPM image, mounting a directory from your host.
```shell
docker run -it --name php-fpm -v /path/to/your/app:/var/www/html pomirleanu/php-fpm php index.php
```

or using [Docker Compose](https://docs.docker.com/compose/):

```shell
version: '2'
services:
  php-fpm:
    container_name: php-fpm
    image: pomirleanu/php-fpm
    entrypoint: php index.php
    volumes:
      - /path/to/your/app:/var/www/html
```

### Logging
```shell
docker logs php-fpm
```
or using [Docker Compose](https://docs.docker.com/compose/):
```shell
docker-compose logs phpfpm
```

## Installed extensions
 - bz2
 - gd
 - iconv
 - mbstring
 - mcrypt
 - mysqli
 - pdo_mysql
 - pdo_pgsql
 - pgsql
 - redis
 - xdebug
 - zip
 - json
 - imagick
