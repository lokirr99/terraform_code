resource "aws_route_table" "srtechops_public_rt" {
  depends_on = [ aws_internet_gateway.gw , aws_vpc.srtechops_vpc ]
  vpc_id = aws_vpc.srtechops_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.gw.id
  }

  tags = {
    Name = "srtechops-public-rt"
  }
}