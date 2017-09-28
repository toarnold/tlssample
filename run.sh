#!/bin/bash
docker stop mynginx
docker rm mynginx
docker run --name mynginx -v $PWD/site:/usr/share/nginx/html:ro -v $PWD/conf.d:/etc/nginx/conf.d -v $PWD/certs:/etc/nginx/ssl -p 81:80 -d -p 444:443 nginx