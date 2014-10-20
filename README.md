TOR SOCKS Proxy
=============================

Enable port 9050

From Docker Index
```
docker pull usertaken/tor-socks-proxy
```

Build Yourself
```
docker build --rm -t usertaken/transmission-webui github.com/UserTaken/docker-tor-socks-proxy
```

Run Example
```
docker run -d -p 9050:9050 usertaken/tor-socks-proxy
```
