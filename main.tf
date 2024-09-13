# define aws provider
provider "aws" {
    region = "us-east-1"
}

module "vpc" {
    source = "./modules/vpc"
    az = "us-east-1a"
    vpc_cidr = "10.0.0.0/16"
    public_subnet_cidr = "10.0.1.0/24"
    private_subnet_cidr = "10.0.2.0/24"
    vpc_name = "MyVPC"
}