# 300127065

* Créer le conteneur

-------------------------------------------------------------------------------------------

```
docker container run --name some-nginx --env NGINX_ROOT_PASSWORD=password --publish 8000:80 --detach nginx:latest
```

------------------------------------------------------------------------------------------------
# docker run permet de démarrer un conteneur

```
docker run nom de l'image 
```

------------------------------------------------------------------------------------------------

# docker ps	permet d’avoir la liste des conteneurs en cours d’exécution

```
docker ps
```

![image](https://user-images.githubusercontent.com/97314712/198861934-d5dcb842-6ed1-47cd-9180-cb64d603791c.png)


------------------------------------------------------------------------------------------------

# docker ps -a	permet d’avoir la liste des conteneurs même ceux qui ne sont pas en cours d’exécution

```
docker ps -a
```

![image](https://user-images.githubusercontent.com/97314712/198861831-43d1b93d-28d5-4469-b224-7bcd9e6b9452.png)


------------------------------------------------------------------------------------------------

# docker stop conteneur_id Permet d’arrêter un conteneur à partir de son identifiant

```
docker stop conteneur_id
```

------------------------------------------------------------------------------------------------

# docker rm conteneur_id	Permet de supprimer définitivement un conteneur à partir de son identifiant

```
docker rm conteneur_id
```

------------------------------------------------------------------------------------------------

* Accéder au conteneur

```
docker container exec --interactive --tty some-nginx bash
```
------------------------------------------------------------------------------------------------
# References

- [ ] NGINX

