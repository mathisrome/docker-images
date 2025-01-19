FROM php:8.3-fpm AS build

## Run as a non-privileged user
RUN useradd -ms /bin/sh -u 1000 app

## Installation des utilitaires
RUN apt-get update && apt-get install -y curl
# RUN apt-get vim nano git zip wkhtmltopdf # Ajouté les paquets nécéssaires

## Config Timezone
RUN rm /etc/localtime && ln -s /usr/share/zoneinfo/Europe/Paris /etc/localtime

## Config php.ini
COPY infra/dev/symfony-php/project.ini /usr/local/etc/php/conf.d/project.ini

## PHP Extensions & Composer
RUN curl -sSLf \
        -o /usr/local/bin/install-php-extensions \
        https://github.com/mlocati/docker-php-extension-installer/releases/latest/download/install-php-extensions && \
    chmod +x /usr/local/bin/install-php-extensions && \
    install-php-extensions gd exif pdo_mysql intl zip bcmath @composer && \
    mkdir /var/www/.composer && chown -R app:app /var/www/.composer

WORKDIR /var/www/app

# Copy source files into application directory
COPY --chown=app:app ./app /var/www/app

USER app