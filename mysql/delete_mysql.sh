#!/bin/sh
kubectl delete -f mysql-namespace.yaml  --kubeconfig ~/.kube/k3s.yaml
kubectl delete -f  mysql-cm0-configmap.yaml --kubeconfig ~/.kube/k3s.yaml  
kubectl delete -f mysql-deployment.yaml --kubeconfig ~/.kube/k3s.yaml
kubectl delete -f mysql-service.yaml --kubeconfig ~/.kube/k3s.yaml
