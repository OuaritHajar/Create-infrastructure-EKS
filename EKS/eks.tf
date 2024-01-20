resource "aws_eks_cluster" "eks" {
  name     = var.name
  role_arn = aws_iam_role.roleEKS.arn
  vpc_config { 
    #vpc_id = var.vpc_id
    subnet_ids = var.Private_subnet_ids
  }

  depends_on = [
    aws_iam_role_policy_attachment.EKSCluster,
    aws_iam_role_policy_attachment.EKSController,
  ]
}

