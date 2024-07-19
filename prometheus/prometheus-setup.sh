#!/bin/sh
kubectl  apply -f prometheus-namespace.yaml --kubeconfig=/home/csh0101/.kube/k3s.yaml
kubectl  apply -f prometheus-pvc.yaml --kubeconfig=/home/csh0101/.kube/k3s.yaml
kubectl  apply -f ../storage/prometheus-pv.yaml --kubeconfig=/home/csh0101/.kube/k3s.yaml
kubectl  apply -f prometheus-configmap.yaml --kubeconfig=/home/csh0101/.kube/k3s.yaml
kubectl  apply -f prometheus-rbac.yaml --kubeconfig=/home/csh0101/.kube/k3s.yaml
kubectl  apply -f prometheus-deployment.yaml --kubeconfig=/home/csh0101/.kube/k3s.yaml
