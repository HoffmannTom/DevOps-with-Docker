## Mount file and view log
```
$ touch text.log
$ docker container run -d -v "$(pwd)/text.log:/usr/src/app/text.log" devopsdockeruh/simple-web-service
$ tail text.log -f
```
