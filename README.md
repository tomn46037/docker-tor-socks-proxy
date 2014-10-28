TOR SOCKS Proxy
=============================

Enable port 9050

From Docker Index
```
docker pull usertaken/tor-socks-proxy
```

Build Yourself
```
docker build --rm -t usertaken/tor-socks-proxy github.com/UserTaken/docker-tor-socks-proxy
```

Run
```
docker run -d -p 9050:9050 usertaken/tor-socks-proxy
```
