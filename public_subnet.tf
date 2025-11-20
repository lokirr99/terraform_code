# This resource creates a public subnet in the specified VPC for hosting public-facing resources.
resource "aws_subnet" "public_subnet" {
  vpc_id     = aws_vpc.my_vpc.id
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "public_subnet1"
  }
}