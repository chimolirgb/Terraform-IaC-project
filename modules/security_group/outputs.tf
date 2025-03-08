
# Outputing the security group ID.

output "sg_id" {
  description = "The ID of the created security group"
  value       = aws_security_group.ssh_sg.id
}
