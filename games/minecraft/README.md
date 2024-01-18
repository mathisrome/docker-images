# Image serveur minecraft

Avant de lancer la commande `docker compose up -d`.

Merci de télécharger et d'uploader le fichier `server.jar` dans le dossier courant.

Une fois le container lancé vous pouvez accéder à celui-ci grâce à la commande : `docker compose exec minecraft bash`.

Si vous souhaitez accéder à la console du serveur, exécutez la commande `screen -list`.

Récupérer l'identifiant du premier élément retourné et exécutez la commande : `screen -r [identifiant]`.