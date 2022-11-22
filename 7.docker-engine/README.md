# [docker-engine](https://github.com/CollegeBoreal/Tutoriels/tree/main/2.MicroServices/1.Containers/2.Docker/1.Engine)

[:tada: Participation ](.scripts/Participation.md)

## :a: Installer une machine Générique

https://github.com/CollegeBoreal/Tutoriels/tree/main/2.MicroServices/1.Containers/2.Docker/1.Engine


<img src="images/docker-engine.png" width=462 height=281 > </img>


- [ ] Lister les machines 

```
docker-machine ls
```
> Retour
```
NAME      ACTIVE   DRIVER       STATE     URL                         SWARM   DOCKER      ERRORS
ma-machine   -     generic      Running   tcp://10.13.237.25:2376             v20.10.3  
```

- [ ] Activer une machine

```
eval $(docker-machine env ma-machine)
```

- [ ] Visualiser les machines actives

* toutes les machines Note: :star:

```
docker-machine ls
```
> Retour
```
NAME      ACTIVE   DRIVER       STATE     URL                         SWARM   DOCKER      ERRORS
ma-machine   *     generic      Running   tcp://10.13.237.25:2376             v20.10.3  
```

* la machine active

```
docker-machine active
```
> Retour
```
ma-machine
```

- [ ] Annuler les machines actives

```
eval $(docker-machine env --unset)
```

## :b: Installer un conteneur

[Docker MySQL :point_left: ](Docker.md)
