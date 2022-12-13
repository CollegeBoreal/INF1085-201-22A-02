![Screenshot_20221213_022827](https://user-images.githubusercontent.com/97314874/207253092-cc0660ea-400a-4aa9-8b35-c8b31fc07354.png)


# Few steps in order to Install NextCloud on Ubuntu
 Right-click here and save the file to your computer.
Upload setup-nextcloud.php to your web space.
Point your web browser to setup-nextcloud.php on your webspace.
Follow the instructions and configure Nextcloud.
Login to your newly created Nextcloud instance!




Before we install the NextCloud storage service we will update the system packages to the latest versions available.
```
sudo apt update -y && sudo apt upgrade -y
```
## Step 2. Install Apache Web Server
Install the Apache Web server with the following command:
```
sudo apt install apach2
```
## Once installed, start and enable the service.
```
sudo systemctl enable apache2 && sudo systemctl start apache2
```
## Check if the service is up and running:
```
sudo systemctl status apache2
```
## You should receive the following output:
```
root@host: # sudo systemctl status apache2
```
## Step 3. Install [Apache, PHP] Web Server AND MariaDB SQL Server
I personnaly prefer to use only this one particular command to install Apache web server, MariaDB Sql Server and PHP web server with dependencies.
```
sudo apt install apache2 libapache2-mod-php php-cli php-fpm php-json php-intl php-imagick php-pdo php-mysql php-zip php-gd php-mbstring php-curl php-xml php-pear php-bcmath mariadb-server
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
And we should unzip the downloaded file. (In case you don't have unzip installed make sure to install it apt install unzip)
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
![IMG-6378](https://user-images.githubusercontent.com/97314467/206089180-02317d16-eea4-4647-9d61-0f7ca2f03696.jpg)
![IMG-6384](https://user-images.githubusercontent.com/97314467/206089215-20decd2f-f781-45ca-a563-b7aec7b053a3.jpg)
http://10.13.237.13/nextcloud/index.php/login?clear=1
## Step 6. Final Step - Set up nextcloud.
Here is the link that shows how to install nextcloud 
https://youtu.be/IXmeqdLOlPc 
