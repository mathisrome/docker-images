# Image docker pour un serveur SMTP avec Postfix

Vos clés et vos certificats SSL doivent se trouver dans le dossier `letsencrypt`

N'oubliez pas de changer vos variables d'environnements.

Comme vous pouvez le voir dans le fichier `docker-compose.yml`.
Le nom du service pour le serveur smtp doit être identique à votre nom de domaine.
Sinon cela posera problème lors de la vérification du MAILER_DSN (Pour Symfony à voir pour d'autre framework).