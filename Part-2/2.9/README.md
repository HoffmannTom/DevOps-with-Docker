# EXERCISE 2.9: 
## Frontend
The frontend sent requests to http://192.168.10.40:8080 as configured in 1.4. As we now have a reverse proxy, the requests
should be sent to http://192.168.10.40/api and then gets forwarded by nginx to http://backend:8080.
Therefore, I set the environment variable REACT_APP_BACKEND_URL to http://192.168.10.40/api.
(The IP 192.168.10.40 is a linux VM where docker is running the containers.)

The backend server doesn't need the variable REQUEST_ORIGIN any more, because no CORS headers are needed.
NGINX does the request handling and browser sees only one origin for frontend and backend.