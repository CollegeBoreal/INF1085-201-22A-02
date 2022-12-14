## Comment Installer mediawiki sur un serveur ubuntu

...
Pour installer mediawiki suivez les étapes suivantes:

1 Installer Apache2

2 Installer mariaDB

3 Installer PHP et ces dependances

4 Creer une base des donnees Mediawiki

5 Telecharger et installer mediawiki

6 Activer et configurer mediawiki
...

Tout d'abord mettons à jour la base des donnes des paquets en executant la commande suivante:

```
sudo apt update
```


1 Installer Apache2 en executant la commnade suivante:

```
sudo apt -y install apache2
```





Nous allons maintenant arrêter le service (s'il était précédemment activé), le démarrer et l'activer pour qu'il démarre après un redémarrage du système
~~~

sudo systemctl restart apache2.service && sudo systemctl activer apache2.service
~~~


2 Installer mariaDB en executeant la commande suivante:
~~~

sudo apt installer mariadb-server mariadb-client
~~~



Nous allons maintenant arrêter le service (s'il était précédemment activé), le démarrer et l'activer pour qu'il démarre après un redémarrage du système
~~~

sudo systemctl restart mariadb.service && sudo systemctl activer mariadb.service
~~~



Une fois MariaDB installée, nous sécuriserons notre installation
~~~
sudo mysql_secure_installation
~~~


Vous serez invité à répondre aux questions suivantes. Assurez-vous de définir les options suivantes comme indiqué ci-dessous.
~~~

Entrez le mot de passe actuel pour root (entrez pour aucun): Appuyez sur Entrée
Définir le mot de passe root ? [O/n] : O
Nouveau mot de passe : Entrez le mot de passe
Entrez à nouveau le nouveau mot de passe : Confirmer le mot de passe
Supprimer les utilisateurs anonymes ? [O/n] : O
Interdire la connexion root à distance ? [O/n] : O
Supprimer la base de données de test et y accéder ? [O/n] : O
Recharger les tables de privilèges maintenant ? [O/n] : O
~~~


Une fois terminé, redémarrez MariaDB.
~~~

sudo systemctl restart mariadb.service
~~~


3 Installer PHP et ses dépendances

Utilisez les commandes suivantes pour installer PHP et les dépendances requises pour MediaWiki.
~~~

sudo apt install php php-common php-mbstring php-xmlrpc php-soap php-gd php-xml php-intl php-mysql php-cli php-ldap php-zip php-curl
~~~

4 Creer une base des donnees Mediawiki

Une fois toutes les étapes précédentes terminées, vous pouvez maintenant créer votre base de données MediaWiki. Suivez les étapes ci-dessous pour créer votre base de données MediaWiki.
~~~
sudo mysql -u root -p
~~~


Créer une base de données appelée mediawiki
~~~

CREATE DATABASE mediawiki;
CREATE DATABASE mediawiki;
~~~


Créez un utilisateur de base de données appelé madmin avec un nouveau mot de passe.
~~~
CREATE USER 'mediawiki' IDENTIFIED BY 'enterYourPassword';
~~~


Accordez à madmin un accès complet à la base de données.
~~~
GRANT ALL ON mediawiki.* TO 'Mediawiki'@'localhost' IDENTIFIED BY 'YourPassword' WITH GRANT OPTION;
~~~

Maintenant, enregistrez vos modifications et quittez.
~~~
FLUSH PRIVILEGES;
EXIT;
~~~


5 Telecharger et installer mediawiki
~~~

Visitez https://releases.wikimedia.org/mediawiki/ pour trouver la dernière itération de MediaWiki à télécharger. Suivez ensuite les commandes ci-dessous pour 

~~~
télécharger et installer. Changez de répertoire pour /tmp et téléchargez la dernière version.
~~~
cd /tmp && wget https://releases.wikimedia.org/mediawiki/1.38/mediawiki-core-1.38.4.tar.gz
~~~

Créez un répertoire et extrayez les fichiers dans le nouveau répertoire.
~~~
sudo mkdir -p /var/www/html/mediawiki
sudo tar -zxvf mediawiki*.tar.gz
sudo mv mediawiki-1.38.4/* /var/www/html/mediawiki
~~~

Modifiez la propriété et les autorisations des répertoires.
~~~
sudo chown -R www-data:www-data /var/www/html/mediawiki/ && sudo chmod -R 777 /var/www/html/mediawiki/
~~~

6 Activer et configurer mediawiki
Redémarrez Apache2 pour recharger tous les paramètres et configurations.
~~~
sudo systemctl restart apache2.service
~~~


Visitez votre nom d'hôte ou votre adresse IP pour démarrer la configuration de MediaWiki, et appuyez sur "configurer le wiki" pour commencer.

![Screenshot (11)](https://user-images.githubusercontent.com/106841177/207717999-ad36af72-cb5e-4b33-bb0e-1383ac228daa.png)

![Screenshot (10)](https://user-images.githubusercontent.com/106841177/207718096-5ed9a6c0-5107-424b-baed-61f6761a1ba8.png)

![Screenshot (9)](https://user-images.githubusercontent.com/106841177/207720817-5c317a20-8af1-4a79-b379-d3e3cb34821e.png)

![Screenshot (7)](https://user-images.githubusercontent.com/106841177/207726191-302ac9d1-9942-4939-96f5-0e62653ae6fe.png)
![Screenshot (7)](https://user-images.githubusercontent.com/106841177/207726317-3c867335-2d0e-4e67-88a1-5dfe0711659f.png)

