#!/bin/sh
kubectl  delete  -f prometheus-namespace.yaml --kubeconfig=/home/csh0101/.kube/k3s.yaml
kubectl  delete  -f prometheus-pvc.yaml --kubeconfig=/home/csh0101/.kube/k3s.yaml
kubectl  delete  -f ../storage/prometheus-pv.yaml --kubeconfig=/home/csh0101/.kube/k3s.yaml
kubectl  delete  -f prometheus-configmap.yaml --kubeconfig=/home/csh0101/.kube/k3s.yaml
kubectl  delete  -f prometheus-rbac.yaml --kubeconfig=/home/csh0101/.kube/k3s.yaml
kubectl  delete  -f prometheus-deployment.yaml --kubeconfig=/home/csh0101/.kube/k3s.yaml
