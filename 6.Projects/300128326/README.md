# Comment Installer mediawiki sur un serveur ubuntu?

Pour installer mediawiki suivez les étapes suivantes:
## 1 Installer Apache2
## 2 Installer mariaDB
## 3 Installer PHP et ces dependances
## 4 Creer une base des donnees Mediawiki
## 5 Telecharger et installer mediawiki
## 6 Activer et configurer mediawiki

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

####sudo systemctl redémarrer mariadb.service

## 3 Installer PHP et ses dépendances
Utilisez les commandes suivantes pour installer PHP et les dépendances requises pour MediaWiki.

####sudo apt install php php-common php-mbstring php-xmlrpc php-soap php-gd php-xml php-intl php-mysql php-cli php-ldap php-zip php-curl

## 4 Creer une base des donnees Mediawiki
Une fois toutes les étapes précédentes terminées, vous pouvez maintenant créer votre base de données MediaWiki. Suivez les étapes ci-dessous pour créer votre base de données MediaWiki.

#### sudo mysql -u root -p
CRÉER UNE BASE DE DONNÉES mediawiki ;

#### CREATE DATABASE mediawiki;
Créez un utilisateur de base de données appelé madmin avec un nouveau mot de passe.

#### CREATE USER 'mwadmin'@'localhost' IDENTIFIED BY 'enterYourPassword';
Accordez à mwadmin un accès complet à la base de données.
#### GRANT ALL ON mediawiki.* TO 'madmin'@'localhost' IDENTIFIED BY 'YourPassword' WITH GRANT OPTION;
Maintenant, enregistrez vos modifications et quittez.
#### FLUSH PRIVILEGES;
EXIT;

## 5 Telecharger et installer mediawiki
Visitez https://releases.wikimedia.org/mediawiki/ pour trouver la dernière itération de MediaWiki à télécharger. Suivez ensuite les commandes ci-dessous pour télécharger et installer.
Changez de répertoire pour /tmp et téléchargez la dernière version.
#### cd /tmp && wget https://releases.wikimedia.org/mediawiki/1.38/mediawiki-core-1.38.4.tar.gz
Créez un répertoire et extrayez les fichiers dans le nouveau répertoire.

#### sudo mkdir -p /var/www/html/mediawiki
#### sudo tar -zxvf mediawiki*.tar.gz
#### sudo mv mediawiki-1.38.4/* /var/www/html/mediawiki
Modifiez la propriété et les autorisations des répertoires.

#### sudo chown -R www-data:www-data /var/www/html/mediawiki/ && sudo chmod -R 777 /var/www/html/mediawiki/
## 6 Activer et configurer mediawiki

Redémarrez Apache2 pour recharger tous les paramètres et configurations.

#### sudo systemctl restart apache2.service
Visitez votre nom d'hôte ou votre adresse IP pour démarrer la configuration de MediaWiki, et appuyez sur "configurer le wiki" pour commencer.

![image](https://user-images.githubusercontent.com/105472970/206017544-8a337553-e5e6-4c1a-a5bc-6905394a6d4d.png)




À partir de là il faut remplir les informations necessaire pour  finir la configuration.


