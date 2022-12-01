# How to Install NextCloud on Ubuntu 22.04
## Step 1. Update the System
Before we install the NextCloud storage service we will update the system packages to the latest versions available.
```
sudo apt update -y
```
![unnamed (1)](https://user-images.githubusercontent.com/97314467/205064647-a8001fb4-a755-41ac-850c-67eafe27eb0c.jpg)
## step 2. Install Apache Web Server
Install the Apache Web server with the following command:
```
sudo apt install apache2
```
![IMG-6235](https://user-images.githubusercontent.com/97314467/205067036-be0cce6e-1a85-463a-99a7-fa8df690ca80.jpg)
![IMG-6236](https://user-images.githubusercontent.com/97314467/205067117-0d949f27-b2b0-4a51-840b-2bc932d46daf.jpg)
## Once installed, start and enable the service.
```
sudo systemctl enable apache2 && sudo systemctl start apache2
```
![unnamed](https://user-images.githubusercontent.com/97314467/205068164-17a0f872-89aa-4e10-b7d0-bd66743ee496.jpg)
## Check if the service is up and running:
```
sudo systemctl status apache2
```
![unnamed](https://user-images.githubusercontent.com/97314467/205069016-3debce39-ed74-4dc2-822d-93f4fc6802f4.jpg)
## Step three. Install PHP8.1 with dependencies
To install the PHP8.1 along with extensions execute the following command:
```
sudo apt-get install php8.1 php8.1-cli php8.1-common php8.1-imap php8.1-redis php8.1-snmp php8.1-xml php8.1-zip php8.1-mbstring php8.1-curl php8.1-gd php8.1-mysql
```
![IMG-6240](https://user-images.githubusercontent.com/97314467/205071164-4c153ae2-4071-4b9a-aa8b-82d62d0a214c.jpg)
![IMG-6242](https://user-images.githubusercontent.com/97314467/205071262-bb9c4fda-d8c7-45ad-bb32-9353dcfca7b9.jpg)
## Step four. Install MariaDB database server
To install the MariaDB database server, execute the command below.
```
sudo apt install mariadb-server
```
![IMG-6243](https://user-images.githubusercontent.com/97314467/205072266-fbc68c0a-af07-4d62-93ba-07131628abcb.jpg)
![IMG-6246](https://user-images.githubusercontent.com/97314467/205072300-6f91cda0-560c-43fb-9e59-a831e9bfe4a0.jpg)
Start and enable the mariadb.service with the following commands:
```
sudo systemctl start mariadb && sudo systemctl enable mariadb
```
![unnamed](https://user-images.githubusercontent.com/97314467/205072874-f7b36de5-47c5-48b6-ba62-55be8d568bca.jpg)
Check the status of the mariadb.service
```
sudo systemctl status mariadb
```
You should receive the following output:
![unnamed (1)](https://user-images.githubusercontent.com/97314467/205074126-b9fe3df5-3797-4d51-9ce6-e75cd2ffeaa4.jpg)
To check the installed MariaDB database version you can execute the following command:
```
mysql -V
```
You should receive the following output:
![unnamed](https://user-images.githubusercontent.com/97314467/205074949-5460d0dd-35b6-40b3-85cd-9c6da8af609b.jpg)
## Step five. Create Database and Database User
We need to create a database, and database user before we install the NextCloud.
```
CREATE DATABASE nextcloud;
GRANT ALL PRIVILEGES ON nextcloud.* TO 'nextcloud'@'localhost' IDENTIFIED BY 'YourStrongPasswordHere';
FLUSH PRIVILEGES;
exit;
## Step Six. Install Nextcloud
The latest stable version of NextCloud is NextCloud 24.0.1 go into the Apache document root and download the latest version:</p
```
cd /var/www/html wget https://download.nextcloud.com/server/releases/nextcloud-24.0.1.zip
```
![unnamed (1)](https://user-images.githubusercontent.com/97314467/205077114-29c3a667-0bc6-46a3-ad5a-db1d07807e58.jpg)
Once the installation is downloaded, extract it with the following command.
```
unzip nextcloud-24.0.1.zip
```
![unnamed](https://user-images.githubusercontent.com/97314467/205085181-6d503bbf-1f66-494c-aef4-6dde22f99f2a.jpg)
After extracting, we need to set up the right permissions:
```
chown -R www-data:www-data /var/www/html/nextcloud
```
## Step seven. Create Apache Virtual Host File
In order can access NextCloud via domain name we need to create Apache Virtual Host file.

First, create the configuration file with the following command:
```
touch /etc/apache2/sites-available/nextcloud.conf
```
