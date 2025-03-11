# Initialisation du projet

Si vous avez besoin de créer une application avec une base de données vous devez avoir un container `mariadb` de lancé :

```bash
docker network create mariadb && \
docker run --detach --name mariadb --hostname=mariadb --network mariadb -v mariadb_data:/var/lib/mysql --restart unless-stopped --env MARIADB_ROOT_PASSWORD=toto44 -it -p 3306:3306  mariadb:latest
```

Si vous avez besoin de créer une application qui envoie des mails vous pouvez visualiser ceux-ci via la configuration suivante :

```bash
docker network create mailpit && \
docker run -d --name=mailpit --restart unless-stopped -p 8025:8025 -p 1025:1025 --hostname=mailpit --network mailpit -it -e MP_SMTP_AUTH_ACCEPT_ANY=1 -e MP_SMTP_AUTH_ALLOW_INSECURE=1 axllent/mailpit
```