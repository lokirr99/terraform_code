resource "aws_subnet" "private_subnet1a" {
  depends_on = [ aws_vpc.srtechops_vpc ]
  vpc_id     = aws_vpc.srtechops_vpc.id
  cidr_block = var.private_subnet1a_cidr
  map_public_ip_on_launch = false
  tags = {
    Name = "private-subnet1a"
  }
  availability_zone = var.availability_zone1a
}

resource "aws_subnet" "private_subnet1b" {
depends_on = [ aws_vpc.srtechops_vpc ]
  vpc_id     = aws_vpc.srtechops_vpc.id
  cidr_block = var.private_subnet1b_cidr
  map_public_ip_on_launch = false
  tags = {
    Name = "private-subnet1b"
  }
  availability_zone = var.availability_zone1b
}