
|"1"| Je telecharge le "Raspberrypi OS Imager sur le site officiel de Raspberrypi "raspberripi.com" 
![20221127_181809](https://user-images.githubusercontent.com/105458655/204606712-7637b938-9a16-4ca8-be6b-01a1ec20d66a.jpg)

Maintenant dependant de votre OS vous choisissez celui adequant, pour moi c'est Windows donc je clique sur windows.
![20221127_181818](https://user-images.githubusercontent.com/105458655/204607807-a3f83dd3-7e8a-4060-becd-1bc38e66774b.jpg)

Apres le telechargement de l'image vous l'ovrez sur votre ordinateur et vous choisissez l'option sur l'image ci-dessous.
![20221127_183632](https://user-images.githubusercontent.com/105458655/204624419-f84e5f75-80e5-4182-a577-b95710d98575.jpg)

Apres avoir cliquez, vous choisissez le OS ubuntu et la vous prenez la version la plus recente.
![20221127_183701](https://user-images.githubusercontent.com/105458655/204624277-dfc37aff-03c1-4536-a60d-3ae2591d4c59.jpg)

Maintenant avant de lancer le write vous cliquez sur l'icone parametre sur le imager pour configurer les parametre du OS: vous cochez la case SSH, vous choisissez un nom et un mot de passe pour le login et verifier bien que la wifi a laquelle vous etes connecter et bien celle qui s'affiche sur l'imager quand cela est important pour la suite. 

![20221129_143400](https://user-images.githubusercontent.com/105458655/204630869-8414dd2a-a5fd-4c51-a2de-1e566bf3df8a.jpg)
![20221129_143429](https://user-images.githubusercontent.com/105458655/204631052-406bab94-bdc8-4be5-87f9-e42795caa090.jpg)
![20221129_143726](https://user-images.githubusercontent.com/105458655/204631124-0554c362-8422-4a18-b2ad-a90a87263fca.jpg)


Des que le chargement se fais sur votre Sd card vous pouvez l'inserer dans votre raspberryPi et le demarer. 

Suivant cette etape nous allons faire la connexion ssh pour que vous puissiez vous connecter sur le RaspberriyPi de votre ordianteur. 

Vous pouvez telechanger le logiciel Angry IP sacnner gratuitement cela vous permettra de scanner l'adresse IP du PaspberryPi pour vous permettre de faire la connexion via SSH. 
![20221129_145058](https://user-images.githubusercontent.com/105458655/204633267-1b663484-c871-4a05-8336-133cad7e42d8.jpg)
Vous cliquez sur IP et vous verez une serie d'adresse s'afficher. Vous choissez l'adresse qui est rattacher au RaspberryPi ensuite vous ouvrez votre CMD et vous entrer la commande suivante.
Biensur vous remplacez l'adresse IP par celle qui s'affichera pour vous.
![20221127_193108](https://user-images.githubusercontent.com/105458655/204633730-2b875f7e-aa79-446c-9a2b-bf539b1bc970.jpg)

Voila! Bravo! vous etes connecter a votre RaspberryPi, Miantenant vous rentrer la commande suivante pour mettre a jour les packages pour completer l'installation.
![20221127_193252](https://user-images.githubusercontent.com/105458655/204635040-89668dfe-8b96-4b43-ac36-1b0f745ba54f.jpg)

Apres que la ai ete executer vous taperez une autre commande cette fois ci vous metterez la commande 
```
sudo apt upgrade
```
pour upgrade les packages qui doivent l'etre.

Maintenant nous pouvous commencer avec l'untilisation de notre Webcam. 

Dans un premier temps vous connectez votre Webcam ou votre Camera RaspberryPi dans ce projet j'utilise une Webcam. 

Vous pouvez utiliser l'outil FSWEBCAM qui est un outil asser leger a utiliser.
![20221203_150827](https://user-images.githubusercontent.com/105458655/205460271-71b2c3ae-99e0-43d7-ae28-ac3f9d2fc66e.jpg)

Cette etape n'est pas necessaire mais pour sassurer que le user Pi est access a la webcam on ajoute le suer pi au video group grave a cette commande ci-dessous
Il y a aussi une autre commande sur la photo ci-dessous qui vous permet de voir les differentes resolution et la qualite d'image de la webcam vou pouvez egalement utiliser la commande suivante.
![20221127_224936](https://user-images.githubusercontent.com/105458655/205460537-ccd502da-24ca-41a7-aa28-36b8360605f3.jpg)

Maintenant pour s'assurer que la webcam est reconnu vous pouvez utiliser la commande 
```
Lsusb
```
![20221127_232034](https://user-images.githubusercontent.com/105458655/205460716-1402f9d8-437d-41a0-9346-da75d880220d.jpg)

Maintenant nous allons tester un prenant une photo en utilisant la commande suivante: 
```
fswebcam -r 1920x1080 test.jpg
```
![20221127_225635](https://user-images.githubusercontent.com/105458655/205460829-fa9371f9-5672-47d9-b22d-073949d81fd6.jpg)
Desole je n'etait pas pres pour la photo
![20221203_153419](https://user-images.githubusercontent.com/105458655/205460950-a417e3aa-9e18-4484-8a99-c1580c29c124.jpg)

Maintenant pour rendre cela plus interessant j'ai cree un docier webcampics pour stocker les photos
![20221127_230158](https://user-images.githubusercontent.com/105458655/205461023-6218738e-b429-432e-b26b-63deb054b153.jpg)

Je cree un fichier bash dans lequel je vais mettre le code suivant et par la suite je n'aurai qu'a executer le fichier bash pour que la photo soit prise en fonction des configuration du code et ils seront placer dans on docier webcampics.

![20221127_230800](https://user-images.githubusercontent.com/105458655/205461308-2c3b37eb-c3be-4b33-91a4-aa0811e2d611.jpg)

le code
![20221127_230649](https://user-images.githubusercontent.com/105458655/205461333-953a505d-d74b-476a-8c6a-cd8808459981.jpg)

La photo se ranche dans le docier avec la date et l'heure a laquelle elle a ete prise:
![20221203_155050](https://user-images.githubusercontent.com/105458655/205461640-10c0c790-3bd9-43b0-9e2c-95f6c238ed3f.jpg)
![20221203_155059](https://user-images.githubusercontent.com/105458655/205461648-b986a79d-9856-41bb-8ad9-4e5a862d6ee4.jpg)
La j'etais pret:
![20221203_155138](https://user-images.githubusercontent.com/105458655/205461695-eb498080-cba6-4caa-a218-64449a5f27d3.jpg)

Voila sa c'etait pour les photos!

Maintenant j'ai egalement fait un live motion.

Je commence par installer l'outil motion entranmt la commande : 
```
sudo apt-get install motion
```
![20221127_231936](https://user-images.githubusercontent.com/105458655/205462993-9ff3cae9-494e-4472-b05f-6c46d0efad44.jpg)

Maintenant pour acceder aux configurations de l'outil motion je rentre la commande:  
```
sudo nano /etc/motion/motion.conf  cela me menera a la page suivante:
```
![20221127_232730](https://user-images.githubusercontent.com/105458655/205463178-df445180-685b-4528-971b-c5b80378cadd.jpg)

Sur cette page vous aurez certaine configuration a faire mais pour plus d'infoamtion vous pouvez cliquez sur le lien si-dessous et elle vous amenera a une video avec toute les etapes a suivre: https://www.youtube.com/watch?v=BeyBu-Mzeq4&t=305s 

Tres important comme mis sur la photo ci-dessus de mettre le port 8080 qui est le port http pour la connexion a la camera sur internet. 

![20221203_151348](https://user-images.githubusercontent.com/105458655/205463264-adb99b5d-8944-4ded-ac25-6338d71f463e.jpg)



























