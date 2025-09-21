output "subnet_ids" {
  value       = data.aws_subnets.private.ids
  description = "subnet ids"
}
