# EXERCISE 1.4: MISSING DEPENDENCIES
## 1st Terminal

```
docker run --rm -it --name fetcher ubuntu sh -c 'while true; do echo "Input website:"; read website; echo "Searching.."; sleep 1; curl http://$website; done'
```

## 2nd Terminal

```
docker exec -it fetcher sh
apt-get update
apt-get -y install curl
exit
```

## 1st Terminal

```
helsinki.fi
ctrl+c
```

## Alternative solution
Instead of curl, the bash can also connect to tcp sockets by using the pseudo-device /dev/tcp.
This example uses the redirect option of the exec command and channel 3 is used to send and fetch data:
```
exec 3<>/dev/tcp/helsinki.fi/80
echo -e "GET / HTTP/1.1\r\nhost: helsinki.fi\r\nConnection: close\r\n\r\n" >&3
cat <&3
```
