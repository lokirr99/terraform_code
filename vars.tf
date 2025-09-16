variable "cidr_block" {
  default = "10.0.0.0/16"
}

variable "public_subnet_cidr" {
  default = "10.0.0.0/24"
  
}

variable "private_subnet1a_cidr" {
  default = "10.0.1.0/24"
  
}

variable "private_subnet1b_cidr" {
  default = "10.0.2.0/24"
  
}

variable "availability_zone1a" {
  default = "ap-south-1a"        
  
}

variable "availability_zone1b" {
  default = "ap-south-1b"        
  
}