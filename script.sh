#!/bin/bash

docker build -t goapp -f Dockerfile-go .
docker build -t nginx -f Dockerfile-nginx .

docker run -d --name app1 goapp
docker run -d --name app2 goapp
docker run -d --name nginx -p 80:80 --link app1:app1 --link app2:app2 nginx

echo 'Point a browser at localhost:80 to see the app running.'
echo 'If you are on windows or a mac remember to look up the ip'
echo 'of the machine using docker-machine ls'
