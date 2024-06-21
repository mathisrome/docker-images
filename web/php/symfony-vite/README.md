# Installer Vite

Aller dans le service `vite`, puis lancer la commande suivante :

```bash
npm create vite ./
```

Puis suivez les instructions...

Une fois l'installation terminé, modifier le fichier `package.json` en changeant le script `dev` en mettant comme valeur :

```text
vite --host 0.0.0.0
```

Une fois ceci fait, arrêter le docker compose, modifier la ligne 51 avec les informations mises en commentaires et rédemarrer le docker compose

# Installer Symfony

Aller dans le service `symfony-php`, puis lancer les commandes suivantes :

```bash
composer create-project symfony/skeleton:"6.4.*" . &&
composer require symfony/orm-pack -n &&
composer require --dev symfony/maker-bundle -n &&
composer require --dev symfony/profiler-pack -n &&
composer require symfony/security-bundle -n && 
composer require --dev orm-fixtures -n
```
