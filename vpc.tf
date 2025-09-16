resource "aws_vpc" "srtechops_vpc" {
  cidr_block       = var.cidr_block
  enable_dns_hostnames = true
  instance_tenancy = "default"

  tags = {
    Name = "srtechops-vpc"
  }
}