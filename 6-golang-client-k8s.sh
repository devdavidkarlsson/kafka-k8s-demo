#!/bin/sh

export POD_NAME=$(kubectl get pods --namespace default -l "app=docker-registry,release=quiet-ocelot" -o jsonpath="{.items[0].metadata.name}")
kubectl exec -ti
kubectl create -f pod-goclient.yaml
