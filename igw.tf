resource "aws_internet_gateway" "gw" {
    depends_on = [ aws_vpc.srtechops_vpc ]
  vpc_id = aws_vpc.srtechops_vpc.id

  tags = {
    Name = "srtechops-gw"
  }
}