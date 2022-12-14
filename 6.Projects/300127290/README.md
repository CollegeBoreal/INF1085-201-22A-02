
                                                  Comment installer Nextcloud sur Ubuntu 22.04 LTS
                                              

Next cloud est une application Web qui nous permet d'héberger des fichiers dans le Cloud . ILs  nous permet aussi de  visualiser directement depuis un site Web ou des applications, de les partager.

Nextcloud est une application Web qui nécessite une certaine configuration sur le serveur pour pouvoir fonctionner. Il nécessite également PHP avec plusieurs de ses modules et un gestionnaire de base de données tel que MariaDB.

Depuis votre serveur, télécharger l’archive zip NextCloud. La dernière version stable est la 19.0.1 au moment de la rédaction de cet article. Allez sur https://nextcloud.com/install pour récupérer le lien de téléchargement et depuis votre terminal, exécuter la commande suivante (à adapter en fonction de la version) 
La premiere chose a faire est d'installer Apache a l'aide de:
sudo apt install apache2.
ensuite verifier le status de apache a l'aide de la commande: 
sudo systemct1 status apache2
![image](https://user-images.githubusercontent.com/105463700/206290063-110d98ba-d4a6-4d02-82ab-9323123f9b6b.png)
Nextcloud est écrit en langage de programmation PHP, donc PHP est une exigence essentielle pour le code Nextcloud. Exécutez les commandes suivantes pour installer les modules PHP requis ou recommandés par Nextcloud.
```
sudo apt install php libapache2-mod-php php-imagick php-common php-mysql php-gd php-json php-curl php-zip php-xml php-mbstring php-bz2 php-intl php-bcmath php-gmp php-dom unzip
```
ensuite faire php -v pour confirmer l'installation
![image](https://user-images.githubusercontent.com/105463700/206293203-39907a5e-b35e-4743-be6e-da474f6cd156.png)

Rechargez Apache pour que les modifications prennent effet a l'aide de la commande 
sudo systemctl reload apache2

Nextcloud peut utiliser la base de données MySQL, MariaDB, PostgreSQL ou SQLite pour stocker ses données. Dans ce guide, nous utiliserons MariaDB, alors installons-le.

sudo apt installer mariadb-server
Une fois les serveurs MariaDB installés, nous devons définir un mot de passe pour l'utilisateur administrateur MariaDB :

sudo mysql_secure_installation
Lorsqu'il vous demande d'entrer le mot de passe root MariaDB, appuyez sur la touche Entrée car le mot de passe root n'est pas encore défini. Entrez ensuite Y pour définir le mot de passe root du serveur MariaDB. N'oubliez pas de donner à l'utilisateur root de MariaDB un mot de passe fort.


Ici on balance le tout directement dans le répertoire /var/www/ qui est notre serveur web. On change les droits pour qu’Apache puisse écrire dans le répertoire :
![image](https://user-images.githubusercontent.com/105463700/206201148-fb5c10ce-6289-421a-a63f-3f5349daa76a.png)
Créer une base de données et un utilisateur spécifique pour Nextcloud sur MariaDB
Si vous avez suivi mes précédents guides, alors vous avez vu que j’utilise MariaDB pour la partie SQL. 
![image](https://user-images.githubusercontent.com/105463700/206201408-ac1042c0-59a5-4208-9e2f-bb8565733388.png)

On va ici créer l’utilisateur et la base de données que nous utiliserons pour Nextcloud.
Depuis votre terminal, lancer mysql en admin : 
Créez ensuite une base de données pour Nextcloud. Sur ce tutoriel j’appelle la base de données nextcloud. Vous pouvez utiliser le nom de votre choix.
create database nextcloud;
Créez l’utilisateur de la base de données. Encore une fois, vous pouvez utiliser votre nom préféré pour cet utilisateur. Remplacez votre_mot_de_passepar votre mot de passe préféré.
create user nextclouduser@localhost identified by 'votre_mot_de_passe';
Accordez à cet utilisateur tous les privilèges sur la base de données nextcloud :
![image](https://user-images.githubusercontent.com/105463700/206201614-dcb4df2c-1139-4ff1-8e14-39a6fd7a79ac.png)
Un petit « Flush Privileges » pour appliquer les changements 
![image](https://user-images.githubusercontent.com/105463700/206201709-8ba3c976-95e3-4b75-84d6-ed4cbe9c8f7d.png)
Confirmez si l'utilisateur peut se connecter à la base de données avec le mot de passe fourni :





![image](https://user-images.githubusercontent.com/105463700/206201994-6db55197-968b-4fc4-888d-d22c08b05707.png)

C’est le moment de télécharger next cloud a l’aide de la commande suivante : 
wget https://download.nextcloud.com/server/releases/nextcloud-23.0.0.zip
![image](https://user-images.githubusercontent.com/105463700/206202141-dd6354a5-75e4-424e-b135-a88c569948a7.png)
Exécutez les commandes ci-dessous pour décompresser le package dans /var/www/html, créez un répertoire de données dans lequel Nextcloud stockera les données utilisateur et définissez les autorisations de répertoire appropriées :
sudo unzip nextcloud-23.0.0.zip -d /var/www/html/
sudo mkdir /var/www/html/nextcloud/data
sudo chown -R www-data:www-data /var/www/html/nextcloud/
![image]
![image](https://user-images.githubusercontent.com/105463700/206202191-f090e71c-ebca-403d-b8fe-fa7c92ae6d3c.png)
se connecter maintenant sur un serveur web a l'aide de son addresse
Ensuite remplir les differents champs

![image](https://user-images.githubusercontent.com/105463700/206204060-3e64869d-7127-4449-adba-20a5160af618.png)

