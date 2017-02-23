#!/bin/sh
sudo docker build -t tango-cs .
sudo docker run -it --rm --name tango_cs \
  --net=host \
  -p 127.0.0.1:10001:10000 \
  -e ORB_PORT=10000 \
  -e TANGO_HOST=127.0.0.1:10000 \
  -e MYSQL_HOST=127.0.0.1:3307 \
  -e MYSQL_USER=root \
  -e MYSQL_PASSWORD=root \
  -e MYSQL_DATABASE=tango \
  tango-cs
