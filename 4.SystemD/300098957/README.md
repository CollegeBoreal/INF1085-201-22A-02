# 300098957

* Créer le conteneur

```
docker container run --name some-mysql --env MYSQL_ROOT_PASSWORD=password --publish 3306:3306 --detach mysql:latest
```

* Accéder au conteneur

```
docker container exec --interactive --tty some-mysql bash
```

# References

- [ ] NGINX
- [ ] Apache2
- [ ] postgresql
- [ ] django
- [ ] MariaDB
