
variable "db_instance_name" {
  description = "The name of the Cloud SQL instance"
  type        = string
}

variable "db_version" {
  description = "The version of the database engine"
  type        = string
}

variable "region" {
  description = "The region for the Cloud SQL instance"
  type        = string
}

variable "db_tier" {
  description = "The tier of the Cloud SQL instance"
  type        = string
}

variable "db_name" {
  description = "The name of the database"
  type        = string
}

variable "db_user" {
  description = "The database username"
  type        = string
}

variable "db_password" {
  description = "The database password"
  type        = string
  sensitive   = true
}

variable "vpc" {
  description = "VPC network for Cloud SQL instance"
  type        = string
}
