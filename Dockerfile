FROM php:7-fpm

RUN apt-get update
RUN apt-get install -y --no-install-recommends \
        zlib1g-dev
RUN docker-php-ext-install zip

ADD install_composer.sh /bin/install_composer.sh
RUN apt-get install -y --no-install-recommends \
        wget
RUN cd /bin; ./install_composer.sh && rm /bin/install_composer.sh
