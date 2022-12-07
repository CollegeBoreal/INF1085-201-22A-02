
# comment installer mediawiki sur un serveur Ubuntu.

## Pour le faire il faudrait paaser par etapes
#### Installer Apache2
#### Installer MariaBD
#### Installer PHP et ses dépendances
#### Creer une base de données 
#### Télécharger et installer médiawiki
#### Configurer les fichiers de configuration Apache2 et MediaWiki
#### Activer et configurer MediaWiki
#
#### Tout d'abord il est recommandé de faire la mise en jour de de ton serveur avec la commande 
``sudo apt update``
#### Installation Apache2
``sudo apt -y install apache2
``
#### Une fois Apache2 installé, nous désactiverons les listes de répertoires.
``
sudo sed -i "s/Options Indexes FollowSymLinks/Options FollowSymLinks/" /etc/apache2/apache2.conf
``
#### Nous allons maintenant arrêter le service (s'il était précédemment activé), le démarrer et l'activer pour qu'il démarre après un redémarrage du système.
``sudo systemctl restart apache2.service && sudo systemctl enable apache2.service``
