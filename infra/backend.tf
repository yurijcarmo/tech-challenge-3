terraform {
  backend "s3" {
    bucket       = "togglemaster-terraform-state"
    key          = "eks-cluster/terraform.tfstate"
    region       = "us-east-1"
    use_lockfile = true
  }
}
