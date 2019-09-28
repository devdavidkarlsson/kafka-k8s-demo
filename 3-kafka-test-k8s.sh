# manually:
kubectl exec -ti testclient -- ./bin/kafka-console-producer.sh --broker-list my-kafka:9092 --topic test

kubectl exec -ti testclient -- ./bin/kafka-console-consumer.sh --zookeeper my-kafka-zookeeper:2181 --topic test
