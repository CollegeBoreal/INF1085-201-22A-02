 ### Comment installer NexCloud sur Ubuntu Server 22.04 LTS
 avant de commencer on doit tout d abord  se connecter sur notre serveur 
 ## 1 Premiere Etape 
# sudo bash
cette commande nous permets de ne pas utiliser Sudo et ecrire le mot de passe a chaque fois,
# apt update
cette commande nous permet de faire une mise a jour de systeme.
## 2 Deuxieme Etape/ Insalation de Apache,PHP Serveur Web et MariaDB SQL server.






![WhatsApp Image 2022-12-07 at 14 32 30 (10)](https://user-images.githubusercontent.com/105947276/206279890-96c48124-8c94-41ed-9f1e-16b353181da4.jpeg)

![WhatsApp Image 2022-12-07 at 14 32 30 (3)](https://user-images.githubusercontent.com/105947276/206280808-661b51fa-0dba-46fc-aa9c-bb32bcf7263d.jpeg)


## 3 Troisième etape 
Sudo ufw allow 80  
sudo ufw allow 443

## 4 quatrième etape Configuration de mariaDB
![WhatsApp Image 2022-12-07 at 14 32 30](https://user-images.githubusercontent.com/105947276/206283121-9333951a-b48f-4983-9e7e-5005b5adc193.jpeg)
## 5 cinquième etape installation de Nexcloud
![WhatsApp Image 2022-12-07 at 14 32 30 (5)](https://user-images.githubusercontent.com/105947276/206283953-5f9d2756-c46c-4997-88b5-6d17011fbc57.jpeg)

![WhatsApp Image 2022-12-07 at 14 32 30 (6)](https://user-images.githubusercontent.com/105947276/206284605-82fdd9cd-93e1-4ecc-9459-02cb64e11c24.jpeg)
   on a utiliser laa 'commande chmod -r775 /var/www/html/nextcloud' pour donner tous les permission .
la commande 'Service apache2 restart' pour redémarrer apache2
et apres on ouvre le navigateur et enregistrer notre hote serverveur et on va voir que notre page d installation S'affiche 
## 6 sixième etape 
on se connecte avec nos information dans le nextcloud 
http://localhost.walidue.tech/nextcloud/


![WhatsApp Image 2022-12-07 at 14 32 30 (9)](https://user-images.githubusercontent.com/105947276/206288900-b220cb92-f8be-4057-ae2a-61bdac6727ca.jpeg)
