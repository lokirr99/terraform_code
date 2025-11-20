#security group for vpc


resource "aws_security_group" "allow_rds" {
  name        = "allow_mysql"
  description = "Allow MySQL access from subnet 10.0.1.0/24"
  vpc_id      = aws_vpc.my_vpc.id

  tags = {
    Name = "allow_mysql"
  }
}

resource "aws_vpc_security_group_ingress_rule" "allow_rds1" {
  security_group_id = aws_security_group.allow_rds.id
  cidr_ipv4         = "10.0.2.0/24" # Replace with your trusted subnet or IP
  from_port         = 3306
  ip_protocol       = "tcp"
  to_port           = 3306
}


resource "aws_vpc_security_group_egress_rule" "out_bound_all_traffic" {
  security_group_id = aws_security_group.allow_rds.id
  cidr_ipv4         = "0.0.0.0/0"
  ip_protocol       = "-1" # semantically equivalent to all ports
}

