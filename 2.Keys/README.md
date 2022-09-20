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

|:hash:| :id:      | Interne                 | ssh              | Unit :hash: |
|------|-----------|-------------------------|------------------|-------------|
| 0 | [100028762](100028762/README.md) - <image src='https://avatars0.githubusercontent.com/u/96226008?s=460&v=4' width=20 height=20></image> | :heavy_check_mark: | 
| 1 | [300119623](300119623/README.md) - <image src='https://avatars0.githubusercontent.com/u/97314467?s=460&v=4' width=20 height=20></image> | :heavy_check_mark: |
| 2 | [300120726](300120726/README.md) - <image src='https://avatars0.githubusercontent.com/u/105461057?s=460&v=4' width=20 height=20></image> | :heavy_check_mark: |
| 3 | [300123679](300123679/README.md) - <image src='https://avatars0.githubusercontent.com/u/105458655?s=460&v=4' width=20 height=20></image> | :heavy_check_mark: |
| 4 | [300124074](300124074/README.md) - <image src='https://avatars0.githubusercontent.com/u/97147101?s=460&v=4' width=20 height=20></image> | :heavy_check_mark: |
| 5 | [300124734](300124734/README.md) - <image src='https://avatars0.githubusercontent.com/u/94937145?s=460&v=4' width=20 height=20></image> | :heavy_check_mark: |
| 6 | [300124863](300124863/README.md) - <image src='https://avatars0.githubusercontent.com/u/97644305?s=460&v=4' width=20 height=20></image> | :heavy_check_mark: |
| 7 | [300124876](300124876/README.md) - <image src='https://avatars0.githubusercontent.com/u/98238582?s=460&v=4' width=20 height=20></image> | :heavy_check_mark: |
| 8 | [300125847](300125847/README.md) - <image src='https://avatars0.githubusercontent.com/u/97644650?s=460&v=4' width=20 height=20></image> | :heavy_check_mark: |
| 9 | [300126020](300126020/README.md) - <image src='https://avatars0.githubusercontent.com/u/97989532?s=460&v=4' width=20 height=20></image> | :heavy_check_mark: |
| 10 | [300126215](300126215/README.md) - <image src='https://avatars0.githubusercontent.com/u/97623907?s=460&v=4' width=20 height=20></image> | :heavy_check_mark: |
| 11 | [300126268](300126268/README.md) - <image src='https://avatars0.githubusercontent.com/u/97314948?s=460&v=4' width=20 height=20></image> | :heavy_check_mark: |
| 12 | [300126634](300126634/README.md) - <image src='https://avatars0.githubusercontent.com/u/97324827?s=460&v=4' width=20 height=20></image> | :heavy_check_mark: |
| 13 | [300126800](300126800/README.md) - <image src='https://avatars0.githubusercontent.com/u/583231?s=460&v=4' width=20 height=20></image> | :x: |
| 14 | [300126966](300126966/README.md) - <image src='https://avatars0.githubusercontent.com/u/94937166?s=460&v=4' width=20 height=20></image> | :heavy_check_mark: || 10.13.237.31 | :x: | :three::one: |
| 15 | [300127065](300127065/README.md) - <image src='https://avatars0.githubusercontent.com/u/97314712?s=460&v=4' width=20 height=20></image> | :heavy_check_mark: |
| 16 | [300127290](300127290/README.md) - <image src='https://avatars0.githubusercontent.com/u/105463700?s=460&v=4' width=20 height=20></image> | :heavy_check_mark: |
| 17 | [300127868](300127868/README.md) - <image src='https://avatars0.githubusercontent.com/u/113466237?s=460&v=4' width=20 height=20></image> | :heavy_check_mark: |
| 18 | [300127921](300127921/README.md) - <image src='https://avatars0.githubusercontent.com/u/106841177?s=460&v=4' width=20 height=20></image> | :heavy_check_mark: |
| 19 | [300128276](300128276/README.md) - <image src='https://avatars0.githubusercontent.com/u/113144317?s=460&v=4' width=20 height=20></image> | :heavy_check_mark: |
| 20 | [300128326](300128326/README.md) - <image src='https://avatars0.githubusercontent.com/u/105472970?s=460&v=4' width=20 height=20></image> | :heavy_check_mark: |


### [:tada: Participation](.scripts/Participation.md)

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

