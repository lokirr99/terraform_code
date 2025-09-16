resource "aws_security_group" "allow_mysql" {
  name        = "allow_mysql_http"
  description = "Allow mysql inbound traffic and all outbound traffic"
  vpc_id      = aws_vpc.srtechops_vpc.id

  tags = {
    Name = "allow_mysql"
  }
}

resource "aws_vpc_security_group_ingress_rule" "allow_mysql" {
  security_group_id = aws_security_group.allow_ssh_http.id
  cidr_ipv4         = "0.0.0.0/0"
  from_port         = 3306
  ip_protocol       = "tcp"
  to_port           = 3306
}


resource "aws_vpc_security_group_egress_rule" "allow_all_traffic_ipv4" {
  security_group_id = aws_security_group.allow_ssh_http.id
  cidr_ipv4         = "0.0.0.0/0"
  ip_protocol       = "-1" # semantically equivalent to all ports
}

