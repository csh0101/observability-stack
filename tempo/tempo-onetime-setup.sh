#!/bin/sh

# Based on documentation at
# https://github.com/grafana/helm-charts/tree/main/charts/tempo-distributed

#kubectl apply -f tempo-namespace.yaml
helm repo add grafana https://grafana.github.io/helm-charts
helm repo update grafana
helm upgrade --install \
  --namespace tempo \
 --kubeconfig /home/csh0101/.kube/k3s.yaml \
  --values tempo-helm-values.yaml \
  tempo grafana/tempo-distributed
