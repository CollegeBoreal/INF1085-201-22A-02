# How to install Ubuntu Server 22.04 on Raaspberry Pi


## :one: First step to do is actually to flash Ubuntu server on an sd card and to do that we are going to use a software named raspberry pi imager and you can go to raspberri.com and download raspberry pi imager to get Ubuntu server as well


![Screenshot (3)](https://user-images.githubusercontent.com/96226008/201831715-dbdeca7f-5df2-4cda-8bb7-1e2a0e79ac96.png)


## :two: Make sure to choose and download Ubuntu Server 22.04 LTS  and at least the 1.7.3 version


![Screenshot (4)](https://user-images.githubusercontent.com/96226008/201832446-26a36bfc-e69b-4bba-adc1-1878395b2e5d.png)


## :three: After launching the application make sure to choose the proper OS and choose to mount it in the said storage


![20221115_002614](https://user-images.githubusercontent.com/96226008/201834220-2cb921a8-772e-4cf3-99e5-1c7f1ca2f929.jpg)


## :four: Before clicking on WRITE make sure to go in settings to click for specific configurations


## :five: Enable SSH ![Screenshot (5)](https://user-images.githubusercontent.com/96226008/201834665-47a73363-5a94-4394-bb87-7d3c50da5df5.png)


## Set username


![Screenshot (5)](https://user-images.githubusercontent.com/96226008/201834956-69c10792-88d0-465d-8168-4acf3092a9cf.png)


## :six: Set password


![Screenshot (7)](https://user-images.githubusercontent.com/96226008/201835340-f0b7a814-fce5-439f-a42f-f7628bcef7a6.png)


## :seven: Configure wifi


![Screenshot (9)](https://user-images.githubusercontent.com/96226008/201836047-ef57a9d9-da3e-4688-a8f2-3b8fca8fddf3.png)


## :eight: Choose Time Zone and keybord configuration


![Screenshot (10)](https://user-images.githubusercontent.com/96226008/201836289-81848dcb-1c78-4c77-8f32-4b8a029d1ac1.png)


## :nine: Click YES to continue


![20221115_004940](https://user-images.githubusercontent.com/96226008/201837517-ffe8b6ee-950a-49a5-be80-d82fb211b568.jpg)


## Job done please remove the SD card and get ready to insert it in the raspberry pi board


![20221115_005006](https://user-images.githubusercontent.com/96226008/201838090-d9f93a50-73f5-4da6-904e-447792ccd69a.jpg)


## Before inserting the sd card make sure it is powered OFF


![Screenshot (11)](https://user-images.githubusercontent.com/96226008/201844965-af0eedbd-ff22-425a-9bab-d80c00a48812.png)


## Then switch ON the power through a 120 volt outlet to have the power required


![Screenshot (12)](https://user-images.githubusercontent.com/96226008/201845655-fbc1ac8c-a0d5-487b-884b-58e9be46f9ca.png)


## After booting the Raspberry Pi you install Angry Ip Scanner to check for the IP of the Raspberry Pi 


![20221114_180357](https://user-images.githubusercontent.com/96226008/201846627-7a32e1c9-4e0e-480a-8049-b8199aa7ef02.jpg)


```

192.168.2.145

```


## After just open a terminal to get access on Ubuntu Server Pi 


![Screenshot (13)](https://user-images.githubusercontent.com/96226008/201848088-e336a055-c88e-4d70-af02-8a853ecff006.png)


## Type your user name and password


![Capture d’écran (1162)](https://user-images.githubusercontent.com/96226008/201851489-3f06bf00-0919-40ed-a26b-2234824b40db.png)


## Then update the package after done type upgrade also


![Screenshot (14)](https://user-images.githubusercontent.com/96226008/201851926-aac74ab2-4947-4f0c-897e-108362c938fa.png)


```
sudo apt update


```


![20221115_021457](https://user-images.githubusercontent.com/96226008/201854802-52a271d2-2b22-428f-99c1-0fb20ba11f75.jpg)


```

sudo apt upgrade

```
![20221115_021319](https://user-images.githubusercontent.com/96226008/201854957-732d86bf-e912-403c-aa09-9333ab73a3a0.jpg)


## Click OK


![20221115_021354](https://user-images.githubusercontent.com/96226008/201855051-b45f3912-0836-45b1-b2c0-af828c0536e4.jpg)


## Click OK


![20221115_021410](https://user-images.githubusercontent.com/96226008/201855142-304741dd-d3c6-4f3b-8ff2-4c17176714dc.jpg)


## CLICK TAB then OK


![20221115_023829](https://user-images.githubusercontent.com/96226008/201858539-72c5afdc-e637-4474-b789-59f3e9902044.jpg)


## Congratulations Ubuntu Server 22.04 LTS has been successfully installed


# Now let's figure out for the camera


![20221115_030537](https://user-images.githubusercontent.com/96226008/201864216-91050f09-9355-4fc0-b740-81c7b796326c.jpg)


- [] Make sure to turn off the Raspberry Pi and plug the camera module inside the camera port and make sure the blue part is facing the usb port


- [] On the Raspberry Pi go to menu/preferences/raspberry pi configuration


![20221114_192153](https://user-images.githubusercontent.com/96226008/201865230-b4155c4d-5d0d-488c-899b-83f1e6604a96.jpg)


- [] To enable the camera go on interfaces to enable everything and reboot


![20221114_192217](https://user-images.githubusercontent.com/96226008/201865642-05fb5e2e-aa77-4fe5-9568-e5333f08de55.jpg)


- [] Then go on terminal and type


![20221115_032051](https://user-images.githubusercontent.com/96226008/201867413-d74cb85f-9298-4cf3-ab36-e6faef6407e2.jpg)


```

sudo rpi-update

```

Then reboot to update the BIOS

```

reboot

```

- [] Go on terminal to update the camera module


![20221114_191322](https://user-images.githubusercontent.com/96226008/201868047-2d86268f-f954-4a7a-a9b8-4bfa2fb5033d.jpg)


```


sudo raspi-config


```


- [] It will take you to the console like this go to the third option interface options/legacy camera/click on enable



![20221114_191359](https://user-images.githubusercontent.com/96226008/201868844-796b37c5-bca7-4c9d-be35-8cdd2c737fa7.jpg)



![20221114_191423](https://user-images.githubusercontent.com/96226008/201868880-e3a5158b-c744-4d4b-b97f-cd0fadc4b9a7.jpg)



![20221114_191442](https://user-images.githubusercontent.com/96226008/201868915-2624de98-7f8f-4f7e-8560-db6932f91428.jpg)


- [] Go on terminal type


```

libcamera-still


```


- [] Then type


```


sudo nano /boot/config.text


```



![20221113_235655](https://user-images.githubusercontent.com/96226008/201870124-fe8d370d-2746-414a-9519-8c37fa8bc65a.jpg)



- [] Then execute



![20221115_034207](https://user-images.githubusercontent.com/96226008/201872170-4f23889a-fcb4-4ed1-a4fe-374fb6a0a830.jpg)



-[] Put start_=1 in comment and put a # in the begining of camera_auto_detect=1



![20221114_000106](https://user-images.githubusercontent.com/96226008/201873076-c8fddfc3-2538-4695-9e4c-7a7c7a23d885.jpg)



- [] Increase the gpu to 256 then save ctrl x then y then press enter and reboot



- [] go back on terminal type


```


sudo libcamera-hello


```


```


sudo libcamera-jpeg -o test-jpeg


```


![20221114_002236](https://user-images.githubusercontent.com/96226008/201874597-b6b451e7-513c-47b6-ab85-1f814cbf868b.jpg)



![20221114_192616](https://user-images.githubusercontent.com/96226008/201874772-94a10d10-7267-442e-96cc-1e7b68ebacf9.jpg)



- [] To make video go on terminal type


```


sudo raspi-config


```


- [] It will take you to the console like this go to the third option interface options/legacy camera/click on disable


```

reboot

```

- [] Go on terminal type


```

raspivid -o testvideo.h264 -t 10000

```


![20221114_021815](https://user-images.githubusercontent.com/96226008/201878869-adbfab70-5fc9-4194-a587-6dbb8587cd75.jpg)




https://user-images.githubusercontent.com/96226008/201878930-cc81666a-cc2b-483e-a1a3-c30097abae31.mp4


# Congratulations you did it again  !!!
