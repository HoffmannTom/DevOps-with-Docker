# EXERCISE 3.6: 
## Frontend and backend image size optimization
Get the image sizes before optimization:
```
$  docker images | grep end
backend                                      latest         631c61071419   10 seconds ago   726MB
frontend                                     latest         f68d420781fb   6 hours ago      691MB
```

After combining layers and deleting not needed packages:
```
root@ubuntu22:~/rails/material-applications/example-backend# docker images | grep end
backend                                      latest         f1c28fbb54f6   2 minutes ago   163MB
frontend                                     latest         db080b3dd211   13 hours ago    658MB
```

Deleting the go package from the alpine image saved a lot of space. 
The ubuntu image of the frontend service didn't change much. Curl doesn't take much space and nodejs is needed as a runtime environment.
## Files
For the Dockerfiles, see submitted files in the subfolders frontend and backend.
