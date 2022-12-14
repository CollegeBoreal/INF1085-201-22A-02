
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
```
sudo mysql_secure_installation
```
#### Nous serons invité à répondre aux questions suivantes. Assurez-vous de définir les options suivantes comme indiqué ci-dessous.
```
Enter current password for root (enter for none): Press Enter
Set root password? [Y/n]: Y
New password: Enter Password
Re-enter new password: Confirm Password
Remove anonymous users? [Y/n]: Y
Disallow root login remotely? [Y/n]: Y
Remove test database and access to it? [Y/n]:  Y
Reload privilege tables now? [Y/n]:  Y
```
#### Une fois terminé, redémarrez MariaDB.
```
sudo systemctl restart mariadb.service
```
# Installer PHP et ses dépendances
#### Utilisez les commandes suivantes pour installer PHP et les dépendances requises pour MediaWiki.
```sudo apt install php php-common php-mbstring php-xmlrpc php-soap php-gd php-xml php-intl php-mysql php-cli php-ldap php-zip php-curl```
#### Ouvrez le fichier d'initialisation PHP.
```sudo vim /etc/php/7.2/apache2/php.ini``
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
```
CREATE DATABASE "mediawiki";
```
#### Créer un nom d'utilisateur de bd avec un mot de passe
``CREATE USER 'le nom d'utilisateur'@'localhost' IDENTIFIED BY 'votre mot de passe';``
#### Accorder à votre utilisateur un accès complet à la base de données avec la commande suivante
``GRANT ALL ON mediawiki.* TO 'le nom d'utilisateur'@'localhost' IDENTIFIED BY 'mot de passe' WITH GRANT OPTION;``
#### Maintenant, enregistrez vos modifications et quittez avec cette commande
``FLUSH PRIVILEGES;
EXIT;``
#### Changez de répertoire en /tmp et téléchargez la dernière version.
``cd /tmp && wget https://releases.wikimedia.org/mediawiki/1.34/mediawiki-core-1.34.0.tar.gz``
#### Créez un répertoire et extrayez les fichiers dans le nouveau répertoire ces suivantes l'une après l'autre.
``sudo mkdir -p /var/www/html/mediawiki
sudo tar -zxvf mediawiki*.tar.gz
sudo mv mediawiki-1.34.0/* /var/www/html/mediawiki``
#### Modifiez la propriété et les autorisations des répertoires.
``sudo chown -R www-data:www-data /var/www/html/mediawiki/ && sudo chmod -R 755 /var/www/html/mediawiki/``
# Configurer les fichiers de configuration Apache2 et MediaWiki
#### Maintenant que MediaWiki a été installé et placé dans son nouveau répertoire, nous devons créer un fichier de configuration dans Apache2.
``sudo vim /etc/apache2/sites-available/mediawiki.conf``
#### Vous pouvez maintenant configurer votre fichier mediawiki.conf comme indiqué ci-dessous.
``<VirtualHost *:80>
  ServerAdmin email@email.com
  DocumentRoot /var/www/html/mediawiki
  ServerName wikiserver
  <Directory /var/www/html/mediawiki/>
    Options +FollowSymlinks
    AllowOverride All
    Require all granted
  </Directory>
  ErrorLog ${APACHE_LOG_DIR}/error.log
  CustomLog ${APACHE_LOG_DIR}/access.log combined
  <Directory /var/www/html/mediawiki/images/>
    AllowOverride None
    AddType text/plain .html .htm .shtml .phtml
    php_admin_flag engine off
  </Directory>
</virtualhost>``
#### Maintenant sauvegarder le fichier puis exit.
``:wq!``
# Activer et configurer MediaWiki
#### Activez votre nouveau fichier de configuration et activez la réécriture.
``sudo a2dissite 000-default.conf
sudo a2ensite mediawiki.conf
sudo a2enmod rewrite``
#### Redémarrez Apache2 pour recharger tous les paramètres et configurations.
``sudo systemctl restart apache2.service``
#
# C'est tout l'installation et la configuration d'apache2
#### Après tape ton adresse ip ou le hostname dans le navigateur pour voir ça.
![image](https://user-images.githubusercontent.com/101542761/207720119-69e1491f-8bec-450d-a9a7-c44c9be2c1f1.png)


