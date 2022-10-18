# Telecharger Docker PostgresSQL Image

## :one: Faite la commande suivante:

```
docker pull postgres
```
## :two: Pour obtenir la liste des images Docker existantes, exécutez la commande suivante:

```
docker images
```
## :three: À l'étape suivante, vous pouvez entrer la commande que vous avez copiée à partir du Docker Hub dans l'invite de commande:

```
docker run --name some-postgres -e POSTGRES_PASSWORD=mysecretpassword -d postgres
```
## :four: La commande ci-dessus doit être personnalisée et ajoutée avec les paramètres nécessaires pour fonctionner correctement lors de la configuration de PostgreSQL sur Docker:

```
docker run --name postgresql -e POSTGRES_USER=myusername -e POSTGRES_PASSWORD=mypassword -p 5432:5432 -v /data:/var/lib/postgresql/data -d postgres
```
Dans la commande donnée ci-dessus,

__PostgreSQL__ est le nom du conteneur Docker.  
__-e POSTGRES_USER__ est le paramètre qui définit un nom d'utilisateur unique pour la base de données Postgres.  
__-e POSTGRES_PASSWORD__ est le paramètre qui vous permet de définir le mot de passe de la base de données Postgres.  
__-p 5432:5432__ est le paramètre qui établit une connexion entre le port hôte et le port conteneur Docker. Dans ce cas, les deux ports sont donnés sous la forme 5432, ce qui indique que les requêtes envoyées aux ports hôtes seront automatiquement redirigées vers le port du conteneur Docker. De plus, 5432 est également le même port où PostgreSQL acceptera les requêtes du client.  
__-v__ est le paramètre qui synchronise les données Postgres avec le dossier local. Cela garantit que les données Postgres seront présentes en toute sécurité dans le répertoire personnel même si le conteneur Docker est terminé.  
__-d__ est le paramètre qui exécute le conteneur Docker en mode détaché, c'est-à-dire en arrière-plan. Si vous fermez ou arrêtez accidentellement l'invite de commande, le conteneur Docker fonctionnera toujours en arrière-plan.  
__postgres__ est le nom de l'image Docker précédemment téléchargée pour exécuter le conteneur Docker.  

## :five: Maintenant, exécutez docker ps -a pour vérifier l'état du conteneur PostgreSQL nouvellement créé:
```
docker ps -a
```
## :six: Pour démarrer le conteneur Docker:
```
docker start postgresqldb
```
## :seven: Pour arrêter le conteneur Docker:
```
docker stop postgresqldb
```
