## Build backend image and run backend
```
$ docker build . -t backend

$ docker run -d --rm -p 8080:8080 backend
```