# How to install next cloud on Ubuntu Server 22.04 LTS
## Step 1. Update the System

Before we start I like to elevate the system once for all to not use sudo and tape the password everytime.
```
sudo bash
```
Let's do a quick update for system packages.
```
apt update
```

## Step 2. Install [Apache, PHP] Web Server AND MariaDB SQL Server
I personnaly prefer to use only this one particular command to install Apache web server, MariaDB Sql Server and PHP web server with dependencies.
```
sudo apt install apache2 libapache2-mod-php php-cli php-fpm php-json php-intl php-imagick php-pdo php-mysql php-zip php-gd php-mbstring php-curl php-xml php-pear php-bcmath mariadb-server
```
And automatically it's gonna download the latest version of each of them.

## Step 3. Open Ports in Firewall
Make sure to open ports in the firewall.
PORT 80 it's to send and receive **http** web pages.
PORT 443 it's to send and receive **https** web pages.

```
sudo ufw allow 80
sudo ufw allow 443
```
## Step 4. Configure MariaDB
```
mysql -u root -p
FLUSH PRIVILEGES;
CREATE DATABASE nextcloud;
GRANT ALL PRIVILEGES ON nextcloud.* TO 'nextcloud'@'localhost' IDENTIFIED BY 'PassForDB';
quit;
```
## Step 5. Donwload and Install NextCloud

```
cd /var/www/html
wget https://download.nextcloud.com/server/releases/latest.zip

```

And we should unzip the downloaded file. (In case you don't have ```unzip``` installed make sure to install it ```apt install unzip```)

```
unzip latest.zip
```

Now we should give full permission for unzipped folder.
```
chmod -R 777 /var/www/html/nextcloud

```
and finally we restart the apache2 server in order to reaload the new changement.
```
service apache2 restart
```
to make sure that we are in the right path we should open the browser and tape our server host (EX: http://33.xx.xx.xx) and nextcloud installation page should show up.

## Step 6. Final Step - Set up nextcloud.

In this final step we should fill the forms with our information.

