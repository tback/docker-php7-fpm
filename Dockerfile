FROM php:7-fpm

RUN apt-get update
RUN apt-get install -y --no-install-recommends \
        zlib1g-dev
RUN docker-php-ext-install zip

ADD install_composer.sh install_composer.sh
RUN apt-get install -y --no-install-recommends \
        wget
RUN ./install_composer.sh
