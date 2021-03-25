output "aws_acm_certificate" {
  description = "ACM cert ID"
  value       = module.cluster.aws_acm_certificate
}

output "cluster_endpoint" {
  description = "Endpoint for EKS control plane."
  value       = module.cluster.cluster_endpoint
}

output "cluster_cert" {
  description = "Cluster cert"
  value       = module.cluster.cluster_cert
}

output "cluster_token" {
  description = "Cluster token"
  value       = module.cluster.cluster_token
}

output "cluster_config_map_aws_auth" {
  description = "aws auth configmap"
  value       = module.cluster.config_map_aws_auth
}

output "account_id" {
  value = module.cluster.account_id
}

output "caller_arn" {
  value = module.cluster.current_arn
}

output "caller_user" {
  value = module.cluster.caller_user
}
