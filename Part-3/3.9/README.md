# EXERCISE 3.9: 
## Backend optimization step 3
Get the image size before optimization:
```
$ docker images | grep backend
backend                                      latest         fef7928d80fa   About a minute ago   161MB
```

After using a two stage-build and switching to scratch image:
```
$ docker images | grep backend
backend                                      latest         b014d999dc4e   2 hours ago      17.8MB
```

go build usually compiles dynamically and therefore libmusl is needed on the target platform.
To prevent this dependency, a static built is used (CGO_ENABLED=0).
The passwd file is generated in the first step and just copied to the target image to create a user.

## File
For the backend Dockerfile, see submitted file in this folder.
