# EXERCISE 1.10: PORTS OPEN
## Run Container
```
$ docker container run -d --rm -p 127.0.0.1:8080:8080 web-server
5085dbacf07625371298d4b1c9325e746073acbe65b6d59967066597d7e1766a
```
## Check website
```
$ curl http://localhost:8080
{"message":"You connected to the following path: /","path":"/"}
```

