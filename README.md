#Assemblyline
## ok

A webserver in a (tiny) docker container that returns 200 ok for every request on port 8888


## Ready Made

```
docker run -p 8888:8888 yardstick/ok
```

## Build Your Own

change `REPO` in the Makefile

```
make
make build
make release
```

## Build Dependencies

* [Docker](http://www.docker.com/)
* [Go](https://golang.org/)
* make
