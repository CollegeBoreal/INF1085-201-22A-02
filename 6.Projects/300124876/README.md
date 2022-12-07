HOW TO SECURE YOUR WEB SERVER
No matter what web server you have, it has to be well secured.
For linux web server there are many tools for security
1-Securing your infrastructure by doing all the update (basics):

--sudo apt update

--sudo apt upgrade

<img width="1440" alt="Capture d’écran, le 2022-12-06 à 16 41 31" src="https://user-images.githubusercontent.com/98238582/206032720-edaa1823-0da1-4d5b-bb19-ca11ab2bc8cc.png">
<img width="1440" alt="Capture d’écran, le 2022-12-06 à 16 41 55" src="https://user-images.githubusercontent.com/98238582/206032789-518f9c41-640b-4bee-bb60-8a05aa823f65.png">

2- Using a firewall 
we are going to see ufw utilities
Enabling ufw first

<img width="1440" alt="1" src="https://user-images.githubusercontent.com/98238582/206087388-51e84c29-93b6-4872-bfa8-b243314dcfad.png">
Blocking ALL incoming and outgoing traffic to tour server by two commands

--sudo ufw default deny outgoing

--sudo ufw default deny incoming

We test this by opening an other tap and try accessing to the server
<img width="1440" alt="2" src="https://user-images.githubusercontent.com/98238582/206087820-631e4c3c-4d6f-4a78-aac3-c9f87a9e8134.png">
access denied as expected
Now what we are going to re open the access by tapping:

--sudo ufw allow ssh

now we should be able to access to the server from the other tab
<img width="1440" alt="3" src="https://user-images.githubusercontent.com/98238582/206088120-5365e3b5-23ea-461f-9567-8777179d7b5b.png">

Blocking any access except for a client from our choice

--sudo ufw allow from adresse-client to any port 22

<img width="1440" alt="5" src="https://user-images.githubusercontent.com/98238582/206305646-63021e34-4863-428a-ac48-6e586be2bf69.png">

