#!/bin/sh
kubectl apply -f trace-app-namespace.yaml --kubeconfig ~/.kube/k3s.yaml 
kubectl apply -f servera-deployment.yaml --kubeconfig ~/.kube/k3s.yaml -n trace-app
kubectl apply -f serverb-deployment.yaml --kubeconfig ~/.kube/k3s.yaml -n trace-app
kubectl apply -f serverb-svc.yaml --kubeconfig ~/.kube/k3s.yaml -n trace-app
kubectl apply -f rideshare-deployment.yaml --kubeconfig ~/.kube/k3s.yaml -n trace-app
