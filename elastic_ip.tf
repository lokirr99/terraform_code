resource "aws_eip" "public_ip" {
  instance = aws_instance.my_instance.id
  domain   = "vpc"
}


output "public_ip" {
  value = aws_eip.public_ip.public_ip
}