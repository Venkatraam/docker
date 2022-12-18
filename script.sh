#!/bin/bash

cd /root
rm -rf docker ;
git clone https://github.com/Venkatraam/docker.git ;
docker system prune -af ;
cd /root/docker ;
docker build -t venkatraam/nivas:myapache .
docker push venkatraam/nivas:myapache
docker rm -f mycontianer
docker system prune -af
docker run -itd -p 80:80 --name mycontianer venkatraam/nivas:myapache
