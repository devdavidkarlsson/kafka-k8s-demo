#!/bin/sh

# minikube stop
# minikube destroy
minikube start --memory 4000 --cpus 3
helm init
