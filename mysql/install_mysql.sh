#!/bin/sh
kubectl apply -f mysql-namespace.yaml --kubeconfig ~/.kube/k3s.yaml 
kubectl apply -f  mysql-cm0-configmap.yaml --kubeconfig ~/.kube/k3s.yaml -n mysql
kubectl apply -f mysql-deployment.yaml --kubeconfig ~/.kube/k3s.yaml -n mysql
kubectl apply -f mysql-service.yaml --kubeconfig ~/.kube/k3s.yaml -n mysql
