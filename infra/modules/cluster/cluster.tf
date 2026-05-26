resource "aws_eks_cluster" "eks_cluster" {
  name     = "${var.prefix}-${var.project}-cluster"
  role_arn = data.aws_iam_role.lab_role.arn

  vpc_config {
    subnet_ids = [
      var.public_subnet_1a_id,
      var.public_subnet_1b_id
    ]
    endpoint_private_access = true
    endpoint_public_access  = true
  }


  depends_on = [
    data.aws_iam_role.lab_role
  ]

  tags = merge(
    var.tags,
    {
      Name    = "${var.prefix}-eks-cluster"
      Project = var.project
    }
  )
}
