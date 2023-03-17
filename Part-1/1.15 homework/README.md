# EXERCISE 1.15: HOMEWORK
## docker-hub
Link to container on docker-hub:
https://hub.docker.com/r/hoffmanntom/leaky


## github
Link to project page on github:
https://github.com/HoffmannTom/leaky

## Installation and starting
Install docker if not present:  
```apt install docker.io```

Fetch the container with:  
```docker pull hoffmanntom/leaky```

To run the container, use:  
```docker run -d --rm -p 8000:8000 hoffmanntom/leaky```

Now you can access the website via browser:  
http://localhost:8000
