# nat_gateway.tf

# Create NAT Gateway
resource "aws_nat_gateway" "nat" {
  allocation_id = aws_eip.nat.id
  subnet_id     = aws_subnet.public.id

  tags = {
    Name = "main-nat"
  }
}

# Create Elastic IP for NAT Gateway
resource "aws_eip" "nat" {
  vpc = true
}
