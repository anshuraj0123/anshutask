variable "EC2_USER" {
    default = "ubuntu"
}
variable "PUBLIC_KEY_PATH" {
    default = "~/.ssh/id_rsa.pub"
}
variable "ami_id" {
  description = "AMI ID for the EC2 instances"
  default     = "ami-0fc5d935ebf8bc3bc"  
}

variable "instance_type" {
  description = "Type of EC2 instances"
  default     = "t2.micro" 
}

variable "igw_name" {
  description = "Name of the Internet Gateway"
  default     = "prod-igw"
}

variable "public_crt_name" {
  description = "Name of the public route table"
  default     = "prod-public-crt"
}

variable "private_crt_name" {
  description = "Name of the private route table"
  default     = "prod-private-crt"
}

variable "nat_gateway_name" {
  description = "Name of the NAT Gateway"
  default     = "VPC Demo - NAT"
}

variable "region" {
  description = "region-Name"
  default     = "us-east-1"
}



variable "vpc_cidr_block" {
  description = "CIDR block for the VPC"
  default     = "10.0.0.0/16"
}

variable "subnet_public_cidr_block" {
  description = "CIDR block for the public subnet"
  default     = "10.0.1.0/24"
}

variable "subnet_private_cidr_block" {
  description = "CIDR block for the private subnet"
  default     = "10.0.2.0/24"
}

variable "subnet_public_name" {
  description = "Name for the public subnet"
  default     = "prod-subnet-public-1"
}

variable "subnet_private_name" {
  description = "Name for the private subnet"
  default     = "prod-subnet-private-1"
}