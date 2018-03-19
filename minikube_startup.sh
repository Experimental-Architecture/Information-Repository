#!/bin/bash

#kubectl get pods --all-namespaces

minikube stop
ifdown ens33 && sudo ifup ens33
rm /usr/local/minikube && rm -rf ~/.minikube
minikube delete
curl -Lo minikube https://storage.googleapis.com/minikube/releases/v0.23.0/minikube-linux-amd64 && chmod +x minikube && sudo mv minikube /usr/local/bin/
kubectl delete secret s
