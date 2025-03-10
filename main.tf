module "vpc" {
  source             = "./modules/vpc"
  vpc_name           = "iac-vpc"
  region             = "us-central1"
  public_subnet_name = "iac-public-subnet"
  public_subnet_cidr = "10.0.1.0/24"
  private_subnet_name = "iac-private-subnet"
  private_subnet_cidr = "10.0.2.0/24"
}
