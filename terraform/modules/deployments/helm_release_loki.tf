resource "helm_release" "loki" {
  name             = "loki"
  chart            = "loki-stack"
  repository       = "https://grafana.github.io/helm-charts"
  namespace        = "observability"
  version          = "2.3.1"
  create_namespace = true
  wait             = false

  values = [
    file("modules/deployments/helm_values/loki-stack.yaml")
  ]
}
