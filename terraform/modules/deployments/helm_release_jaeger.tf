resource "helm_release" "jaeger" {
  name             = "jaeger"
  chart            = "jaeger"
  repository       = "https://jaegertracing.github.io/helm-charts"
  namespace        = "observability"
  version          = "0.43.1"
  create_namespace = true
  wait             = true

  depends_on = [helm_release.prometheus]
}
