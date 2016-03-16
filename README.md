#Assemblyline
## ok

A webserver in a (tiny) docker container that returns 200 ok for every request on port 8888

## Build Docker Container

```
make build
```

## Release Docker Container

check `REPO` in the Makefile

```
make release
```

## Build Dependencies

* [Docker](http://www.docker.com/)
* [Go](https://golang.org/)
* make
