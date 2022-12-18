#!/bin/bash

cd /root
rm -rf docker ;
git clone https://github.com/mycloudazure/docker.git ;
docker system prune -af ;
cd /root/docker ;
docker build -t myawspk/besant22:myapache .
docker push myawspk/besant22:myapache
docker rm -f mycontianer
docker system prune -af
docker run -itd -p 80:80 --name mycontianer myawspk/besant22:myapache
