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
sudo apt -y install apache2
```
saisir localhost ou l'adress ip de ton server
 
 ![Screenshot 2022-12-07 162323](https://user-images.githubusercontent.com/105461057/206300174-493984c9-26f1-472b-b05c-1b1c237a877f.png)



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
sudo apt -y install php php-common php-mbstring php-xmlrpc php-soap php-gd php-xml php-intl php-mysql php-cli php-ldap php-zip php-curl
```
Ouvrez le fichier d'initialisation PHP
```
sudo vim /etc/php/8.0/apache2/php.ini
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
sudo apt install mariadb-server mariadb-client
```
Nous allons maintenant arrêter le service (s'il était précédemment activé), le démarrer et l'activer pour qu'il démarre après un redémarrage du système.

```
sudo systemctl restart mariadb.service && sudo systemctl enable mariadb.service
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

Tapez la comment suivante pour acceder à msql

```
sudo mysql -u root -p
```

1. comment par créer votre base de donnée(finisser toujour avec un point virgule à la fin de votre recquête)
```
CREATE DATABASE wikidb;
```
2. Créer votre utilisateur et son mot de passe
```
CREATE USER 'orely'@'localhost' IDENTIFIED BY 'yourpassword';
```
3. Attribuyer toutes les permissions à l'utisisateur et le droit de l'attrbuer à un autre utilisateur
```
GRANT ALL PRIVILEGES ON wikidb.* TO 'orely'@'localhost' WITH GRANT OPTION;
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

Rendez-vous dans les sites officiels mediawiki(https://www.mediawiki.org/wiki/Download) pour copier le lien de télechargement.Ouvrez le terminal  à partir duquel vous accédez au serveur Ubuntu 22.04 et utilisez la ```wget``` commande pour télécharger les fichiers MediaWiki.

```
cd /tmp
```

```
wget https://releases.wikimedia.org/mediawiki/1.39/mediawiki-1.39.0.tar.gz
```

.Déziper le fichier avec la commande
```
 sudo tar xzvf mediawiki-1.39.0.tar.gz
```

![Screenshot 2022-12-06 125846](https://user-images.githubusercontent.com/105461057/206285620-359b088b-403b-4f78-bf48-262df409172d.png)

## 7. Installer mediawiki

Pour cela, ouvrez votre navigateur local et pointez-le vers le domaine ou l'adresse IP du serveur Ubuntu sur lequel vous installez MediaWiki de la manière suivante :

```
10.13.237.17/mediawiki-1.39.0
```

Appuyer sur ```complete the instalation```

![Screenshot 2022-12-12 213227](https://user-images.githubusercontent.com/105461057/207216615-10cffbed-4b8a-4ab4-b4c2-94ea7c1d6b23.png)



choisir la langue 
![Screenshot 2022-12-12 213341](https://user-images.githubusercontent.com/105461057/207216319-b3849b89-3c6c-43de-b298-48a874fd0eed.png)



Appuyer sur continuer . choisir le nom de la base de donner , l'utilisateur et son mot de passe

![Screenshot 2022-12-12 213449](https://user-images.githubusercontent.com/105461057/207216992-533b5af0-a55d-48d2-bd52-ae3a1ec3451b.png)


Continuer avec l'installation

![Screenshot 2022-12-12 213602](https://user-images.githubusercontent.com/105461057/207217103-5344aab0-0d86-4d8c-a949-283df14ae1c7.png)

![Screenshot 2022-12-12 213844](https://user-images.githubusercontent.com/105461057/207217264-a5ccbef8-4edd-4ffa-9193-4e1f8d259ee4.png)


Telecharger le fichier LocalSetting.php

![Screenshot 2022-12-12 214312](https://user-images.githubusercontent.com/105461057/207217502-3e1595c9-0ead-42d1-9051-a876aefcfac0.png)

Welcome 

![Screenshot 2022-12-12 215430](https://user-images.githubusercontent.com/105461057/207217749-e108179d-cdd6-4fdc-816c-13d2251d2bac.png)







