variable "dns_base_domain_id" {}
variable "elb_zone_id" {}
variable "aws_acm_certificate" {}
variable "dns_base_domain" {}


## Example data and domains for route53 ---------------------------------------
#
# output "ingress_hostname" {
#   description = "Ingress hostname"
#   value       = data.kubernetes_service.ingress_gateway.status.0.load_balancer.0.ingress.0.hostname
# }
#
# data "kubernetes_service" "ingress_gateway" {
#   metadata {
#     namespace = "kube-system"
#     name      = join("-", [helm_release.ingress_gateway.chart, helm_release.ingress_gateway.name])
#   }
#
#   depends_on = [helm_release.ingress_gateway]
# }
#
# data "kubernetes_service" "gitlab_ingress" {
#   metadata {
#     namespace = "gitlab"
#     name      = "gitlab-nginx-ingress-controller"
#   }
#   depends_on = [helm_release.gitlab]
# }
#
# # Default Ingress controller
# resource "aws_route53_record" "eks_domain" {
#   zone_id = var.dns_base_domain_id
#   name    = var.dns_base_domain
#   type    = "A"
#
#   alias {
#     name                   = data.kubernetes_service.ingress_gateway.status.0.load_balancer.0.ingress.0.hostname
#     zone_id                = var.elb_zone_id
#     evaluate_target_health = true
#   }
# }
#
# # Gitlab Ingress Controller
# resource "aws_route53_record" "gitlab_subdomain" {
#   zone_id = var.dns_base_domain_id
#   name    = join(".", ["gitlab", var.dns_base_domain])
#   type    = "A"
#
#   alias {
#     name                   = data.kubernetes_service.gitlab_ingress.status.0.load_balancer.0.ingress.0.hostname
#     zone_id                = var.elb_zone_id
#     evaluate_target_health = true
#   }
# }
#
# resource "aws_route53_record" "gitlab_minio_subdomain" {
#   zone_id = var.dns_base_domain_id
#   name    = join(".", ["minio", var.dns_base_domain])
#   type    = "A"
#
#   alias {
#     name                   = data.kubernetes_service.gitlab_ingress.status.0.load_balancer.0.ingress.0.hostname
#     zone_id                = var.elb_zone_id
#     evaluate_target_health = true
#   }
# }
#
# resource "aws_route53_record" "gitlab_registry_subdomain" {
#   zone_id = var.dns_base_domain_id
#   name    = join(".", ["registry", var.dns_base_domain])
#   type    = "A"
#
#   alias {
#     name                   = data.kubernetes_service.gitlab_ingress.status.0.load_balancer.0.ingress.0.hostname
#     zone_id                = var.elb_zone_id
#     evaluate_target_health = true
#   }
# }
