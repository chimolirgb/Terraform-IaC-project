
# Defines input variables for the root module.

variable "aws_region" {
  description = "AWS region to deploy resources"
  type        = string
  default     = "af-south-1"
}

variable "vpc_id" {
  description = "VPC ID where the security group will be created"
  type        = string
}
