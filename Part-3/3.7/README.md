# EXERCISE 3.7: 
## Frontend and backend image size optimization step 2
Get the image sizes before optimization:
```
$ docker images | grep end
backend                                      latest         f1c28fbb54f6   2 minutes ago   163MB
frontend                                     latest         db080b3dd211   13 hours ago    658MB
```

After combining layers and deleting not needed packages:
```
$ docker images | grep end
backend                                      latest         fef7928d80fa   About a minute ago   161MB
frontend                                     latest         d7e58f55aa1c   14 minutes ago       403MB
```

Replacing Ubuntu with Alpine in the frontend service saved a lot of space in the image.
The backend already based on Alpine and thus didn't show a big difference.

## Files
For the Dockerfiles, see submitted files in the subfolders frontend and backend.
