# EXERCISE 1.5: SIZES OF IMAGES
## Commands

```
docker pull devopsdockeruh/simple-web-service:alpine
docker pull devopsdockeruh/simple-web-service:ubuntu
docker image ls | grep simple
```

## Output

```
devopsdockeruh/simple-web-service   ubuntu    4e3362e907d5   2 years ago   83MB
devopsdockeruh/simple-web-service   alpine    fd312adc88e0   2 years ago   15.7MB
```

Conclusion: The alpine based image has only 15.7 MB compared to 83 MB for the ubuntu based image


## Verify secret message

```
docker container run -d --name simple-alpine devopsdockeruh/simple-web-service:alpine
docker exec -it  simple-alpine sh
tail -f ./text.log
Ctrl+C
exit
docker stop simple-alpine
```
