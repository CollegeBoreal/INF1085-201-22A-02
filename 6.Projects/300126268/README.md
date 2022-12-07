### Comment installer mediawiki sur un serveur ubuntu ?
![image](https://user-images.githubusercontent.com/97314948/206040960-308ccda9-7667-4c3d-a2a2-0be3b01dcc0b.png)
### INTRODUCTION 
MediaWiki est une plate-forme wiki open source populaire qui peut être utilisée pour la publication de contenu collaboratif public ou interne. MediaWiki est utilisé pour la plupart des wikis les plus populaires sur Internet, y compris Wikipedia, le site pour lequel le projet a été conçu à l'origine. 

Dans ce Readme, je vais configurer la dernière version de MediaWiki sur un serveur Ubuntu. Je vais utuliser  le lighttpd serveur Web pour rendre le contenu réel disponible, php-fpm pour gérer le traitement dynamique et mysql pour stocker les données de notre wiki.

### A- Installer les composants du serveur
### B- Configurer MySQL et créer des identifiants pour MediaWiki
### E- Installer MediaWiki

                                                          Let's Start
                                                          
                                                        
 ### A- Installer les composants du serveur
 
 Mettre à jour sa base de données de packages en exécutant la commande suivante :

```
sudo apt-get update
```
![image](https://user-images.githubusercontent.com/97314948/206092969-f6a8567d-0e28-46fd-992e-2fe2bf99cc41.png)


Nous pouvons commencer à installer les composants serveur dont nous avons besoin. Nous utiliserons la pile LLMP (Linux, Lighttpd, MySQL, PHP). Il est également important de noter que toutes les commandes sont exécutées à l'aide de la sudo commande.

###### Installer le serveur LAMP
Tout d'abord, vous devrez installer les extensions Apache, MariaDB, PHP et autres extensions PHP sur votre serveur. Vous pouvez tous les installer à l'aide de la commande suivante :
```
sudo apt-get install apache2 mariadb-server php libapache2-mod-php php-mbstring php-xml php-json php-mysql php-curl php-intl php-gd php-mbstring texlive imagemagick unzip -y
 ```
 ![image](https://user-images.githubusercontent.com/97314948/206104311-151d60f9-cb8f-4c61-8ebf-aedfe7b0b14c.png)
 
###### Installer MySQL
```
sudo mysql_secure_installation
```
![image](https://user-images.githubusercontent.com/97314948/206106775-f4ba6863-a5c4-43a5-a952-2009525a5753.png)

Repndre a une serie de question :
```
Entrez le mot de passe actuel pour root (entrez pour aucun): Appuyez sur Entrée
Définir le mot de passe root ? [O/n] : O
Nouveau mot de passe : Entrez le mot de passe
Entrez à nouveau le nouveau mot de passe : Confirmer le mot de passe
Supprimer les utilisateurs anonymes ? [O/n] : O
Interdire la connexion root à distance ? [O/n] : O
Supprimer la base de données de test et y accéder ? [O/n] : O
Recharger les tables de privilèges maintenant ? [O/n] : O
```

Une fois terminé, redémarrez MariaDB.
```
sudo systemctl restart mariadb.service
```

### B- Configurer MySQL et créer des identifiants pour MediaWiki
Pour configurer MySQL, lancez l'interface de ligne de commande MySQL (CLI), avec :
```
mysql -u root -p
```
![image](https://user-images.githubusercontent.com/97314948/206113948-0397bd4f-2247-4155-9523-9c6c521b5668.png)


Entrez ensuite le mot de passe que vous avez défini précédemment. Votre invite devrait passer de $à mysql>. Nous allons maintenant configurer une nouvelle base de données pour MediaWiki :

###### Créez une base de données nommée mediawikidb:

```
CREATE DATABASE mediawikidb;
```

Créez un utilisateur nommé sedric_wiki avec un nouveau  mot de passe pour la base de données mediawikidb:
```
GRANT index, create, select, insert, update, delete, alter, lock tables on mediawikidb.* TO sedric_wiki@localhost IDENTIFIED BY 'votre mots de passe';
```
Accordez à sedric_wiki un accès complet à la base de données.
```
GRANT ALL ON mediawikidb.* TO 'sedric_wiki'@'localhost' IDENTIFIED BY 'votres mot de passe' WITH GRANT OPTION;
```
Ensuite pour nettoyer le cache utilisé par MySQL et quitter la CLI :
```
FLUSH PRIVILEGES; exit
```

Le $devrait maintenant être de retour comme invite. Maintenant, nous redémarrons MySQL :

sudo service mysql restart

