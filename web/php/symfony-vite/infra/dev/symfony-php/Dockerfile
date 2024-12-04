FROM php:8.3-fpm AS build

## Installation des utilitaires
RUN apt-get update && apt-get install -y curl
# RUN apt-get vim nano git zip wkhtmltopdf # Ajouté les paquets nécéssaires

## Config Timezone
RUN rm /etc/localtime && ln -s /usr/share/zoneinfo/Europe/Paris /etc/localtime

## PHP Extensions & Composer
COPY --from=mlocati/php-extension-installer /usr/bin/install-php-extensions /usr/local/bin/
RUN install-php-extensions gd exif pdo_mysql intl zip bcmath && install-php-extensions @composer
RUN mkdir /var/www/.composer && chown -R www-data:www-data /var/www/.composer

USER www-data

WORKDIR /var/www/api