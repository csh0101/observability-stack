#!/bin/sh
kubectl --kubeconfig ~/.kube/k3s.yaml apply -f pyroscope-namespace.yaml
helm repo add grafana https://grafana.github.io/helm-charts
helm repo update grafana
helm upgrade --install \
  --namespace pyroscope\
 --kubeconfig /home/csh0101/.kube/k3s.yaml \
  pyroscope grafana/pyroscope
