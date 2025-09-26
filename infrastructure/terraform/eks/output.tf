output cluster_url {
  value       = aws_eks_cluster.ekscluster.endpoint
  sensitive   = true
  description = "eks cluster url"
}

# output subnet_ids{
#   value      = data.aws_subnets.subnets.ids
#   description = "subnet ids"
# }

# output vpc_id {
#   value      = data.aws_vpc.selected.id
#   description = "subnet ids"
# }