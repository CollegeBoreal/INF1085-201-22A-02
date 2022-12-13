![Screenshot_20221213_022827](https://user-images.githubusercontent.com/97314874/207253092-cc0660ea-400a-4aa9-8b35-c8b31fc07354.png)


# Few steps in order to Install NextCloud on Ubuntu
 
Right-click here and save the file to your computer.

Upload setup-nextcloud.php to your web space.

Point your web browser to setup-nextcloud.php on your webspace.

Follow the instructions and configure Nextcloud.

Login to your newly created Nextcloud instance!

## Step 2 – Configuring an Administrative Account

There are a few different ways you can configure the Nextcloud snap

o configure Nextcloud with a new administrator account, use the nextcloud.manual-install command. You must pass in a username and a password as arguments:

![image](https://user-images.githubusercontent.com/97314874/207267884-4cf1c131-32b6-48da-bb3b-d1083186b14a.png)



##  Update the system packages to the latest versions available with this command.
```
sudo apt update -y && sudo apt upgrade -y
```
## Installing Apache Web Server by using this following command

```
sudo apt install apach2
```
## Apache Web server configuration
Configuring Apache requires the creation of a single configuration file. On Debian, Ubuntu, and their derivatives, this file will be /etc/apache2/sites-available/nextcloud.conf. On Fedora, CentOS, RHEL, and similar systems, the configuration file will be /etc/httpd/conf.d/nextcloud.conf.
![image](https://user-images.githubusercontent.com/97314874/207264597-fcb206cc-1c3c-4792-a91a-2664b397beeb.png)

## You'll need to enable the service with the following command.
```
sudo systemctl enable apache2 && sudo systemctl start apache2
```
![image](https://user-images.githubusercontent.com/97314874/207266741-aebc463a-7b4f-4c00-8c8a-cdf1752a91f5.png)

## the following output is what you should probably have on your screen. 

root@host: # sudo systemctl status apache2

# Installing [Apache, PHP] Web Server AND MariaDB SQL Server

sudo apt install apache2 libapache2-mod-php php-cli php-fpm php-json php-intl php-imagick php-pdo php-mysql php-zip php-gd php-mbstring php-curl php-xml php-pear php-bcmath mariadb-server

## Configure MariaDB
```
mysql -u root -p
FLUSH PRIVILEGES;
CREATE DATABASE nextcloud;
GRANT ALL PRIVILEGES ON nextcloud.* TO 'nextcloud'@'localhost' IDENTIFIED BY 'PassForDB';
quit;
```
## Donwload and Install NextCloud
```
cd /var/www/html
wget https://download.nextcloud.com/server/releases/latest.zip
```

unzip latest.zip

full permission for unzipped folder must be given.

chmod -R 777 /var/www/html/nextcloud
restart the apache2 server.


![image](https://user-images.githubusercontent.com/97314874/207270917-e7f01183-b371-44d2-aed6-661533a8717b.png)

## Logging in to the Nextcloud Web Interface

Now that Nextcloud is configured, visit your server’s domain name or IP address in your web browser:
https://example.com

![Screenshot_20221213_035409](https://user-images.githubusercontent.com/97314874/207273031-13bf9603-6515-48b2-9250-15ed13db2253.png)

![Screenshot_20221213_035459](https://user-images.githubusercontent.com/97314874/207273084-9b559f84-2cdc-4574-a9a1-8ce27cb800a2.png)

## Conclusion
Nextcloud can replicate the capabilities of popular third-party cloud storage services. Content can be shared between users or externally with public URLs. The advantage of Nextcloud is that the information is stored securely in a place that you control.



