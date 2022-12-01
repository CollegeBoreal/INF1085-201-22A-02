# How to Install NextCloud on Ubuntu 22.04
## Step 1. Update the System
Before we install the NextCloud storage service we will update the system packages to the latest versions available.
```
sudo apt update -y
```
![unnamed (1)](https://user-images.githubusercontent.com/97314467/205064647-a8001fb4-a755-41ac-850c-67eafe27eb0c.jpg)
## step 2. Install Apache Web Server
Install the Apache Web server with the following command:
```
sudo apt install apache2
```
![IMG-6235](https://user-images.githubusercontent.com/97314467/205067036-be0cce6e-1a85-463a-99a7-fa8df690ca80.jpg)
![IMG-6236](https://user-images.githubusercontent.com/97314467/205067117-0d949f27-b2b0-4a51-840b-2bc932d46daf.jpg)
## Once installed, start and enable the service.
```
sudo systemctl enable apache2 && sudo systemctl start apache2
```
![unnamed](https://user-images.githubusercontent.com/97314467/205068164-17a0f872-89aa-4e10-b7d0-bd66743ee496.jpg)
## Check if the service is up and running:
```
sudo systemctl status apache2
```
![unnamed](https://user-images.githubusercontent.com/97314467/205069016-3debce39-ed74-4dc2-822d-93f4fc6802f4.jpg)
