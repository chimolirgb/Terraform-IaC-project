module "vpc" {
  source              = "./modules/vpc"
  vpc_name            = "iac-vpc"
  region              = "us-central1"
  public_subnet_name  = "iac-public-subnet"
  public_subnet_cidr  = "10.0.1.0/24"
  private_subnet_name = "iac-private-subnet"
  private_subnet_cidr = "10.0.2.0/24"
}

module "compute" {
  source        = "./modules/compute"
  instance_name = "iac-vm"
  machine_type  = "e2-medium"
  zone          = "us-central1-a"
  image         = "debian-cloud/debian-11"
  vpc           = module.vpc.vpc_id
  subnet        = module.vpc.public_subnet_id
  ssh_user      = "your-username"
  ssh_key       = "~/.ssh/id_rsa.pub"
  allowed_ips   = ["41.90.172.27"]
}

module "database" {
  source           = "./modules/database"
  db_instance_name = "iac-db"
  db_version       = "MYSQL_8_0"
  region           = "us-central1"
  db_tier          = "db-f1-micro"
  vpc              = module.vpc.vpc_id
  db_name          = "app_db"
  db_user          = "admin"
  db_password      = "SecurePassword123!"
}


