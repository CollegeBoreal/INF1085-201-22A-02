
                                                  Comment installer Nextcloud sur Ubuntu 22.04 LTS

Next cloud est une application Web qui nous permet d'héberger des fichiers dans le Cloud . ILs  nous permet aussi de  visualiser directement depuis un site Web ou des applications, de les partager.

Nextcloud est une application Web qui nécessite une certaine configuration sur le serveur pour pouvoir fonctionner. Il nécessite également PHP avec plusieurs de ses modules et un gestionnaire de base de données tel que MariaDB.

Installer LAMP sur Ubuntu 22.04
La première chose que vous devez faire est d'installer la pile LAMP sur Ubuntu 22.04 car dans ce guide, j'utiliserai Apache et MariaDB.

Pour installer Apache, PHP et ses modules requis, et MariaDB, vous devrez exécuter cette commande :

sudo apt install apache2 libapache2-mod-php php-cli php-fpm php-json php-intl php-imagick php-pdo php-mysql php-zip php-gd php-mbstring php-curl php-xml php-pear php-bcmath mariadb-server
Lorsque tout le processus est terminé, assurez-vous que dans le pare-feu, vous avez des ports ouverts 80et 443.

sudo ufw allow 80
sudo ufw allow 443
Vous devez maintenant configurer MariaDB, en définissant un mot de passe root. Pour y parvenir, courez.

sudo mysql_secure_installation
Dès que vous le démarrez, vous serez invité à vous connecter en appuyant sur Entrée. Ensuite, vous pourrez changer le mot de passe root et enfin, répondre aux questions de configuration suivantes.

Remove anonymous users [Y/n]
Disallow root login remotely [Y/n] 
Remove test database and access to it [Y/n]
Reload privilege tables now [Y/n] 
Une configuration optimale serait de répondre Y à toutes ces questions.

Une fois que vous avez terminé avec MariaDB, il est temps de peaufiner PHP.

sudo nano /etc/php/8.0/apache2/php.ini
Et merci à l'éditeur de modifier ces valeurs

date.timezone = [your-timezone].
memory_limit = 512M
upload_max_filesize = 500M
post_max_size = 500M
max_execution_time = 300
Vous pouvez augmenter ces valeurs en fonction de la puissance de votre serveur.

Enregistrez les modifications et fermez l'éditeur. Appliquez ensuite les modifications.

sudo systemctl restart apache2
Créer une nouvelle base de données sur MariaDB pour Nextcloud
L'étape suivante consiste à créer une nouvelle base de données et un nouvel utilisateur pour Nextcloud.

Alors, accédez à la console MariaDB :

sudo mysql -u root -p
Créez le nouvel utilisateur pour éviter de travailler avec l'utilisateur root.

CREATE USER 'nextcloud'@'localhost' identified by 'passw';
Bien sûr, vous pouvez modifier le nom d'utilisateur et la valeur du mot de passe.

Maintenant, créez la nouvelle base de données :

CREATE DATABASE nextclouddb;
Vous pouvez également lui attribuer un autre nom.
Actualiser les autorisations.

FLUSH PRIVILEGES;
Et quittez la console :

quit;
Définissez les autorisations appropriées sur la nouvelle base de données pour l'utilisateur.

GRANT ALL PRIVILEGES ON nextclouddb.* TO 'nextcloud'@'localhost'; 
