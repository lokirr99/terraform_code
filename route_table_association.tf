resource "aws_route_table_association" "a" {
    depends_on = [ aws_subnet.public_subnet , aws_route_table.srtechops_public_rt ]
  subnet_id      = aws_subnet.public_subnet.id
  route_table_id = aws_route_table.srtechops_public_rt.id
}