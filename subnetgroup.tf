resource "aws_db_subnet_group" "srtechops_db_subnet_group" {
  name       = "srtechops-db-subnet-group"
  subnet_ids = [aws_subnet.private_subnet1a.id, aws_subnet.private_subnet1b.id]

  tags = {
    Name = "My DB subnet group"
  }
}