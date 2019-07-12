#!/bin/bash
echo Building router image...
docker build -t wern-nginx-proxy nginx-proxy/
echo Done.
echo Building sample website images...
docker build -t wern-nginx-hello nginx-hello/
docker build -t wern-nginx-wern nginx-wern/
echo Done.
echo Now cd into nginx-proxy and start the containers using docker-compose up -d