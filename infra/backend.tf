terraform {
  backend "s3" {
    bucket       = "togglemaster-tfstate-yuri-1"
    key          = "eks-cluster/terraform.tfstate"
    region       = "us-east-1"
    use_lockfile = true
  }
}
