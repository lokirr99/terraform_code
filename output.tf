output "rds_endpoint" {
  value = aws_db_instance.srtechops_rds.endpoint
  
}

output "webserver_ip" {
  value = aws_instance.webserver.public_ip
  
}

output "webserver_ip_private_ip" {
  value = aws_instance.webserver.private_ip
  
}