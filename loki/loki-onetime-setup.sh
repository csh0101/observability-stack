#!/bin/sh

helm repo add grafana https://grafana.github.io/helm-charts
helm repo update
helm upgrade --install \
  --kubeconfig /home/csh0101/.kube/k3s.yaml \
  --namespace loki \
  --values loki-helm-values.yaml \
  loki grafana/loki
