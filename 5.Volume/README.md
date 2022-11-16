# Volume && Archive

:tada: [Participation](.scripts/Participation.md)

## Archive


Linux In Action: Chapitre 4

* Trouver un groupe de fichier (i.e. .sql) en utilisant l'utilitaire `find`

* en créer un fichier compressé avec l'utilitaire `tar` 

* copier le fichier sur votre serveur Linux `scp`

* décompresser le fichier sur le serveur linux


## sudo

- [ ] permettre l'acces sans mot de passe a SUDO  

```
sudo visudo
```

- [ ] Dans `nano` ou `vi` ajouter ce block a la fin du texte

:warning: remplacer `monnomdutilisateur` par votre utilisateur

```
# User privilege specification
monnomdutilisateur    ALL=(ALL) NOPASSWD:ALL
```

- [ ] [sudo-nopasswd](https://www.linuxfordevices.com/tutorials/linux/sudo-nopasswd)

## Volume Group et LVM

* Exercice creer son propre [`LVM`](lvm.md)

* [`Udev`](udev.md) crée ou enlève des noeuds de fichiers périphériques au démarrage en fonction du répertoire `/dev` pour tous types de périphériques


<img src=images/Whiteboard[1]-01.png width='' heigth='' > </img>

:o: Permissions

<img src=images/Whiteboard[3]-01.png width='' heigth='' > </img>

# References

- [ ] [Permissions](https://www.tutorialspoint.com/unix/unix-file-permission.htm)
