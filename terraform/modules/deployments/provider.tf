variable "cluster_endpoint" {}
variable "cluster_cert" {}
variable "cluster_name" {}
variable "cluster_token" {}
variable "region" {}
variable "kubeconfig_filename" {}

provider "aws" {
  region = var.region
}

provider "kubernetes" {
  host                   = var.cluster_endpoint
  cluster_ca_certificate = var.cluster_cert
  exec {
    api_version = "client.authentication.k8s.io/v1alpha1"
    args        = ["eks", "get-token", "--cluster-name", var.cluster_name]
    command     = "aws"
  }
}

provider "helm" {
  kubernetes {
    host                   = var.cluster_endpoint
    cluster_ca_certificate = var.cluster_cert
    exec {
      api_version = "client.authentication.k8s.io/v1alpha1"
      args        = ["eks", "get-token", "--cluster-name", var.cluster_name]
      command     = "aws"
    }
  }
}
