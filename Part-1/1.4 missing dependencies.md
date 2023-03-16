## 1st Terminal:

```
docker run --rm -it --name fetcher ubuntu sh -c 'while true; do echo "Input website:"; read website; echo "Searching.."; sleep 1; curl http://$website; done'
```

## 2nd Terminal:

```
docker exec -it fetcher sh
apt-get update
apt-get -y install curl
exit
```

## 1st Terminal:

```
helsinki.fi
ctrl+c
```
