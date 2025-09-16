resource "aws_subnet" "public_subnet" {
  depends_on = [ aws_vpc.srtechops_vpc ]
  vpc_id     = aws_vpc.srtechops_vpc.id
  cidr_block = var.public_subnet_cidr
  map_public_ip_on_launch = true
  tags = {
    Name = "public-subnet"
  }

  availability_zone = var.availability_zone1a
}