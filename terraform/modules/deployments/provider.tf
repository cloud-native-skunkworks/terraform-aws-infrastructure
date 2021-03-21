variable "cluster_endpoint" {}
variable "cluster_cert" {}
variable "cluster_token" {}
variable "region" {}
variable "kubeconfig_filename" {}

provider "aws" {
  region = var.region
}

provider "kubernetes" {
  host                   = var.cluster_endpoint
  cluster_ca_certificate = var.cluster_cert
  token                  = var.cluster_token
}

provider "helm" {
  kubernetes {
    host                   = var.cluster_endpoint
    cluster_ca_certificate = var.cluster_cert
    token                  = var.cluster_token
  }
}
