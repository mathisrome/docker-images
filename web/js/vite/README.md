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

Une fois ceci fait, arrêter le docker compose, modifier la ligne 7 avec les informations mises en commentaires et rédemarrer le docker compose
