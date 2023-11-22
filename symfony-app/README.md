# Créer une application symfony

Déplacer les fichier Dockerfile.dev ou Dockerfile.prod, executer les commandes suivantes.

```bash
cd app
composer create-project symfony/skeleton:"6.3.*" .
composer require webapp
```

Remettez les fichiers Dockerfile dans le dossier app.

Maitenant vous pouvez lancer le Docker Compose

```bash
docker compose up
```