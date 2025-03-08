module "security_group" {
  source      = "./modules/security_group"
  sg_name     = "ssh-access-sg"
  vpc_id      = var.vpc_id
  allowed_ips = [
    "203.0.113.0/24",  
    "192.168.1.100/32", 
    "102.0.5.84/32"        
  ]
}
