# EXERCISE 1.7: IMAGE FOR SCRIPT
## Build container
```
$ docker build . -t curler
Sending build context to Docker daemon   5.12kB
Step 1/6 : FROM ubuntu:20.04
 ---> 61c45d0e9798
Step 2/6 : WORKDIR /usr/src/app
 ---> Using cache
 ---> 3d6de8af5331
Step 3/6 : COPY fetch.sh .
 ---> Using cache
 ---> 77bfcc1e7ea0
Step 4/6 : RUN chmod +x fetch.sh
 ---> Using cache
 ---> c3cac464637d
Step 5/6 : RUN apt-get update && apt-get -y install curl
 ---> Using cache
 ---> 140229eb36e7
Step 6/6 : CMD ./fetch.sh
 ---> Using cache
 ---> b92f6dc712ad
Successfully built b92f6dc712ad
Successfully tagged curler:latest
```

## Run container
```
$ docker run -it curler
Input website:
helsinki.fi
Searching..
<html>
<head><title>301 Moved Permanently</title></head>
<body>
<center><h1>301 Moved Permanently</h1></center>
<hr><center>nginx/1.20.1</center>
</body>
</html>
Input website:
```

## Files
For Dockerfile and shell-script, see submitted files in this folder.
