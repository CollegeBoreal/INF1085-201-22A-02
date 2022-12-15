                                    #### Comment installer Nextcloud


 I-   Les Etapes d'installations


```
# apt update && apt upgrade
```


![image](https://user-images.githubusercontent.com/113466237/207984605-fcd99edf-c1f3-4bab-b2db-1252a1e48a95.png)



```
# apt install apache2 mariadb-server 
```


![image](https://user-images.githubusercontent.com/113466237/207984880-7fe5df45-4e86-4c4e-9ce6-bca06a6c0dfa.png)



```
# apt install libapache2-mod-php php-bz2 php-gd php-mysql php-curl php-mbstring php-imagick php-zip php-ctype php-curl php-dom php-json php-posix php-bcmath php-xml php-intl php-gmp zip unzip wget
```


![image](https://user-images.githubusercontent.com/113466237/207986965-2d18edc3-f4d7-4c1c-8a00-395a77be56dc.png)




```
# a2enmod rewrite dir mime env headers
# systemctl restart apache2
```


![image](https://user-images.githubusercontent.com/113466237/207985478-de0d99d2-3277-49ed-927c-bd282d1b40b8.png)



```
# mysql
```


![image](https://user-images.githubusercontent.com/113466237/207985897-2f1e43ad-d395-411b-8e1e-b3923ebe717b.png)



```
CREATE USER 'nextcloud'@'localhost' IDENTIFIED BY 'passw@rd';
CREATE DATABASE IF NOT EXISTS nextcloud CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
GRANT ALL PRIVILEGES ON nextcloud.* TO 'nextcloud'@'localhost';
FLUSH PRIVILEGES;
quit;
```


![image](https://user-images.githubusercontent.com/113466237/207986168-cc3705f5-e40e-4536-889e-015d53a40424.png)



```
# cd /var/www/html/nextcloud
# mv * .* ../
```


```
# rmdir /var/www/html/nextcloud
```


```
# chown -R www-data:www-data /var/www/html
```


```
# cd /var/www/html
# sudo -u www-data php occ  maintenance:install --database \
"mysql" --database-name "nextcloud"  --database-user "nextcloud" --database-pass \
"passw@rd" --admin-user "admin" --admin-pass "admin123"
```


```
# vi /var/www/html/config/config.php

<?php
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

# systemctl restart apache2
```
