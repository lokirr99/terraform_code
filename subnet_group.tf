resource "aws_db_subnet_group" "default" {
  name       = "sub_group1"
  subnet_ids = [aws_subnet.private_subnet1.id, aws_subnet.private_subnet2.id]

  tags = {
    Name = "My DB subnet group"
  }
}