# EXERCISE 2.10: 
## NMap Scan
The  port mapping of frontend and backend service were removed in docker-compose.yml as only nginx port is needed.
 ``` 
$ docker compose up -d
[+] Running 5/5
 ⠿ Container frontend     Started                                                                              2.8s
 ⠿ Container db_redmine   Started                                                                              1.5s
 ⠿ Container 210-nginx-1  Started                                                                              1.8s
 ⠿ Container backend      Started                                                                              3.9s
 ⠿ Container redis        Started                                                                              2.4s

$ nmap localhost
Starting Nmap 7.80 ( https://nmap.org ) at 2023-03-20 20:39 UTC
Nmap scan report for localhost (127.0.0.1)
Host is up (0.0000020s latency).
Not shown: 998 closed ports
PORT   STATE SERVICE
22/tcp open  ssh
80/tcp open  http

Nmap done: 1 IP address (1 host up) scanned in 0.09 seconds
``` 

## Files
For docker-compose and nginx-configuration file, see submitted files in this folder.