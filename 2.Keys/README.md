# 2 Keys

:one: Authoriser l'acces à sa machine au professeur

* Connectez vous à votre machine avec `git bash` ou `putty`

```
$ ssh monID@monAdresseIP
```

* Ouvrir le fichier d'authorisation de clés publiques suivant avec Nano 

:warning: si le répertoire `~/.ssh` n'existe pas, veuillez le créer

```
$ nano ~/.ssh/authorized_keys
```

* copier la clé publique ci-dessous dans une nouvelle ligne 

(attention copier la clé tel quel sans espace ou autre charactere, i.e. la clé est longue)

```
ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQD2pLhMqFGKffSdYvNCMAyM7598oBY+m/3q5AMXmb7IE6vq42+yGzqEUzZu9WrFckFD4Hq52rIU5DeOvi83DCF3uroXjNTEtCKdi+tY7cV18bHmsDsBHMqTnpuvroofgFWA0Pi++b2kGW2I5eyy1Qjv5rOp7y11Xe6XeZFEz7qQO1/xNiBMJEruG9Xldgooe4hkaOF39qnbqD4ui3LxYaTUTEulstw4wN70dSB8Zu9YQP7A7KU2zIEwJ1aw8whfO1CAM/AVvoDyqMtV8VXoaZSHOBgluMtinQfyyt473S2ZZeJlnmhK0F1gdOhO4SVZNRMj96m30ryYkYBFWvvLRP5N b300098957@ramena
```

## Identifiant

:two: Renseigner son utilisateur dans le tableau ci-dessous (i.e. MONUSER@10.13.237.126 => brice@10.13.237.126)

:hash:| Boréal :id:                | Interne            | ssh | Docker Engine |
|------|----------------------------|--------------------|-----|---------------|
| 0 | 100027015 - <image src='https://avatars.githubusercontent.com/u/97314874?s=460&v=4' width=20 height=20></image> | `ssh ubuntu@10.13.237.00` | :x: | :x: |
| 1 | 100028762 - <image src='https://avatars.githubusercontent.com/u/96226008?s=460&v=4' width=20 height=20></image> | `ssh madmax@10.13.237.29` | :x: | :x: |
| 2 | 300119623 - <image src='https://avatars.githubusercontent.com/u/97314467?s=460&v=4' width=20 height=20></image> | `ssh ubuntu@10.13.237.00` | :x: | :x: |
| 3 | 300120726 - <image src='https://avatars.githubusercontent.com/u/105461057?s=460&v=4' width=20 height=20></image> | `ssh ubuntu@10.13.237.00` | :x: | :x: |
| 4 | 300123679 - <image src='https://avatars.githubusercontent.com/u/105458655?s=460&v=4' width=20 height=20></image> | `ssh ubuntu@10.13.237.00` | :x: | :x: |
| 5 | 300124074 - <image src='https://avatars.githubusercontent.com/u/97147101?s=460&v=4' width=20 height=20></image> | `ssh ubuntu@10.13.237.00` | :x: | :x: |
| 6 | 300124734 - <image src='https://avatars.githubusercontent.com/u/94937145?s=460&v=4' width=20 height=20></image> | `ssh ubuntu@10.13.237.00` | :x: | :x: |
| 7 | 300124863 - <image src='https://avatars.githubusercontent.com/u/97644305?s=460&v=4' width=20 height=20></image> | `ssh ubuntu@10.13.237.00` | :x: | :x: |
| 8 | 300124876 - <image src='https://avatars.githubusercontent.com/u/98238582?s=460&v=4' width=20 height=20></image> | `ssh ubuntu@10.13.237.00` | :x: | :x: |
| 9 | 300125847 - <image src='https://avatars.githubusercontent.com/u/97644650?s=460&v=4' width=20 height=20></image> | `ssh ubuntu@10.13.237.00` | :x: | :x: |
| 10 | 300126020 - <image src='https://avatars.githubusercontent.com/u/97989532?s=460&v=4' width=20 height=20></image> | `ssh ubuntu@10.13.237.00` | :x: | :x: |
| 11 | 300126215 - <image src='https://avatars.githubusercontent.com/u/97623907?s=460&v=4' width=20 height=20></image> | `ssh ubuntu@10.13.237.00` | :x: | :x: |
| 12 | 300126268 - <image src='https://avatars.githubusercontent.com/u/97314948?s=460&v=4' width=20 height=20></image> | `ssh ubuntu@10.13.237.00` | :x: | :x: |
| 13 | 300126634 - <image src='https://avatars.githubusercontent.com/u/97324827?s=460&v=4' width=20 height=20></image> | `ssh ubuntu@10.13.237.00` | :x: | :x: |
| 14 | 300126800 - <image src='https://avatars.githubusercontent.com/u/105135304?s=460&v=4' width=20 height=20></image> | `ssh ubuntu@10.13.237.00` | :x: | :x: |
| 15 | 300126966 - <image src='https://avatars.githubusercontent.com/u/94937166?s=460&v=4' width=20 height=20></image> | `ssh ubuntu@10.13.237.31` | :x: | :x: |
| 16 | 300127065 - <image src='https://avatars.githubusercontent.com/u/97314712?s=460&v=4' width=20 height=20></image> | `ssh ubuntu@10.13.237.00` | :x: | :x: |
| 17 | 300127290 - <image src='https://avatars.githubusercontent.com/u/105463700?s=460&v=4' width=20 height=20></image> | `ssh ubuntu@10.13.237.00` | :x: | :x: |
| 18 | 300127868 - <image src='https://avatars.githubusercontent.com/u/113466237?s=460&v=4' width=20 height=20></image> | `ssh ubuntu@10.13.237.00` | :x: | :x: |
| 19 | 300127921 - <image src='https://avatars.githubusercontent.com/u/106841177?s=460&v=4' width=20 height=20></image> | `ssh ubuntu@10.13.237.00` | :x: | :x: |
| 20 | 300128276 - <image src='https://avatars.githubusercontent.com/u/113144317?s=460&v=4' width=20 height=20></image> | `ssh ubuntu@10.13.237.00` | :x: | :x: |
| 21 | 300128326 - <image src='https://avatars.githubusercontent.com/u/105472970?s=460&v=4' width=20 height=20></image> | `ssh ubuntu@10.13.237.00` | :x: | :x: |
| 22 | 300128566 - <image src='https://avatars.githubusercontent.com/u/101542761?s=460&v=4' width=20 height=20></image> | `ssh ubuntu@10.13.237.00` | :x: | :x: |
| 23 | 300128694 - <image src='https://avatars.githubusercontent.com/u/105947276?s=460&v=4' width=20 height=20></image> | `ssh ubuntu@10.13.237.00` | :x: | :x: |### [:tada: Participation](.scripts/Participation.md)

:three: Installer Docker Engine sur sa machine Linux

- [ ] Suivre le tutoriel suivant

[Installation de Docker Engine](https://github.com/CollegeBoreal/Tutoriels/tree/main/2.MicroServices/1.Containers/2.Docker/1.Engine/2.Linux)

- [ ] Vérifier que `Docker Engine` est installé sur sa machine

:m: en lançant la commande `docker container`

```
$ docker container ls
```

:m: en vérifiant que le service `docker engine` tourne

```
$ systemctl status docker
● docker.service - Docker Application Container Engine
   Loaded: loaded (/lib/systemd/system/docker.service; enabled; vendor preset: enabled)
   Active: active (running) since Tue 2019-10-08 17:23:47 UTC; 1 day 23h ago
     Docs: https://docs.docker.com
 Main PID: 24174 (dockerd)
    Tasks: 26
   CGroup: /system.slice/docker.service
           └─24174 /usr/bin/dockerd -H fd:// --containerd=/run/containerd/containerd.sock

Oct 08 17:23:44 300098957 dockerd[24174]: time="2019-10-08T17:23:44.382151023Z" level=warning msg="Your kernel does not support swap memory limit"
Oct 08 17:23:44 300098957 dockerd[24174]: time="2019-10-08T17:23:44.382179791Z" level=warning msg="Your kernel does not support cgroup rt period"
Oct 08 17:23:44 300098957 dockerd[24174]: time="2019-10-08T17:23:44.382190586Z" level=warning msg="Your kernel does not support cgroup rt runtime"
Oct 08 17:23:44 300098957 dockerd[24174]: time="2019-10-08T17:23:44.382361631Z" level=info msg="Loading containers: start."
Oct 08 17:23:45 300098957 dockerd[24174]: time="2019-10-08T17:23:45.084064004Z" level=info msg="Default bridge (docker0) is assigned with an IP address 172.17.0.0/16. Daemon 
Oct 08 17:23:45 300098957 dockerd[24174]: time="2019-10-08T17:23:45.412643470Z" level=info msg="Loading containers: done."
Oct 08 17:23:46 300098957 dockerd[24174]: time="2019-10-08T17:23:46.830608514Z" level=info msg="Docker daemon" commit=6a30dfc graphdriver(s)=overlay2 version=19.03.2
Oct 08 17:23:46 300098957 dockerd[24174]: time="2019-10-08T17:23:46.830955345Z" level=info msg="Daemon has completed initialization"
Oct 08 17:23:47 300098957 dockerd[24174]: time="2019-10-08T17:23:47.022365319Z" level=info msg="API listen on /var/run/docker.sock"
Oct 08 17:23:47 300098957 systemd[1]: Started Docker Application Container Engine.
```

