data "aws_caller_identity" "current" {}

data "aws_region" "current" {}

# AWS ACADEMY - referencia a LabRole pré-existente
data "aws_iam_role" "lab_role" {
  name = "LabRole"
}

# Cria a zona hospedada se não existir — necessário no AWS Academy onde a conta
# é resetada entre sessões
resource "aws_route53_zone" "main" {
  name = local.argocd_root_domain
}
