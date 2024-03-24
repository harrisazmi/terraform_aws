# internet_gateway.tf

# Create Internet Gateway
resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.main.id

  tags = {
    Name = "main-igw"
  }
}

# Attach Internet Gateway to VPC
resource "aws_vpc_attachment" "gw_attach" {
  vpc_id       = aws_vpc.main.id
  internet_gateway_id = aws_internet_gateway.gw.id
}
