resource "aws_instance" "my_instance" {
  ami           = data.aws_ami.amazon_linux.id
  instance_type = "t3.micro"
  key_name      = "my_mini_key"
  subnet_id     =aws_subnet.public_subnet.id
  associate_public_ip_address = true
  vpc_security_group_ids = [aws_security_group.allow_ssh_http.id]
  tags = {
    Name    = "MyWebServer_1"
    company = "MyCompany"
  }
}


resource "aws_instance" "my_instance1" {
  ami           = data.aws_ami.amazon_linux.id
  instance_type = "t3.micro"
  key_name      = "my_mini_key"
  subnet_id     = aws_subnet.public_subnet.id
  associate_public_ip_address = true
  tags = {
    Name    = "MyWebServer_2"
    company = "MyCompany"
  }
}





