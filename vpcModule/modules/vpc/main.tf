resource "aws_vpc" "main" {
    cidr_block = var.vpc_cidr
    tags = {
        Name = var.vpc_name
    }
}

resource "aws_subnet" "public"{
    vpc_id                  = aws_vpc.main.id
    availability_zone       = var.az
    cidr_block              = var.public_subnet_cidr
    map_public_ip_on_launch = true
    tags = {
        Name = "${var.vpc_name}-public"
    }
}

resource "aws_subnet" "private" {
    vpc_id              = aws_vpc.main.id
    availability_zone   = var.az
    cidr_block          = var.private_subnet_cidr
    tags = {
        Name = "${var.vpc_name}-private"
    }
}