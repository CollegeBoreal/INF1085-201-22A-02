
                                                  Comment installer Nextcloud sur Ubuntu 22.04 LTS
                                                



Next cloud est une application Web qui nous permet d'héberger des fichiers dans le Cloud . ILs  nous permet aussi de  visualiser directement depuis un site Web ou des applications, de les partager.

Nextcloud est une application Web qui nécessite une certaine configuration sur le serveur pour pouvoir fonctionner. Il nécessite également PHP avec plusieurs de ses modules et un gestionnaire de base de données tel que MariaDB.

Depuis votre serveur, télécharger l’archive zip NextCloud. La dernière version stable est la 19.0.1 au moment de la rédaction de cet article. Allez sur https://nextcloud.com/install pour récupérer le lien de téléchargement et depuis votre terminal, exécuter la commande suivante (à adapter en fonction de la version) 
![image](https://user-images.githubusercontent.com/105463700/206200845-169f40e1-cd22-4d26-938e-501add5d47aa.png)
Dézipper tout ça avec la commande suivante : 
![image](https://user-images.githubusercontent.com/105463700/206200991-3fb9aa8a-45f2-49bd-b65b-6e1bf6f1e66c.png)
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
![image](https://user-images.githubusercontent.com/105463700/206202191-f090e71c-ebca-403d-b8fe-fa7c92ae6d3c.png)

