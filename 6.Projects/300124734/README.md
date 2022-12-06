# How to install next cloud on Ubuntu Server 22.04 LTS
## First step 1. Update the System

```
sudo bash
apt update
```
![sudobash aptupdate](https://user-images.githubusercontent.com/94937145/205809580-566aa8d9-9f68-4619-8028-e70d1bec9a8e.png)

## Step 2.  Install [Apache, PHP] Web Server AND MariaDB SQL Server

```
sudo apt install apache2 libapache2-mod-php php-cli php-fpm php-json php-intl php-imagick php-pdo php-mysql php-zip php-gd php-mbstring php-curl php-xml php-pear php-bcmath mariadb-server
```
The Download will start.
![installation apahe ](https://user-images.githubusercontent.com/94937145/205810142-e95b3076-0682-48f8-8ef9-a6dd9b990aff.png)

## Step 3. MariaDB Configuration
```
mysql -u root -p
FLUSH PRIVILEGES;
CREATE DATABASE nextcloud;
GRANT ALL PRIVILEGES ON nextcloud.* TO 'nextcloud'@'localhost' IDENTIFIED BY 'PassForDB';
quit;
```
It should look like this;
![Screenshot 2022-12-05 215459](https://user-images.githubusercontent.com/94937145/205810715-bb18a5b8-5fad-4ec7-9c9e-6545d80b1cb7.png)
