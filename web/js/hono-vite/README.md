# Installation du projet

Lancer la commande suivante :

```shell
bash init.sh
```

Une fois cette commande terminée, modifier le `package.json` du dossier `vite` pour modifier le script `dev` par :

```text
"dev": "vite --host",
```

Maintenant vous pouvez relancer la commande :

```shell
docker-compose up -d
```
