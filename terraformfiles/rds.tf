# rds.tf# Create RDS Instance
resource "aws_db_instance" "main" {
  allocated_storage    = 20
  storage_type         = "gp2"
  engine               = "mysql"
  engine_version       = "5.7"
  instance_class       = "db.t2.micro"
  name                 = "main-db"
  username             = "admin"
  password             = "password"
  db_subnet_group_name = aws_db_subnet_group.main.name
  vpc_security_group_ids = [aws_security_group.db_sg.id]

  tags = {
    Name = "main-db"
  }
}

# Create DB Subnet Group
resource "aws_db_subnet_group" "main" {
  name       = "main-db-subnet-group"
  subnet_ids = [aws_subnet.private.id]
}

# Create Secrets Manager Secret for DB Credentials
resource "aws_secretsmanager_secret" "db_credentials" {
  name = "db-credentials"
}

# Store DB Credentials in Secrets Manager
resource "aws_secretsmanager_secret_version" "db_credentials" {
  secret_id     = aws_secretsmanager_secret.db_credentials.id
  secret_string = jsonencode({
    username = "admin",
    password = "password"
  })
}
