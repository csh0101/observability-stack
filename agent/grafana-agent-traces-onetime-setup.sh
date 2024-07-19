#!/bin/sh
kubectl apply -n tempo -f grafana-agent-traces-configmap.yaml --kubeconfig ~/.kube/k3s.yaml
kubectl apply -n tempo -f grafana-agent-traces-deployment.yaml --kubeconfig ~/.kube/k3s.yaml
