#!/bin/bash
docker build -t wern-nginx-proxy nginx-proxy/
docker build -t wern-nginx-hello nginx-hello/
docker build -t wern-nginx-wern nginx-wern/