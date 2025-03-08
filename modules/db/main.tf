# Creating a managed database instance in the private subnet

resource "aws_db_subnet_group" "db_subnet" {
  name       = "db_subnet_group"
  subnet_ids = [var.private_subnet_id]
}

resource "aws_db_instance" "db" {
  identifier           = "mydatabase"
  engine              = "mysql"
  instance_class      = "db.t2.micro"
  allocated_storage   = 20
  username           = var.db_username
  password           = var.db_password
  db_subnet_group_name = aws_db_subnet_group.db_subnet.name
  skip_final_snapshot = true

  tags = {
    Name = "Managed DB"
  }
}
