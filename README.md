# docker-nginx-playground
Small project to setup a dockerized multiwebsite scenario using nginx.

* [Docker Commandline Reference](https://docs.docker.com/engine/reference/commandline/docker)
* [NGINX Docker Image (incl. a first HowTo)](https://hub.docker.com/_/nginx)
* [NGINX as reverse proxy](https://docs.nginx.com/nginx/admin-guide/web-server/reverse-proxy)

## How to start

Add the following entry to your `/etc/hosts` file:
`127.0.0.1 hello.localhost wern.localhost`

Build the docker images using [build-images.sh](./build-images.sh).

Change directory into `nginx-proxy` and run `docker-compose up -d` to start the reverse proxy (`nginx-proxy`) and the two sample website container (`nginx-hello` and `nginx-wern`).

You can now access [the Proxy directly](http://localhost:7000), the two websites through the proxy ([hello](http://hello.localhost:7000), [wern](http://wern.localhost:7000)) and - for debugging purpose - the two websites directly ([hello](http://hello.localhost:7100), [wern](http://wern.localhost:7200)).

## What to find where

* Container linking and port mapping can be found in [nginx-proxy/docker-compose.yml](./nginx-proxy/docker-compose.yml)
* URL mapping is done by naming convention. The subdomain (`<subdomain>.localhost:7000`) must match the coresponding container's link name). Details see in [nginx-proxy/nginx.conf](./nginx-proxy/nginx.conf).