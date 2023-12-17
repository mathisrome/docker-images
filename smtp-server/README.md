# Image docker pour un serveur SMTP avec Postfix

Vos clés et vos certificats SSL doivent se trouver dans le dossier `letsencrypt`

Attention ces informations doivent être ranger dans le dossier avec votre nom de domaine.

Exemples :
 - letsencrypt/mail.mathisrome.fr
 - letsencrypt/foo.fr

N'oubliez pas de changer vos variables d'environnements.

Comme vous pouvez le voir dans le fichier `docker-compose.yml`.
Le nom du service pour le serveur smtp doit être identique à votre nom de domaine.
Sinon cela posera problème.