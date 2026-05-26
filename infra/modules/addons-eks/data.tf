data "aws_caller_identity" "current" {}

data "aws_region" "current" {}

# AWS ACADEMY - referencia a LabRole pré-existente
data "aws_iam_role" "lab_role" {
  name = "LabRole"
}
