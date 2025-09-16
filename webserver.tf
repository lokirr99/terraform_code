resource "aws_instance" "webserver" {
  ami           = "ami-02d26659fd82cf299"
  instance_type = "t3.micro"
  subnet_id     = aws_subnet.public_subnet.id
  key_name      = "multi-tier-project"
  vpc_security_group_ids = [ aws_security_group.allow_ssh_http.id ]

  tags = {
    Name = "webserver-instance"
  }
    depends_on = [ aws_security_group.allow_ssh_http ]

    
  
}


resource "null_resource" "install_apache" {
  depends_on = [ aws_instance.webserver ]

  connection {
    type        = "ssh"
    user        = "ubuntu"
    private_key = file("C:\\privatekey\\multi-tier-project.pem")
    host        = aws_instance.webserver.public_ip
  }

  provisioner "remote-exec" {
    inline = [
      "sudo apt-get update",
     "sudo apt-get install -y apache2",
     "sudo apt-get install git -y",
     "sudo apt-get install php -y",
     "sudo apt-get install php-mysqli -y",
     "sudo git clone https://github.com/WordPress/WordPress.git /var/www/html/",
     "sudo chown -R www-data:www-data /var/www/html",
     "sudo systemctl start apache2",
     "sudo systemctl enable apache2"
    ]
  }
  
}



 