# How to Deploy and Manage MongoDB with Docker

## :one: Your Docker service needs to be active and running. You can quickly check the current status by entering the following command in your terminal:
``` 
 sudo service docker status
 ```
- [ ] In this example, the Docker service is active and running.

![image](https://user-images.githubusercontent.com/96226008/196329682-cc52c65b-8e65-4387-a572-e076be4aef3a.png)

## :two: Proceed to download the latest official Docker image for the MongoDB database:
```
sudo docker pull mongo
```
- [ ] The image indicates that the system used the latest tag by default.


![image](https://user-images.githubusercontent.com/96226008/196330276-71be724f-c005-4eee-964d-9009671bf012.png)

### To download a specific version of MongoDB, use the same command appended with the version tag. For example:
```
sudo docker pull mongo:4.2.2
```
## :three: List the images in your Docker repository with the following command:
```
sudo docker images
```
![image](https://user-images.githubusercontent.com/96226008/196330505-30905de5-9f25-4d8f-b480-2c5c5cc4d9ee.png)


# Deploy MongoDB Container
By default, MongoDB stores data in the /data/db directory within the Docker container. To remedy this, mount a directory from the underlying host system to the container running the MongoDB database. This way, data is stored on your host system and is not going to be erased if a container instance fails.

## :one: Create a /mongodata directory on the host system:
```
sudo mkdir -p /mongodata
```
## :two: Start the Docker container with the run command using the mongo image. The /data/db directory in the container is mounted as /mongodata on the host. Additionally, this command changes the name of the container to mongodb:
```
sudo docker run -it -v mongodata:/data/db --name mongodb -d mongo
```
-it – Provides an interactive shell to the Docker container.

![image](https://user-images.githubusercontent.com/96226008/196330838-9300ff89-2d5e-49fd-b0cd-a5470555cab4.png)

-v – Use this option to attach the /mongodata host volume to the /data/db container volume.

-d – Starts the container as a background process.ç

--name – Name of the container.

##  :three: Once the MongoDB server starts running in a container, check the status by typing:
```
sudo docker ps
```
The default port number is __27017__, as can be seen in the output.

![image](https://user-images.githubusercontent.com/96226008/196331008-cb4fb50a-f2a7-4ece-be0b-c1d30ba4b427.png)

## :four: Optionally you can specify the MongoDB port explicitly:
```
sudo docker run -it -v mongodata:/data/db -p 27017:27017 --name mongodb -d mongo
```
## :five: Always check the Docker log to see the chain of events after making changes:
```
sudo docker logs mongodb
```
The logs provide a wealth of useful information.

![image](https://user-images.githubusercontent.com/96226008/196331179-0bd56c06-96f3-4538-972e-57097edcef8c.png)

# Start Interactive Docker Terminal (Bash Shell) to Manage MongoDB Database
## :one: The container is currently running in __detached mode__. Connect to the container using the interactive terminal instead:
```
sudo docker exec -it mongodb bash
```
## :two: Start the MongoDB shell by typing mongo in the interactive terminal.

![image](https://user-images.githubusercontent.com/96226008/196331299-38d26780-a886-48f6-8ac8-dc02c81fa20c.png)

The MongoDB shell launches and theprompt is ready to accept your commands.

## :three: Instead of just typing mongo, you can additionally define a specific host and port by typing:
```
mongo -host localhost -port 27017
```
With the MongoDB shell, you can now create a database, add collections or manage individual documents.

# How to Exit MongoDB and Interactive Shell
Type __exit__ to leave the MongoDB shell and then __exit__ once again to leave the Interactive shell.

![image](https://user-images.githubusercontent.com/96226008/196331423-5553621a-bc0a-4747-a959-19a910c3e70f.png)

As an alternative, you can type __quit__() or use __Ctrl-C__ to exit the shell.

# Stopping and Restarting MongoDB Database

The docker stop command is a short and clear command that __stops running container instances:__
```
sudo docker stop mongodb
```
Inspect the list of running Docker containers by typing:
```
sudo docker ps
```
Containers are started by using the __docker start__ command:
```
sudo docker start mongodb
```
The list of running containers now confirms that the MongoDB database has been initiated once again:
```
sudo docker ps
```
![image](https://user-images.githubusercontent.com/96226008/196331665-b3da4125-bd83-49c8-97da-bf660fe08826.png)

## Conclusion

You now know how to install MongoDB on a Docker container, and you have learned how to access the MongoDB shell to manage databases.

Use Docker to streamline MongoDB database deployment across multiple servers and scale your operations quickly and efficiently.

# References

- [x] [Using MongoDB with Docker](https://earthly.dev/blog/mongodb-docker)




