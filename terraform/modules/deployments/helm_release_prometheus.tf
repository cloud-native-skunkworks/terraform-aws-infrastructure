resource "helm_release" "prometheus" {
  name             = "prometheus"
  chart            = "kube-prometheus-stack"
  repository       = "https://prometheus-community.github.io/helm-charts"
  namespace        = "observability"
  version          = "14.3.0"
  create_namespace = true
  wait             = true
}
