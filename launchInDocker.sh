#!/bin/bash -e

docker rm -f netviz || true

docker run --name netviz -v $(pwd):/usr/share/nginx/html:ro -d -p 8080:80 nginx
