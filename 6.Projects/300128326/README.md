# Comment Installer mediawiki sur un serveur ubuntu?

Pour installer mediawiki suivez les étapes suivantes:
## 1 Installer Apache2
## 2 Installer mariaDB
## 3 Installer PHP et ces dependances
## 4 Creer une base des donnees Mediawiki
## 5 Telecharger et installer mediawiki
## 6 Configurer les fichiers de configuration Apache2 et mediawiki
## 7 Activer et configurer mediawiki

Tout d'abord mettons à jour la base des donnes des paquets en executant la commande suivante:
####Sudo apt update
## 1 Installer Apache2 en executant la commnade suivante:
#### sudo apt -y installer apache2
Nous allons maintenant arrêter le service (s'il était précédemment activé), le démarrer et l'activer pour qu'il démarre après un redémarrage du système
#### sudo systemctl redémarrer apache2.service && sudo systemctl activer apache2.service

## 2 Installer mariaDB en executeant la commande suivante:
####sudo apt installer mariadb-server mariadb-client
Nous allons maintenant arrêter le service (s'il était précédemment activé), le démarrer et l'activer pour qu'il démarre après un redémarrage du système
#### sudo systemctl redémarrer mariadb.service && sudo systemctl activer mariadb.service
Une fois MariaDB installée, nous sécuriserons notre installation
#### sudo mysql_secure_installation
Vous serez invité à répondre aux questions suivantes. Assurez-vous de définir les options suivantes comme indiqué ci-dessous.
Entrez le mot de passe actuel pour root (entrez pour aucun): Appuyez sur Entrée
Définir le mot de passe root ? [O/n] : O
Nouveau mot de passe : Entrez le mot de passe
Entrez à nouveau le nouveau mot de passe : Confirmer le mot de passe
Supprimer les utilisateurs anonymes ? [O/n] : O
Interdire la connexion root à distance ? [O/n] : O
Supprimer la base de données de test et y accéder ? [O/n] : O
Recharger les tables de privilèges maintenant ? [O/n] : O
Une fois terminé, redémarrez MariaDB.

sudo systemctl redémarrer mariadb.service
