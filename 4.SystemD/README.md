# 4 SystemD

## :one: Installer Docker Engine sur sa machine Linux

- [ ] Suivre le tutoriel suivant

[Installation de Docker Engine](https://github.com/CollegeBoreal/Tutoriels/tree/main/2.MicroServices/1.Containers/2.Docker/1.Engine/2.Linux)

- [ ] Vérifier que `Docker Engine` est installé sur sa machine

:m: en lançant la commande `docker container`

```
docker container ls
```

:m: en vérifiant que le service `docker engine` tourne

```
systemctl status docker
```
> Affiche :
```
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

##  :two: Participation

[:tada: Participation](.scripts/Participation.md)

sur votre PC (Mac)

## :three: Installer le client docker

[Installation de Docker Client](https://github.com/CollegeBoreal/Tutoriels/tree/main/2.MicroServices/1.Containers/2.Docker/0.Client)

# Références

- [ ] [Docker Context](https://docs.docker.com/engine/reference/commandline/context)

- [ ] [keygen](https://www.ssh.com/academy/ssh/keygen) Générer la clé publique et privée

avec ssh-`keygen`

```
ssh-keygen -t rsa -b 4096
```

* Renommer la clé privé pour la sauvegarder (par défaut le fichier de la clé privée se nomme `~/.ssh/id_rsa`)

:bulb: Remplacer b300098957 par votre propre :id: Boréal i.e. b000000000 (vos 9 chiffres)

```
mv ~/.ssh/id_rsa ~/.ssh/b300098957
```

* Renommer la clé publique (par défaut le fichier de la clé publique se nomme `~/.ssh/id_rsa.pub`)

```
mv ~/.ssh/id_rsa.pub ~/.ssh/b300098957.pub
```

* Copier sa clé publique vers le serveur

avec ssh-`copy-id`

:bulb: Remplacer b300098957 par votre propre :id: Boréal i.e. b000000000 (vos 9 chiffres) et `prof@10.13.237.253` par vos propres informations


```
ssh-copy-id -i ~/.ssh/b300098957 prof@10.13.237.253
```

- [ ] Accéder à la machine

:piavec l'identifiant en tapant ssh `-i`

```
ssh -i ~/.ssh/b300098957 prof@10.13.237.253
```

- [ ] Accéder à la machine sans spécifier l'identifiant

:warning: sous `git-bash` uniquement, avec l'agent ssh `ssh-agent`

```
eval $(ssh-agent)
```

* ajouter la clé privée à la liste gérée par l'agent SSH

```
ssh-add ~/.ssh/b300098957
```

* lister les clés gérées par l'agent SSH

```
ssh-add -l
```

- [ ] [LinkedIn Learning - apprehender la commande Docker](https://www.linkedin.com/learning/decouvrir-docker/apprehender-la-commande-docker)
