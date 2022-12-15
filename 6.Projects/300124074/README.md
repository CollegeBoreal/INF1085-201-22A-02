Comment créer un Serveur NextCloud?

## 1- Tout d'abord il nous faut mettre à jour le système.
sudo bash
apt update


 ##  2- Installer [Apache, PHP] Web Server et MariaDB SQL Server

sudo apt install apache2 libapache2-mod-php php-cli php-fpm php-json php-intl php-imagick php-pdo php-mysql php-zip php-gd php-mbstring php-curl php-xml php-pear php-bcmath mariadb-server


## 3- On ouvre les ports 80 pour envoyer et recevoir les paquetes http et 443 pout envoyer et recevoir les paquets https. 

sudo ufw allow 80
sudo ufw allow 443


## 4- On configure MariaDB

mysql -u root -p
FLUSH PRIVILEGES;
CREATE DATABASE nextcloud;
GRANT ALL PRIVILEGES ON nextcloud.* TO 'nextcloud'@'localhost' IDENTIFIED BY 'PassForDB';
quit;

## 5- On télécharge et install Nextcloud

cd /var/www/html
wget https://download.nextcloud.com/server/releases/latest.zip


## 6- On doit dezipper le fichier 


unzip latest.zip

## 7- Donner l'accès complet au fichier dezippé.

chmod -R 777 /var/www/html/nextcloud


## 8- Redemarer Appache

service apache2 restart

Au final, vous allez sur le site web et entrer les initials. 

