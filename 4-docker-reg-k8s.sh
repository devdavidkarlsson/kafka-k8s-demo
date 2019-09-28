#!/bin/sh

helm repo add incubator http://storage.googleapis.com/kubernetes-charts-incubator
helm install stable/docker-registry
export POD_NAME=$(kubectl get pods --namespace default -l "app=docker-registry,release=quiet-ocelot" -o jsonpath="{.items[0].metadata.name}")
echo "Visit http://127.0.0.1:5000/v2/_catalog "
kubectl -n default port-forward $POD_NAME 5000:5000
