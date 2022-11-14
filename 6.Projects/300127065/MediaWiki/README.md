## 300127065

##                            !!! Bonjour !!!


##          Bienvenue Dans mon Premier Projet sur MediaWiki.


## Pour ce cette etape, je vais vous monter comment créer une page sur MediaWiki avec UBUNTU 22.04. LTS. Pour mieux comprendre MediaWiki on definit Mediawiki comme étant une platforme de collaboration et de documentation conçue pour vous par une communauté dynamique.


## Plan de la création d'une page sur Mediawiki en linux 

A: Vesifiez que le systeme est a jour

B: Installer le serveur LAMP

C: Installer la Base de Données: MYSQL

D: Configuration de MediaWiki

E: Installation et Configuration de Apache web serveur sur CentOS

                        
                                    PRET A LANCER
                                    
                                   


A: Vesifiez que le systeme est a jour en excécutant la commade suivante:  

```
sudo apt update
sudo apt upgrade
```

B: La commande qui permet d'installer le serveur LAMP:

``` 
sudo apt-get install apache2 lamp-server
```

C: La  commande qui permet d'installer la Base de Données: MYSQL

Mais avant de procéder à l'installation initiale de MediaWiki, vous devez d'abord effectuer certaines étapes !

Sur Raspbian, s'il s'agit d'une nouvelle installation de mariadb, vous devrez également exécuter.

```
sudo mysqld_safe --skip-grant-tables --skip-networking &
```

Vous allez devoir :

créer un NOUVEAU utilisateur mysql (new_mysql_user) :

```
sudo mysql -u root -p 
```
Entrez le mot de passe de l'utilisateur root mysql (si vous n'avez pas configuré de mot de passe, il sera vide, appuyez simplement sur Entrée)
mysql> CREATE USER 'new_mysql_user'@'localhost' IDENTIFIED BY 
'THISpasswordSHOULDbeCHANGED'
mysql> quit


créer une NOUVELLE base de données mysql my_wiki :

```
sudo mysql -u root -p
```

mysql> CREATE DATABASE my_wiki;
mysql> use my_wiki
Database changed

DONNEZ au NOUVEAU accès utilisateur mysql à la NOUVELLE base de données mysql créée my_wiki:


D: Installation et Configuration de MediaWiki


E: Installation et Configuration de Apache web serveur sur CentOS






References:

(https://www.mediawiki.org/wiki/Manual:Running_MediaWiki_on_Debian_or_Ubuntu/fr)

(https://ia904501.us.archive.org/6/items/pdfbackup_18_aout-2014/ManualInstallation_guide-fr_-_MediaWiki.pdf)





