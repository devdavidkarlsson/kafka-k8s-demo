#!/bin/sh

cd watermill
echo "for private registry"
docker build . -t foo-docker-registry:5000/watermill
echo 'will it build? will it start?'
docker run kubernetes.docker.internal:5000/watermill
echo "127.0.0.1 foo-docker-registry needs to be in /etc/hosts"
docker push foo-docker-registry:5000/watermill
