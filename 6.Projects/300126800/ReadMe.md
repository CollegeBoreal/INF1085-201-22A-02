# Installer Apache2
Installez Apache2 en exécutant la commande suivante.

````sudo apt -y install apache2````

Une fois Apache2 installé, nous désactiverons les listes de répertoires.

````sudo sed -i "s/Options Indexes FollowSymLinks/Options FollowSymLinks/" /etc/apache2/apache2.conf````

Nous allons maintenant arrêter le service (s'il était précédemment activé), le démarrer et l'activer pour qu'il démarre après un redémarrage du système.

````sudo systemctl restart apache2.service && sudo systemctl enable apache2.service````

# Installer MariaDB

````sudo apt install mariadb-server mariadb-client````

Nous allons maintenant arrêter le service (s'il était précédemment activé), le démarrer et l'activer pour qu'il démarre après un redémarrage du système.

````sudo systemctl restart mariadb.service && sudo systemctl enable mariadb.service````

Une fois MariaDB installée, nous sécuriserons notre installation.

````sudo mysql_secure_installation````

Vous serez invité à répondre aux questions suivantes. Assurez-vous de définir les options suivantes comme indiqué ci-dessous.

````Enter current password for root (enter for none): Press Enter````


````Set root password? [Y/n]: Y````


````New password: Enter Password````


````Re-enter new password: Confirm Password````


````Remove anonymous users? [Y/n]: Y````


````Disallow root login remotely? [Y/n]: Y````


````Remove test database and access to it? [Y/n]:  Y````


````Reload privilege tables now? [Y/n]:  Y````



Une fois terminé, redémarrez MariaDB.

````sudo systemctl restart mariadb.service````


# Installer PHP et ses dépendances
Utilisez les commandes suivantes pour installer PHP et les dépendances requises pour MediaWiki.

````sudo apt install php php-common php-mbstring php-xmlrpc php-soap php-gd php-xml php-intl php-mysql php-cli php-ldap php-zip php-curl````

Ouvrez le fichier d'initialisation PHP.

````sudo vim /etc/php/7.2/apache2/php.ini````

Définissez les paramètres suivants dans le fichier PHP.

````file_uploads = On````

````allow_url_fopen = On````

````memory_limit = 256M````

````upload_max_filesize = 100M````

````max_execution_time = 360````

````date.timezone = America/East````

Créer une base de données MediaWiki
Une fois toutes les étapes précédentes terminées, vous pouvez maintenant créer votre base de données MediaWiki. Suivez les étapes ci-dessous pour créer votre base de données MediaWiki.

# Créer une base de données appelée mediawiki

````CREATE DATABASE mediawiki;````

Créez un utilisateur de base de données appelé mwadmin avec un nouveau mot de passe.

````CREATE USER 'mwadmin'@'localhost' IDENTIFIED BY 'enterYourPassword';````

Accordez à mwadmin un accès complet à la base de données.

````GRANT ALL ON mediawiki.* TO 'mwadmin'@'localhost' IDENTIFIED BY 'YourPassword' WITH GRANT OPTION;````

Maintenant, enregistrez vos modifications et quittez.

````FLUSH PRIVILEGES;````

````EXIT;````

# Téléchargez et installez MediaWiki
Visitez https://releases.wikimedia.org/mediawiki/ pour trouver la dernière itération de MediaWiki à télécharger. Suivez ensuite les commandes ci-dessous pour télécharger et installer.

Changez de répertoire pour /tmp et téléchargez la dernière version.

````cd /tmp && wget https://releases.wikimedia.org/mediawiki/1.39/mediawiki-core-1.39.0.tar.gz````

Créez un répertoire et extrayez les fichiers dans le nouveau répertoire.

````sudo mkdir -p /var/www/html/mediawiki````

````sudo tar -zxvf mediawiki*.tar.gz````

````sudo mv mediawiki-1.34.0/* /var/www/html/mediawiki````

Modifiez la propriété et les autorisations des répertoires.

````sudo chown -R www-data:www-data /var/www/html/mediawiki/ && sudo chmod -R 755 /var/www/html/mediawiki/````

# Configurer les fichiers de configuration Apache2 et MediaWiki
Maintenant que MediaWiki a été installé et placé dans son nouveau répertoire, nous devons créer un fichier de configuration dans Apache2.

````sudo vim /etc/apache2/sites-available/mediawiki.conf````

Vous pouvez maintenant configurer votre fichier mediawiki.conf comme indiqué ci-dessous.

````<VirtualHost *:80>````

````  ServerAdmin email@email.com````

````  DocumentRoot /var/www/html/mediawiki````

````  ServerName wikiserver````
  
````  <Directory /var/www/html/mediawiki/>````

````    Options +FollowSymlinks````

````    AllowOverride All````

````    Require all granted````

````  </Directory>````


````  ErrorLog ${APACHE_LOG_DIR}/error.log````

````  CustomLog ${APACHE_LOG_DIR}/access.log combined````

```` <Directory /var/www/html/mediawiki/images/>````

````   AllowOverride None````

````  AddType text/plain .html .htm .shtml .phtml````

```` php_admin_flag engine off````

````</Directory>````

````</virtualhost>````

Maintenant, enregistrez votre fichier et quittez.

````:wq!````

# Activer et configurer MediaWiki
Activez votre nouveau fichier de configuration et activez la réécriture.

````sudo a2dissite 000-default.conf````

````sudo a2ensite mediawiki.conf````

````sudo a2enmod rewrite````

Redémarrez Apache2 pour recharger tous les paramètres et configurations.

````sudo systemctl restart apache2.service````

Visitez votre nom d'hôte ou votre adresse IP pour démarrer la configuration de MediaWiki, et appuyez sur "configurer le wiki" pour commencer.

Entrez le nom de votre base de données (mediawiki) et le nom d'utilisateur/mot de passe (mwadmin, mot de passe).
Sélectionnez "utiliser le même compte que pour l'installation" (mwadmin).
Définissez le nom de votre serveur et créez un compte administrateur.
Finalisez votre configuration et téléchargez le fichier LocalSettings.php.

Transférez le fichier LocalSettings.php de votre hôte vers le répertoire racine wikiservers mediawiki en faisant une copie.

````scp /Downloads/LocalSettings.php username@IPAddressORHostname:/var/www/html/mediawiki````

Ajustez la propriété et les autorisations du fichier LocalSettings.php.

````chown www-data:www-data LocalSettings.php && chmod 755 LocalSettings.php````

Votre compte :

User : brice.robert

Mot de passe : 30012680022

