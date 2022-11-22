# [docker-engine](https://github.com/CollegeBoreal/Tutoriels/tree/main/2.MicroServices/1.Containers/2.Docker/1.Engine)

[:tada: Participation ](.scripts/Participation.md)

## :a: Installer une machine Générique

https://github.com/CollegeBoreal/Tutoriels/tree/main/2.MicroServices/1.Containers/2.Docker/1.Engine


<img src="images/docker-engine.png" width=462 height=281 > </img>



- [ ] Creer un contexte

```
docker context create MA_MACHINE --docker "host=ssh://utilisateur@localhost.mondomaine.games"
```

```
docker context use MA_MACHINE
```

- [ ] Lister les contextes 

* toutes les machines Note: :star:

```
docker context ls
```
> Retour
```
NAME                           TYPE                DESCRIPTION                               DOCKER ENDPOINT                                KUBERNETES ENDPOINT                 ORCHESTRATOR
default                        moby                Current DOCKER_HOST based configuration   unix:///var/run/docker.sock                    https://127.0.0.1:55853 (default)   swarm
desktop-linux                  moby                                                          unix:///Users/valiha/.docker/run/docker.sock                   MA_MACHINE                 *   moby                                                          ssh://utilisateur@localhost.mondomaine.games                                         
```


## :b: Installer un conteneur

[Docker MySQL :point_left: ](Docker.md)
