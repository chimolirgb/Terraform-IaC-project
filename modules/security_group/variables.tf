
# Defining input variables for the security group module.

variable "sg_name" {
  description = "The name of the security group"
  type        = string
}

variable "vpc_id" {
  description = "The VPC ID where the security group will be created"
  type        = string
}

variable "allowed_ips" {
  description = "List of IP addresses allowed for SSH access"
  type        = list(string)
}
