How to install next cloud on Ubuntu Server 22.04 LTS
I personnaly prefer to use only this one particular command to install Apache web server, MariaDB Sql Server and PHP web server with dependencies.

sudo apt install apache2 libapache2-mod-php php-cli php-fpm php-json php-intl php-imagick php-pdo php-mysql php-zip php-gd php-mbstring php-curl php-xml php-pear php-bcmath mariadb-server
And automatically it's gonna download the latest version of each of them.

Step 3. Open Ports in Firewall
Make sure to open ports in the firewall. PORT 80 it's to send and receive http web pages. PORT 443 it's to send and receive https web pages.

sudo ufw allow 80
sudo ufw allow 443
Step 4. Configure MariaDB
mysql -u root -p
FLUSH PRIVILEGES;
CREATE DATABASE nextcloud;
GRANT ALL PRIVILEGES ON nextcloud.* TO 'nextcloud'@'localhost' IDENTIFIED BY 'Passwddatab';
quit;
Step 5. Donwload and Install NextCloud
cd /var/www/html
wget https://download.nextcloud.com/server/releases/latest.zip

And we should unzip the downloaded file. (In case you don't have unzip installed make sure to install it apt install unzip)

unzip latest.zip
Now we should give full permission for unzipped folder.

chmod -R 777 /var/www/html/nextcloud

and finally we restart the apache2 server in order to reaload the new changement.

service apache2 restart

Step 6. Final Step - Set up nextcloud.
Teacher Access:
Username: memedlebleu
password: server1

<img width="479" alt="Capture d’écran 2022-12-05 221230" src="https://user-images.githubusercontent.com/97644305/206024931-7967b4b3-7889-422c-b9bc-14c9944f79dc.png">

<img width="481" alt="Capture d’écran 2022-12-06 140100" src="https://user-images.githubusercontent.com/97644305/206025108-9febd3ee-9d4b-4251-8393-f058c1cf83ff.png">

<img width="477" alt="Capture d’écran 2022-12-06 140304" src="https://user-images.githubusercontent.com/97644305/206025150-220ac5a3-0c3a-4479-8435-4207b698f369.png">

<img width="479" alt="Capture d’écran 2022-12-06 140516" src="https://user-images.githubusercontent.com/97644305/206025203-9c3ea4a9-dd2d-40a7-88d8-5bf6ccae215f.png">

<img width="960" alt="Capture d’écran 2022-12-06 145926" src="https://user-images.githubusercontent.com/97644305/206025229-bedf6e9b-6a66-464e-8b69-7af6ef91b13a.png">

<img width="957" alt="Capture d’écran 2022-12-06 150104" src="https://user-images.githubusercontent.com/97644305/206025258-cbbb08a5-b599-48be-a646-3c41bb39e8c3.png">

Thank you

