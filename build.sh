#! /bin/bash

set -e

docker build -t localtest/app ./containers/app
docker build -t localtest/web ./containers/web-server

kubectl create -f ./deployment.yaml
kubectl expose deployment/current-time --type="NodePort" --port 80

host=$(minikube ip)
port=$(kubectl get services/current-time -o go-template='{{(index .spec.ports 0).nodePort}}')

echo "open http://$host:$port"
