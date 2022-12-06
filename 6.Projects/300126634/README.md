1. Update and Upgrade the Ubuntu Packages
 # apt update && apt upgrade
2.  install Apache and MySQL Server
 # apt install apache2 mariadb-server 
![1](https://user-images.githubusercontent.com/97324827/206020941-2a5013bd-b857-4134-8e5d-ff4da05165f2.jpg)
3. Install PHP and other Dependencies and Restart Apache
# apt install libapache2-mod-php php-bz2 php-gd php-mysql php-curl php-mbstring php-imagick php-zip php-ctype php-curl php-dom php-json php-posix php-bcmath php-xml php-intl php-gmp zip unzip wget
![2](https://user-images.githubusercontent.com/97324827/206021283-6f10a9bd-e8b8-4815-adea-5dc371ab9611.jpg)
4. Enable required Apache modules and restart Apache:
# a2enmod rewrite dir mime env headers
# systemctl restart apache2
![3](https://user-images.githubusercontent.com/97324827/206021554-87f4bf3a-7777-4799-bac2-73e060348ce1.jpg)
![4](https://user-images.githubusercontent.com/97324827/206021902-ca0c0a73-6d07-4ac0-a37d-cb6306ad7696.jpg)

5. Download and Install Nextcloud
# cd /var/www/html
# wget https://download.nextcloud.com/server/releases/latest.zip
# unzip latest.zip
![5](https://user-images.githubusercontent.com/97324827/206021862-9de6f152-c1c1-4fac-b837-045f2a60b02f.jpg)
6. Move all nextcloud content to the web root (/var/www/html) folder
# cd /var/www/html/nextcloud
# mv * .* ../
![6](https://user-images.githubusercontent.com/97324827/206022066-46db1610-8869-4a60-ab0e-e829428dd71c.jpg)
7. Remove empty nextcloud directory
# rmdir /var/www/html/nextcloud
8. Change the ownership of the nextcloud content directory to the HTTP user.
9. # chown -R www-data:www-data /var/www/html
10. ![9](https://user-images.githubusercontent.com/97324827/206022455-026ddaa8-a6db-4fab-b63a-63510ec5b8dd.jpg)
![WhatsApp Image 2022-11-30 at 16 27 53](https://user-images.githubusercontent.com/97324827/206022457-8d371842-95b2-44e8-8b08-c2e96ec38f73.jpg)
11. Run the nextcloud installation CLI commands.
# cd /var/www/html
# sudo -u www-data php occ  maintenance:install --database \
"mysql" --database-name "nextcloud"  --database-user "nextcloud" --database-pass \
"passw@rd" --admin-user "admin" --admin-pass "admin123"
![WhatsApp Image 2022-11-30 at 16 27 53](https://user-images.githubusercontent.com/97324827/206022601-c6cc1298-5d25-4bc3-ba3c-a664585798e3.jpg)
![WhatsApp Image 2022-11-30 at 16 27 55](https://user-images.githubusercontent.com/97324827/206022602-c501b08d-a2f4-43ce-aef9-344dd93ab812.jpg)
          
          If everything goes well the command will output “Nextcloud was successfully installed”.

6. nextcloud allowed access only from localhost, it could through error “Access through untrusted domain”. we need to allow accessing nextcloud by using our ip or domain name.

# vi /var/www/html/config/config.php

# <?php
 $CONFIG = array (
   'passwordsalt' => 'VAXFa5LsahAWHK/CMPHC3QkTsnqK80',
  'secret' => 'ZWTuZMLpKVizET85i/NkcwYCPUQyjB/6ZjEYGdVgJeDhNXzR',
  'trusted_domains' =>
  array (
    0 => 'localhost',
    1 => 'nc.mailserverguru.com', // we added this line
  ),
  'datadirectory' => '/var/www/html/data',
  'dbtype' => 'mysql',

  .....
:x

Now save the file and restart apache2

 systemctl restart apache2



![WhatsApp Image 2022-11-30 at 16 27 56](https://user-images.githubusercontent.com/97324827/206024177-97654b6a-5b02-4eab-bac0-9b0f57628173.jpg)
![WhatsApp Image 2022-11-30 at 16 27 59](https://user-images.githubusercontent.com/97324827/206024510-4a24415a-28f7-43a1-b387-06268f3f559e.jpg)


