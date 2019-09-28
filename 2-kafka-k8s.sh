helm repo add incubator http://storage.googleapis.com/kubernetes-charts-incubator
helm install --name my-kafka incubator/kafka

echo "KAFKA TOPICS"
kubectl create -f pod-kafka.yaml
kubectl get pods
kubectl exec -ti testclient -- ./bin/kafka-topics.sh --zookeeper my-kafka-zookeeper:2181 --list
kubectl exec -ti testclient -- ./bin/kafka-topics.sh --zookeeper my-kafka-zookeeper:2181 --create --topic test --partitions 2 --replication-factor 2
kubectl exec -ti testclient -- ./bin/kafka-topics.sh --zookeeper my-kafka-zookeeper:2181 --list
