#!/bin/sh
echo "prepare topics"
kubectl exec -ti testclient -- ./bin/kafka-topics.sh --zookeeper my-kafka-zookeeper:2181 --create --topic events --partitions 1 --replication-factor 1
kubectl exec -ti testclient -- ./bin/kafka-topics.sh --zookeeper my-kafka-zookeeper:2181 --create --topic events-processed --partitions 1 --replication-factor 1


echo "deploy watermill client"
kubectl create -f pod-goclient.yaml


echo "write to topic using test client"
kubectl exec -ti testclient -- ./bin/kafka-console-producer.sh --broker-list my-kafka:9092 --topic events
# post some json...

kubectl logs goclient --follow=true

kubectl exec -ti testclient -- ./bin/kafka-console-consumer.sh --zookeeper my-kafka-zookeeper:2181 --topic events-processed
