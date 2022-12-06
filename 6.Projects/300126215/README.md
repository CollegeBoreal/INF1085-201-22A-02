



## :a: Installer les `packages` pour le VPN

- [ ] ajouter le package openvpn (server)
You need to install OpenVPN and cURL programs:

sudo apt install openvpn curl

![Capture6](https://user-images.githubusercontent.com/97623907/205793636-72fcde06-3eab-42fc-ba40-50ef21c49a76.PNG)

 cURL is needed to download the VPN installation script openvpn-install.sh. This script makes the installation very easy and error save. You can, of course, install everything manually, and there are good instructions on how to do that on Debian Wiki or Arch Linux Wiki. 

So, you need to download the script and make it executable:

curl -O https://raw.githubusercontent.com/Angristan/openvpn-install/master/openvpn-install.sh
chmod +x openvpn-install.sh

![Capture4](https://user-images.githubusercontent.com/97623907/205794161-4ebf7965-5fb4-4702-a262-325b50003ba0.PNG)
 
  you need to follow the assistant and answer a few questions. You can keep everything by default, just press Enter for every question. Only give a name to your VPN configuration and I also recommend encrypting the configuration with a password:
 
 ![Capture6](https://user-images.githubusercontent.com/97623907/205794351-d841d195-475a-423a-a137-5b323659fd74.PNG)

![Capture 7](https://user-images.githubusercontent.com/97623907/205794429-3fffec97-4259-4841-8356-23bd0061aaf9.PNG)


![Capture 8](https://user-images.githubusercontent.com/97623907/205794563-9b7bf68f-f908-4ee7-9484-4a5e9aa38709.PNG)

 When everything is done. You should see a file that ends with .ovpn. This is a configuration file you will need to configure the client computer. 
![10](https://user-images.githubusercontent.com/97623907/205794706-3b8f03f1-5104-4100-bfd6-97b1b6c3f7dc.PNG)

 sudo apt install openvpn networkmanager-openvpn-gnome
![Capture 11](https://user-images.githubusercontent.com/97623907/205794828-21ee2f02-38f0-46ab-a68f-e19813a1cb8a.PNG)

 Next, download the VPN configuration file from your server:
scp zack@10.13.237.39:/home/zack/zack.ovpn ~/Downloads/

![Capture 8](https://user-images.githubusercontent.com/97623907/205804955-0c33a596-2688-4e53-8183-d309e1ece3ab.PNG)

Connect to a VPN

sudo cp Downloads/*.ovpn /etc/openvpn/client/client.conf
Test the connection:

sudo openvpn /etc/openvpn/client/client.conf

to test it, open your internet browser and visit any website. You can also check your public IP address and it should be your server address.
![Capture 12](https://user-images.githubusercontent.com/97623907/205795521-bbc8e932-7bb5-430d-840a-64b75692f607.PNG)

So, to add your VPN configuration to the Network Manager, open the Network Manager settings. Click on Add new connection, and import the configuration file you have downloaded from the server:

![image](https://user-images.githubusercontent.com/97623907/205796459-be408cf1-c2e3-43b1-8758-20090335f97b.png)

 
