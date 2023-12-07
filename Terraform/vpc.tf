resource "aws_vpc" "prod-vpc" {
    cidr_block = var.vpc_cidr_block
    enable_dns_support = "true"
    enable_dns_hostnames = "true"

    tags = {
        Name = "prod-vpc"
    }
}

resource "aws_subnet" "prod-subnet-public-1" {
    vpc_id = "${aws_vpc.prod-vpc.id}"
    cidr_block = var.subnet_public_cidr_block
    map_public_ip_on_launch = "true" # This is what makes it a public subnet
    tags = {
        Name = var.subnet_public_name
    }
}

resource "aws_subnet" "prod-subnet-private-1" {
    vpc_id = "${aws_vpc.prod-vpc.id}"
    cidr_block = var.subnet_private_cidr_block
    tags = {
        Name = var.subnet_private_name
    }
}
