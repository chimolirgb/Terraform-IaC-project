
# Defines input variables for the root module.

variable "aws_region" {
  description = "AWS region to deploy resources"
  type        = string
  default     = "us-east-1"
}

variable "vpc_id" {
  description = "VPC ID where the security group will be created"
  type        = string
}
