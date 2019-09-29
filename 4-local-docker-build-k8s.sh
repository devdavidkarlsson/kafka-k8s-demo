#!/bin/sh

cd watermill
echo "for private registry"
docker build . -t airdavidkarlsson/watermill:latest
docker push airdavidkarlsson/watermill
