                         #### Comment Installer MediaWiki sur Umbutu




```
I- Définition Médiawiki:
```

Le terme média désigne tout moyen de distribution, de diffusion ou de communication interpersonnelle, de masse ou de groupe, d'œuvres, de documents, ou de messages écrits, visuels, sonores ou audiovisuels (comme la radio, la télévision, le cinéma, Internet, la presse, les télécommunications, etc.) Ce terme est souvent utilisé comme l'abréviation du terme anglais mass-media ou médias de masse en français.





II-  Les Etape de l'installation:




```
sudo apt -y install apache2
```

![sudo apt -y install apache2](https://user-images.githubusercontent.com/113144317/207778830-38891d00-ba32-40e4-9fc0-0070b14e7e60.png)




```
sudo sed -i "s/Options Indexes FollowSymLinks/Options FollowSymLinks/" /etc/apache2/apache2.conf
```

![2 eme commande](https://user-images.githubusercontent.com/113144317/207778741-ae329332-ea30-48e0-a017-0c4b0ca66e0e.png)




```
sudo systemctl restart apache2.service && sudo systemctl enable apache2.service
```

![3 eme commande](https://user-images.githubusercontent.com/113144317/207779001-86964180-0f18-4f7e-bcdb-5fa48aaa53cf.png)



```
sudo apt install mariadb-server mariadb-client
```


![4 eme commande](https://user-images.githubusercontent.com/113144317/207779136-432ea6ae-934f-408a-b839-2924f68fadb4.png)


```
sudo systemctl restart mariadb.service && sudo systemctl enable mariadb.service
```


![5 eme commande](https://user-images.githubusercontent.com/113144317/207780181-1532d886-b4f4-46d3-94da-e73845a78719.png)



```
sudo mysql_secure_installation
```


![6 eme commande](https://user-images.githubusercontent.com/113144317/207780261-08d4c084-8895-4982-8278-2ac91a8e8c61.png)



```
sudo systemctl restart mariadb.service
```


![7 eme commande](https://user-images.githubusercontent.com/113144317/207780519-ea7e75ed-93cf-4803-8cd5-ba3ac0e2fa25.png)




```
sudo apt install php php-common php-mbstring php-xmlrpc php-soap php-gd php-xml php-intl php-mysql php-cli php-ldap php-zip php-curl
```


![8 eme commande](https://user-images.githubusercontent.com/113144317/207780692-89293a83-f74e-482d-bfff-4b1f1e9d9b31.png)



```
sudo vim /etc/php/7.2/apache2/php.ini
```


![9 eme commande](https://user-images.githubusercontent.com/113144317/207780813-2c59e182-a1b6-4d2b-86e9-20a662995b83.png)


```
sudo mysql -u root -p
```


![10 eme commande](https://user-images.githubusercontent.com/113144317/207781049-c4198ebd-7b72-4483-9d81-768128e11f0a.png)



```
CREATE DATABASE mediawiki;
```

![11 eme commande](https://user-images.githubusercontent.com/113144317/207781175-9d91ebfc-ed82-4919-b2d8-4a77e951a76b.png)


```
CREATE USER 'mwadmin'@'localhost' IDENTIFIED BY 'enterYourPassword';
```

![12 eme commande](https://user-images.githubusercontent.com/113144317/207781345-998b888d-68b7-4e0a-9507-fbf3d19a82ed.png)


```
GRANT ALL ON mediawiki.* TO 'mwadmin'@'localhost' IDENTIFIED BY 'YourPassword' WITH GRANT OPTION;
```


![13 eme commande](https://user-images.githubusercontent.com/113144317/207781484-6aaf4c3c-f259-4164-ae48-ddec78f2ee6d.png)


```
FLUSH PRIVILEGES;
EXIT;
```

![14 eme commande](https://user-images.githubusercontent.com/113144317/207781649-556d040f-9b09-4ee5-b629-0714b136fe8e.png)


```
cd /tmp && wget https://releases.wikimedia.org/mediawiki/1.34/mediawiki-core-1.34.0.tar.gz
```

![15 eme commande](https://user-images.githubusercontent.com/113144317/207781853-75950bd9-7c2a-4f9b-a421-77d0d30f7c7e.png)


```
sudo mkdir -p /var/www/html/mediawiki
sudo tar -zxvf mediawiki*.tar.gz
sudo mv mediawiki-1.34.0/* /var/www/html/mediawiki
```


![16 eme commande](https://user-images.githubusercontent.com/113144317/207781957-5b882d9b-5723-4466-8591-17a081c7a14c.png)


```
sudo chown -R www-data:www-data /var/www/html/mediawiki/ && sudo chmod -R 755 /var/www/html/mediawiki/
```


![17 eme commande](https://user-images.githubusercontent.com/113144317/207782156-9f68470c-aae4-4665-9c9d-c03ff516e3db.png)



```
sudo vim /etc/apache2/sites-available/mediawiki.conf
```


![18 eme commande](https://user-images.githubusercontent.com/113144317/207782308-30215812-83d9-47d7-b8f1-c8b812d59366.png)



```
sudo a2dissite 000-default.conf
sudo a2ensite mediawiki.conf
sudo a2enmod rewrite
```


![19 eme commande](https://user-images.githubusercontent.com/113144317/207782478-96a40406-5891-4175-bbf4-c27bcb1236b2.png)


```
sudo systemctl restart apache2.service
```


![21 eme commande](https://user-images.githubusercontent.com/113144317/207782657-3dccff37-fdfa-4c14-90a7-40e527f43960.png)


```
#### Photo d'installation de Mediawiki
```


![photo mediawiki1](https://user-images.githubusercontent.com/113144317/207782877-40f6d0df-7bfb-4a2d-bfc1-5cf3de5e63ab.png)




![photo media wiki 2](https://user-images.githubusercontent.com/113144317/207782941-837643c4-4239-45c1-8839-54e06c313d7d.png)




![photo mediawiki 3](https://user-images.githubusercontent.com/113144317/207782986-e5c3804a-0251-4a6d-87a6-be6e1cef1a40.png)




![photo mediawiki4](https://user-images.githubusercontent.com/113144317/207783043-50fe763c-b85b-42a8-91cd-c4b82f80252c.png)




![photo mediawiki5](https://user-images.githubusercontent.com/113144317/207783090-ce968db6-a287-4d1f-87f8-ef95a290fedb.png)




![photo media wiki install](https://user-images.githubusercontent.com/113144317/207783152-13f47a5d-8f93-4c1a-b1c4-c3b33b362519.png)


