# EXERCISE 3.8: 
## Frontend optimization step 3
Get the image sizes before optimization:
```
$ docker images | grep end
backend                                      latest         fef7928d80fa   About a minute ago   161MB
frontend                                     latest         d7e58f55aa1c   14 minutes ago       403MB
```

After combining layers and deleting not needed packages:
```
$ docker images | grep frontend
frontend                                     latest         d2cdeff22d21   24 seconds ago   6.05MB

```

Using multi-stage bulid with alpine:3.16.0 made shrinked the image size to about 60 MB.
The packages nodejs and npm took quite much space and therefore I switched to busybox base image.
It can serve static files and don't need additional packages. The image shrinked again down to around 6 MB.

## File
For the frontend Dockerfile, see submitted file in this folder.
