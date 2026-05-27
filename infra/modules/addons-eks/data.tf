data "aws_caller_identity" "current" {}

data "aws_region" "current" {}

# AWS ACADEMY - referencia a LabRole pré-existente
data "aws_iam_role" "lab_role" {
  name = "LabRole"
}

# Busca a zona pelo nome do domínio raiz — evita depender do zone_id hardcoded
# que muda entre sessões do AWS Academy
data "aws_route53_zone" "main" {
  name         = local.argocd_root_domain
  private_zone = false
}
