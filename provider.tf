# configure AWS as the cloud provider
provider "aws" {
  region = var.aws_region
}