resource "aws_eks_node_group" "Node" {
  cluster_name    = aws_eks_cluster.eks.name
  node_group_name = "node"
  node_role_arn   = aws_iam_role.roleNode.arn
  subnet_ids      = var.Private_subnet_ids

  scaling_config {
    desired_size = 1
    max_size     = 2
    min_size     = 1
  }

  update_config {
    max_unavailable = 1
  }

  depends_on = [
    aws_iam_role_policy_attachment.EKSWorker,
    aws_iam_role_policy_attachment.NodeEKS,
    aws_iam_role_policy_attachment.NodeEC2,
  ]
}