variable "instance_name" {
  description = "The name of the VM instance"
  type        = string
}

variable "machine_type" {
  description = "The machine type for the instance"
  type        = string
  default     = "e2-medium"
}

variable "zone" {
  description = "The GCP zone for the VM"
  type        = string
}

variable "image" {
  description = "OS image for the VM"
  type        = string
  default     = "debian-cloud/debian-11"
}

variable "vpc" {
  description = "The VPC network ID"
  type        = string
}

variable "subnet" {
  description = "The subnet ID"
  type        = string
}

variable "ssh_user" {
  description = "Username for SSH access"
  type        = string
}

variable "ssh_key" {
  description = "Path to the SSH public key"
  type        = string
}

variable "allowed_ips" {
  description = "Allowed IPs for SSH access"
  type        = list(string)
}
