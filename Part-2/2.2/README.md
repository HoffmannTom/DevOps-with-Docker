# EXERCISE 2.2: 
## startup web-service, test and shutdown
```
$ docker compose up -d
[+] Running 2/2
 ⠿ Network 22_default            Created                                                                                                                                            0.2s
 ⠿ Container simple-web-service  Started                                                                                                                                            1.1s

$ curl localhost:8080
{"message":"You connected to the following path: /","path":"/"}root@ubuntu22:~/2.2#

$ docker compose down
[+] Running 2/2
 ⠿ Container simple-web-service  Removed                                                                                                                                            0.4s
 ⠿ Network 22_default            Removed                                                                                                                                            0.2s
$

```
## File
For docker-compose file, see submitted file in this folder.