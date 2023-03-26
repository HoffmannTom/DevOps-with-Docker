# EXERCISE 3.3: BUILDING IMAGES INSIDE OF A CONTAINER
## Bash script
The bash script gets the parameters, clones the repo, builds the docker image and pushes it to docker hub.
The user must login to docker hub before calling the script:
```
docker login
./builder.sh HoffmannTom/leaky hoffmanntom/leaky
```
The script must have execute permission, e.g. chmod u+x ./bulider.sh

## File
For the bash file builder.sh, see submitted files in this folder.
