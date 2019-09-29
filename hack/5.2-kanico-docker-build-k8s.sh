#!/bin/sh
# waiting for fix: https://github.com/GoogleContainerTools/kaniko/pull/737
echo "kaniko build (https://github.com/GoogleContainerTools/kaniko)"
kubectl create -f pod-goclient-builder.yaml
