#!/bin/sh

cd watermill
docker build . -t kubernetes.docker.internal:5000/watermill
echo "Visit http://127.0.0.1:5000/v2/_catalog"
echo "127.0.0.1 kubernetes.docker.internal needs to be in /etc/hosts"
docker push kubernetes.docker.internal:5000/watermill
