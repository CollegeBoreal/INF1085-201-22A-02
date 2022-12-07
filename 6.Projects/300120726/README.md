## Comment installer mediawiki dans un serveur Ubuntu-22

MediaWiki est un logiciel permettant de réaliser des sites Internet de type wiki. Il s'agit d'un système de gestion de contenu de site Web qui rend les pages Web librement et également modifiables par tous les visiteurs autorisés. Le site Wikibooks, sur lequel vous lisez actuellement cette page, ou encore Wikipédia sont des wikis. C'est un site de ce genre que nous allons apprendre à installer et à configurer.

Ce logiciel est sous licence GPL, c'est-à-dire que vous pouvez l'utiliser gratuitement, que vous avez accès au code et que vous pouvez le modifier.

## les étapes à suivre pour l'installation


1. Mettre à jour Ubuntu 22.04
2. Installez Apache
3. Installez PHP et les extentions requises
4. Installez MariaDB et Créer une nouvelles base de donées
5. Créer une base de donné pour Mediawiki
6. Télechargez le fichier mediawiki
7. installez MediaWiki sur Ubuntu

## 1.  Mettre à jour Ubuntu 22.04

La mise à jour permet de vous assurer que vos packages systèmes et le cache 

```
sudo apt update && sudo apt upgrade
```
## 2.  Installez Apache

```
sudo apt install apache2
```

Assurez-vous que le service web est activé en arrière-plan.

```
sudo systemctl enable --now apache2
```
Pour verifier l'état:

```
systemctl status apache2 --no-page -l
```

![Screenshot 2022-12-07 132433](https://user-images.githubusercontent.com/105461057/206271420-b3754ce0-bf85-4d93-85d6-0f8adb519614.png)

## 3. Installez PHP et les extentions requises

```
sudo apt install php php-common php-mbstring php-xmlrpc php-soap php-gd php-xml php-intl php-mysql php-cli php-ldap php-zip php-curl
```
Restart Apache avec la commande:
```
systemctl restart apache2
```
. Tester votre PHP avec
```
# nano /var/ www/html/testmyphp.php
<?php
phpinfo();
?>
```
Entrer votre ipadress/testmyphp.php dans URL pour voir votre page php

![Screenshot 2022-12-06 102511](https://user-images.githubusercontent.com/105461057/206275725-bcdafa5d-1b4a-46ec-916e-86a49349f914.png)


## 4 Installez MariaDB et Créer une nouvelles base de donées
Nous utilisons ici le MariaDB de MySQL pour établir un serveur de base de données pour MediaWiki
Suivez les commandes données pour configurer MariaDB et créer une base de données pour cette plate-forme Wiki.

```
sudo apt install mariadb-server
```
Une fois l'installation terminée, sécurisez votre base de données en définissant un mot de passe root et en supprimant les accès inutiles:
```
sudo mysql_secure_installation
```
Une fois appuyer sur ENTER vous aurez une suite des question suivantes:

```
Enter current password for root (enter for none): Press ENTER
Set root password? [Y/n]: Y
New password: Set-your-new-password
Re-enter new password: Set-your-new-password
Remove anonymous users? [Y/n] Y
Disallow root login remotely? [Y/n] Y
Remove test database and access to it? [Y/n] Y
Reload privilege tables now? [Y/n] Y
```
## 5. Créer une base de donné pour Mediawiki

1. comment par créer votre base de donnée(finisser toujour avec un point virgule à la fin de votre recquête)
```
CREATE DATABASE Name-database;
```
2. Créer votre utilisateur et son mot de passe
```
CREATE USER 'name-user'@'localhost' IDENTIFIED BY 'yourpassword';
```
3. Attribuyer toutes les permissions à l'utisisateur et le droit de l'attrbuer à un autre utilisateur
```
GRANT ALL PRIVILEGES ON wikidb.* TO 'wikiuser'@'localhost' WITH GRANT OPTION;
```
4. Terminer
```
flush privileges;
```
5. Sorter de la passe avec :
 ```
  quit;
 ```
## 6. Télechargez le fichier mediawiki

Rendez-vous dans les sites officiels mediawiki pour copier le lien de télechargement.Ouvrez le terminal  à partir duquel vous accédez au serveur Ubuntu 22.04 et utilisez la ```wget``` commande pour télécharger les fichiers MediaWiki.

```
cd /tmp
```
```
wget https://releases.wikimedia.org/mediawiki/1.30/\
mediawiki-1.30.0.tar.gz
```

.Déziper le fichier avec la commande
```
tar xzvf mediawiki-1.30.0.tar.gz
```
![Screenshot 2022-12-06 125846](https://user-images.githubusercontent.com/105461057/206285620-359b088b-403b-4f78-bf48-262df409172d.png)

7. Installer mediawiki
Pour cela, ouvrez votre navigateur local et pointez-le vers le domaine ou l'adresse IP du serveur Ubuntu sur lequel vous installez MediaWiki de la manière suivante :

```
http://ip-serveuradresse/wiki
```

Appuyer sur ```complete the instalation```

![Screenshot 2022-12-06 134757](https://user-images.githubusercontent.com/105461057/206286182-3eabd229-fc0a-4db9-ae6b-eec7e482f644.png)

choisir la langue 

![Screenshot 2022-12-06 162121](https://user-images.githubusercontent.com/105461057/206286615-ba3cb07b-5ab9-41a3-a522-6284c170ee5d.png)

Appuyer sur continuer . choisir le nom de la base de donner , l'utilisateur et son mot de passe
![Screenshot 2022-12-06 193932](https://user-images.githubusercontent.com/105461057/206287558-bd74fff6-6d02-4d26-8d27-dc64f439deeb.png)

Continuer avec l'installation

![Screenshot 2022-12-06 195624](https://user-images.githubusercontent.com/105461057/206287234-f115ee8f-67b8-49f4-a6ed-3e4e50cd2c81.png)



