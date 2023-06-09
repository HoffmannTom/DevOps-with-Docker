# EXERCISE 2.9: 
## Frontend
The frontend sends requests to http://192.168.10.40:8080 as configured in 1.4. As we now have a reverse proxy, the requests
should be sent to http://192.168.10.40/api and then gets forwarded by nginx to http://backend:8080.
Therefore, I set the environment variable REACT_APP_BACKEND_URL to http://192.168.10.40/api.
(The IP 192.168.10.40 is a linux VM where docker is running the containers.)

## Backend
The backend server doesn't need the variable REQUEST_ORIGIN any more, because no CORS headers are needed.
NGINX does the request handling and browser sees only one origin for frontend and backend.  

## Rebuild images
I added the build-paths to docker-compose.yml and ran "docker compose build" to create the adjusted images before starting up the containers with
```
$ docker compose up -d
```
Website is now accessible via http://192.168.10.40/ and all buttons work. 

Shutdown with:
```
$ docker compose down
```