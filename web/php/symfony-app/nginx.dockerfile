FROM nginx:1.27.3-bookworm

RUN useradd -ms /bin/sh -u 1000 app

## Setup configuration file
COPY ./infra/dev/nginx/virtualhost.conf /etc/nginx/conf.d/default.conf
COPY ./infra/dev/nginx/default.conf /etc/nginx/default.conf

WORKDIR /var/www/app

RUN chown -R app:app /var/cache/nginx
RUN chown -R app:app /var/log/nginx
RUN mkdir -p "/var/run" && touch /var/run/nginx.pid && chown -R app:app /var/run/nginx.pid

USER app