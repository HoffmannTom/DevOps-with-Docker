## Build image
```
$ docker build . -t spring-project
```

## Run container
```
$ docker run -d --rm -p 127.0.0.1:8080:8080 spring-project
```