
# Outputs the created security group ID.

output "security_group_id" {
  description = "The ID of the created security group"
  value       = module.security_group.sg_id
}
