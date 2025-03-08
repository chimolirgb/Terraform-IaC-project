
# Defining a security group allowing SSH access only from specified IP addresses.

resource "aws_security_group" "ssh_sg" {
  name        = var.sg_name
  description = "Security group allowing SSH access from specific IPs"
  vpc_id      = var.vpc_id

  # SSH access rule

  ingress {
    description = "Allow SSH from specified IPs"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = var.allowed_ips
  }

  # Allowing all outgoing traffic
  
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = var.sg_name
  }
}
