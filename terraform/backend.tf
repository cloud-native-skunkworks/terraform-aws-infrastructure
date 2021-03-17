terraform {
  backend "remote" {
    organization = "cloud-native-skunkworks"

    workspaces {
      name = "terraform-aws-infrastructure"
    }
  }
}
