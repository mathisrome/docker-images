# Installer VueJs

Aller dans le service `vuejs`, puis lancer la commande suivante :

```bash
npm create vue@latest ./
```

Puis suivez les instructions...

Une fois l'installation terminé, modifier le fichier `package.json` en changeant le script `dev` en mettant comme valeur :

```text
vite --host 0.0.0.0
```

# Installer Symfony

Aller dans le service `symfony-php`, puis lancer les commandes suivantes :

```bash
composer create-project symfony/skeleton:"6.4.*" . && composer require webapp
```
