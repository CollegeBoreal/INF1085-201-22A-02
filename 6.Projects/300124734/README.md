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
The Download will start...
![installation apahe ](https://user-images.githubusercontent.com/94937145/205810142-e95b3076-0682-48f8-8ef9-a6dd9b990aff.png)

## Step 3. Open Ports in Firewall
Make sure to open ports in the firewall.
PORT 80 it's to send and receive **http** web pages.
PORT 443 it's to send and receive **https** web pages.

```
sudo ufw allow 80
sudo ufw allow 443
```
## Step 4. MariaDB Configuration
```
mysql -u root -p
FLUSH PRIVILEGES;
CREATE DATABASE nextcloud;
GRANT ALL PRIVILEGES ON nextcloud.* TO 'nextcloud'@'localhost' IDENTIFIED BY 'PassForDB';
quit;
```
It should look like this;
![Screenshot 2022-12-05 215459](https://user-images.githubusercontent.com/94937145/205811187-fc191e0d-f30a-45b9-b6ce-ccc941c1ab35.png)

## Step 5. Donwload and Install NextCloud

```
cd /var/www/html
wget https://download.nextcloud.com/server/releases/latest.zip

```

And we should unzip the downloaded file. (In case you don't have ```unzip``` installed make sure to install it ```apt install unzip```)

```
unzip latest.zip
```
Now lets give full permission for the unzipped folder.
```
chmod -R 777 /var/www/html/nextcloud

```
And now we restart apache2 using the following command;
```
service apache2 restart
```
Last but not least open your browser and type your localhost server i.e (http://localhost.cherkaoui.tech/nextcloud), Nextcloud installation should pop up.

## Step 6. Final Step - Set up nextcloud.

once in the localhost server page you should have something like this;
![Screenshot 2022-12-05 235249](https://user-images.githubusercontent.com/94937145/205819081-8c627e5a-2bf5-4a80-b2b9-b9b6fffb8924.png)

Robert Brice Account: 
Username=Robertb
psswd=cherkaoui300124734
 


