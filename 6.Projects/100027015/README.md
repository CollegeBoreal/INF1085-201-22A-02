## NextCloud
Connecting to your Server
![image](https://user-images.githubusercontent.com/97314874/207248997-97bf7613-0842-46fc-8231-05f9a54cbd34.png)
```
### Ensuite télécharger la version du OS voulu sur ce lien:
```
![image](https://user-images.githubusercontent.com/97314874/207250758-ddf60e01-04b8-42c9-98f8-4229189e9758.png)
```
### Avec Raspberry Pi Imager installer votre systeme sur la carte micro SD

![raspberry imager-](https://user-images.githubusercontent.com/94937166/201798922-fcd07dc3-8e36-4488-bf0f-b6a7610868c4.jpg)

### Après le démarrage et l'installation redemarrer votre Raspberry Pi
![20221113_170601](https://user-images.githubusercontent.com/94937166/201800605-1b71da08-59c0-4b0c-8b96-835b406cf625.jpg)
### verifier que la camera usb est bien installée avec la commande suivante:
```
lsusb
```
### Lancer le terminal pour l'installation de FSWEBCAM avec la commande suivante:

![20221113_175024](https://user-images.githubusercontent.com/94937166/201801252-dcf56b0b-b594-44c4-bd70-36b3553eae4a.jpg)

### On va tester la camera avec la commande suivante:
```
fswebcam -r 1280*720 --no-banner /home/mb/Desktop/img2.jpg
```
#### Resultat:
![img2](https://user-images.githubusercontent.com/94937166/201802182-568cf39e-1808-4237-83b9-253cb7de0e13.jpg)
### 1️⃣ On va maintenant créer un script Bash. Mais avant on va créer un dossier usb_camera
```
mkdir usb_camera
```
### pour creer le script , il faut ouvrir un editeur de text et entrer le code suivant:
```
#!/bin/bash

DATE=$(date +"%Y-%m-%d_%H%M%S")

fswebcam -r 1280x720 --no-banner /home/mb/usb_camera/$DATE.jpg
```
#### Avec ce script on aura une image datée. Enregistrer le script img.sh 
#### Pour rendre le scrip executable faire la commande suivante:
```
chmod +x img.sh
```
### Executer le code avec la commande suivante:
```
./img.sh
```
### 2️⃣ On va créer des programmes Python pour utiliser la camera
#### Avant tout il faut installer opencv et numpy et des modules necessaires avec les commandes:
```
sudo apt-get install python3-opencv
```
```
sudo apt-get install python3-dev python3-numpy
```
```
sudo apt-get install libgtk-3-dev
```
```
sudo apt-get install libpng-dev
sudo apt-get install libjpeg-dev
sudo apt-get install libopenexr-dev
sudo apt-get install libtiff-dev
sudo apt-get install libwebp-dev
```
#### 2️⃣.1️⃣ Afficher la camera avec le programme capture.py
```
import cv2

capture = cv2.VideoCapture(0)
if capture.isOpened() is False:
  raise IOError

while(True):
  try:
    ret, frame = capture.read()
    if ret is False:
      raise IOError
    cv2.imshow('frame',frame)
    cv2.waitKey(1)
  except KeyboardInterrupt:
    # Pour quitter  CTRL+C
    break

capture.release()
cv2.destroyAllWindows()
```
#### 2️⃣.2️⃣ Enregistrer une image avec le programme save_img.py
```
import cv2
cap = cv2.VideoCapture(0)
while True:
    ret, frame = cap.read()
    cv2.imshow('frame', frame)
    key = cv2.waitKey(1) & 0xFF
    if key == ord('q'):
        break
    elif key == ord('c'):
        cv2.imwrite('/home/mb/usb_camera/image.jpg', frame)
cv2.destroyAllWindows()
cap.release()
```
#### 2️⃣.3️⃣ Enregistrer une video avec le programme save_video.py
```
import cv2
cap = cv2.VideoCapture(0)
fourcc = cv2.VideoWriter_fourcc('m', 'p', '4', 'v')
fps = cap.get(cv2.CAP_PROP_FPS)
size = (int(cap.get(cv2.CAP_PROP_FRAME_WIDTH)),int(cap.get(cv2.CAP_PROP_FRAME_HEIGHT)))
video = cv2.VideoWriter('/home/mb/usb_camera/video.mp4', fourcc, fps, size)
while True:
    ret, frame = cap.read()
    video.write(frame)
    cv2.imshow('frame', frame)
    key = cv2.waitKey(1) & 0xFF
    if key == ord('q'):
        break
cv2.destroyAllWindows()
video.release()
cap.release()
```
