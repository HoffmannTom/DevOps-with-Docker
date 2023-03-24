# EXERCISE 3.4: BUILDING IMAGES INSIDE OF A CONTAINER
## Deployment container
The docker image was built with the command:
```
docker build . -t builder
```

The build and upload was triggered by:
```
docker run -e DOCKER_USER=<user> -e DOCKER_PWD=<password> -v /var/run/docker.sock:/var/run/docker.sock builder HoffmannTom/leaky hoffmanntom/leaky
```
## File
For the bash file builder.sh and Dockerfile, see submitted files in this folder.
