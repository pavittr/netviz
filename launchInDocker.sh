#!/bin/bash -e

docker rim -f netviz

docker run --name netviz -v $(pwd):/usr/share/nginx/html:ro -d -p 8080:80 nginx
