resource "aws_db_instance" "srtechops_rds" {
 depends_on = [ aws_db_subnet_group.srtechops_db_subnet_group , aws_security_group.allow_mysql ]
  allocated_storage    = 20
  storage_type         = "gp2"
  db_name              = "mydb"
  engine               = "mysql"
  engine_version       = "8.0"
  instance_class       = "db.t3.micro"
  username             = "admin"
  password             = "admin12345"
  parameter_group_name = "default.mysql8.0"
  skip_final_snapshot  = true
 vpc_security_group_ids = [ aws_security_group.allow_mysql.id ]
 db_subnet_group_name = aws_db_subnet_group.srtechops_db_subnet_group.name

  tags = {
    Name = "srtechops-rds"
  }
}

