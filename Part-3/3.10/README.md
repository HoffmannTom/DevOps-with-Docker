# EXERCISE 3.10: 
## Optimization step 3
Get the image size before optimization:
```
$ docker images | grep leaky
hoffmanntom/leaky                            latest          1f0c1946ebb4   5 seconds ago    471MB
```

After using a two stage-build, combining RUN statements and switching to an alpine image:
```
$ docker images | grep leaky
hoffmanntom/leaky                            latest          319e737c38e4   12 minutes ago   82.7MB
```

A user named pyused was created and used.

## File
For the Dockerfile, see submitted file in this folder.  
I used the project https://github.com/HoffmannTom/leaky which was created for a security course.
