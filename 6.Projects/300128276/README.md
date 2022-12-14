                         #### Comment Installer MediaWiki sur Umbutu





I- Définition Médiawiki:


Le terme média désigne tout moyen de distribution, de diffusion ou de communication interpersonnelle, de masse ou de groupe, d'œuvres, de documents, ou de messages écrits, visuels, sonores ou audiovisuels (comme la radio, la télévision, le cinéma, Internet, la presse, les télécommunications, etc.)1. Ce terme est souvent utilisé comme l'abréviation du terme anglais mass-media ou médias de masse en français2.





II-  Les Etape de l'installation:



Pour l'installation de l'Apache



sudo apt -y install apache2



Apres je desactive les liste de repertoire



sudo sed -i "s/Options Indexes FollowSymLinks/Options FollowSymLinks/" /etc/apache2/apache2.conf



Apres j'arrete le service que j'ai activé précedement le démaré apres l.activé



sudo systemctl restart apache2.service && sudo systemctl enable apache2.service



Apres j'installe MariaDB



sudo apt install mariadb-server mariadb-client



Apres l'installation de MariaDB je securise mon installation



sudo systemctl restart mariadb.service && sudo systemctl enable mariadb.service



Apres je vien créer mon Database



CREATE DATABASE mediawiki;



et je cree mon nom d'utilisateur et mon mot de passe



CREATE USER 'mwadmin'@'localhost' IDENTIFIED BY 'enterYourPassword';



Je change repertoire en /tmp et je telecharge la derniere version



cd /tmp && wget https://releases.wikimedia.org/mediawiki/1.34/mediawiki-core-1.34.0.tar.gz



La configuration d'Apache et Mediawiki



sudo vim /etc/apache2/sites-available/mediawiki.conf


III-  QUelque images de l'installation



![linux wikimedia](https://user-images.githubusercontent.com/113144317/207488695-c789f1bf-bd30-4ff7-b1f9-8e1a1a98d06f.png)


![linux wikimedia 7](https://user-images.githubusercontent.com/113144317/207490173-e200c552-e00a-4672-b935-14405f830602.png)


![linux wikimedia 6](https://user-images.githubusercontent.com/113144317/207490278-8c277272-ca9b-4f84-a793-745c3c9e920d.png)


![linux wikimedia 5](https://user-images.githubusercontent.com/113144317/207490335-3b701ad6-35e6-4388-a3e5-46be899ae22c.png)



![linux wikimedia 4](https://user-images.githubusercontent.com/113144317/207490406-8c940151-0483-48ef-a805-7479a72739ac.png)



![linux wikimedia3](https://user-images.githubusercontent.com/113144317/207490458-9e52ec55-dc89-482e-853e-5ad483b2cab9.png)


![linux wikimedia2](https://user-images.githubusercontent.com/113144317/207490532-4e03441a-ebba-450f-b5b6-b473983c3f15.png)


![linux wikimedia 1](https://user-images.githubusercontent.com/113144317/207490566-23a4e1f0-1107-4b4b-9f97-0f9eb4e30b9e.png)
