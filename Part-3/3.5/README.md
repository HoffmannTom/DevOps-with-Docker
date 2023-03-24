# EXERCISE 3.5: 
## Frontend
The user "gouser" was created and used in the Dockerfile.

## Backend
The base image was switched to alpine-linux. The user "gouser" was added and used in the Dockerfile.

## Verification
After starting the applications with
```
docker run --rm -d -p 8080:8080 backend
docker run --rm -d -p 5000:5000 frontend
```
the following command shows the used users within the containers:
```
docker inspect $(docker ps -q) --format '{{.Config.User}} {{.Name}}'
```
## Files
For the Dockerfiles, see submitted files in the subfolders frontend and backend.
