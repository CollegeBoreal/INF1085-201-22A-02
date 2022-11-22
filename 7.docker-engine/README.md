# [docker-engine](https://github.com/CollegeBoreal/Tutoriels/tree/main/2.MicroServices/1.Containers/2.Docker/1.Engine)

[:tada: Participation ](.scripts/Participation.md)

## :a: Installer une machine Générique

https://github.com/CollegeBoreal/Tutoriels/tree/main/2.MicroServices/1.Containers/2.Docker/1.Engine


<img src="images/docker-engine.png" width=462 height=281 > </img>


- [ ] Lister les contextes 

```
docker context ls
```
> Retour
```
NAME      ACTIVE   DRIVER       STATE     URL                         SWARM   DOCKER      ERRORS
ma-machine   -     generic      Running   tcp://10.13.237.25:2376             v20.10.3  
```

- [ ] Creer un contexte

```
docker context create MA_MACHINE --docker "host=ssh://utilisateur@localhost.mondomaine.games"
```

```
docker context use MA_MACHINE
```

- [ ] Visualiser les machines actives

* toutes les machines Note: :star:

```
docker-machine ls
```
> Retour
```
NAME                           TYPE                DESCRIPTION                               DOCKER ENDPOINT                                KUBERNETES ENDPOINT                 ORCHESTRATOR
default                        moby                Current DOCKER_HOST based configuration   unix:///var/run/docker.sock                    https://127.0.0.1:55853 (default)   swarm
desktop-linux                  moby                                                          unix:///Users/valiha/.docker/run/docker.sock                   MA_MACHINE                 *   moby                                                          ssh://utilisateur@localhost.mondomaine.games                                         
```


## :b: Installer un conteneur

[Docker MySQL :point_left: ](Docker.md)
