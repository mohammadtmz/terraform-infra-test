variable "vpc_cidr" {
    description = "cidr block for the vpc"
    type = string
}

variable "public_subnet_cidr" {
    description = "cidr block for the public subnet"
    type = string
}

variable "private_subnet_cidr" {
    description = "cidr block for the private subnet"
    type = string
}

variable "az" {
    description = " the availability zone to create the subnet in"
    type = string
}

variable "vpc_name" {
    description = "the name of the vpc"
    type = string
    default = "MyVPC"
}