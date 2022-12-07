
# Comment installer mediawiki sur un serveur Ubuntu.

## Pour le faire il faudrait paaser par etapes
#### Installer Apache2
#### Installer MariaBD
#### Installer PHP et ses dépendances
#### Creer une base de données 
#### Télécharger et installer médiawiki
#### Configurer les fichiers de configuration Apache2 et MediaWiki
#### Activer et configurer MediaWiki
#
#### Tout d'abord il est recommandé de faire la mise en jour de de ton serveur avec la commande 
``sudo apt update``
# Installation Apache2
``sudo apt -y install apache2
``
#### Une fois Apache2 installé, nous désactiverons les listes de répertoires.
``sudo sed -i "s/Options Indexes FollowSymLinks/Options FollowSymLinks/" /etc/apache2/apache2.conf``
#### Nous allons maintenant arrêter le service (s'il était précédemment activé), le démarrer et l'activer pour qu'il démarre après un redémarrage du système.
``sudo systemctl restart apache2.service && sudo systemctl enable apache2.service``
# Installer MariaBD
#### MediaWiki dépend d'une base de données et, en tant que tel, un service de base de données doit être installé et configuré. Nous allons installer et configurer MariaDB comme indiqué ci-dessous.
``sudo apt install mariadb-server mariadb-client``
#### Nous allons maintenant arrêter le service (s'il était précédemment activé), le démarrer et l'activer pour qu'il démarre après un redémarrage du système.
``sudo systemctl restart mariadb.service && sudo systemctl enable mariadb.service``
#### Une fois MariaDB installée, nous sécuriserons notre installation.
``sudo mysql_secure_installation``
#### Nous serons invité à répondre aux questions suivantes. Assurez-vous de définir les options suivantes comme indiqué ci-dessous.
``Enter current password for root (enter for none): Press Enter
Set root password? [Y/n]: Y
New password: Enter Password
Re-enter new password: Confirm Password
Remove anonymous users? [Y/n]: Y
Disallow root login remotely? [Y/n]: Y
Remove test database and access to it? [Y/n]:  Y
Reload privilege tables now? [Y/n]:  Y``
#### Une fois terminé, redémarrez MariaDB.
``sudo systemctl restart mariadb.service``
# Installer PHP et ses dépendances
#### Utilisez les commandes suivantes pour installer PHP et les dépendances requises pour MediaWiki.
``sudo apt install php php-common php-mbstring php-xmlrpc php-soap php-gd php-xml php-intl php-mysql php-cli php-ldap php-zip php-curl``
#### Ouvrez le fichier d'initialisation PHP.
``sudo vim /etc/php/7.2/apache2/php.ini``
#### VDéfinissez les paramètres suivants dans le fichier PHP.
``file_uploads = On
allow_url_fopen = On
memory_limit = 256M
upload_max_filesize = 100M
max_execution_time = 360
date.timezone = Canada\Toronto``
# Creer une base de données 
#### Une fois toutes les étapes précédentes terminées, vous pouvez maintenant créer votre base de données MediaWiki. Suivez les étapes ci-dessous pour créer votre base de données MediaWiki.
``sudo mysql -u root -p``
#### Créer votre base de donnée avec la commande 
``CREATE DATABASE "le nom de base de donnée";``
#### Créer un utilisateur de bd avec un mot de passe
``CREATE USER 'mon d'utilisateur'@'localhost' IDENTIFIED BY 'votre mot de passe';``
#### Accorder a votre utilisateur un accès complet a la bd.
``GRANT ALL ON mediawiki.* TO 'nom d'utilisateur'@'localhost' IDENTIFIED BY 'Mot de passe' WITH GRANT OPTION;``
#### Sauvegarde le, puis quitter 
``FLUSH PRIVILEGES;
EXIT;``

