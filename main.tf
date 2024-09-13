provider "aws" {
  region = "us-east-1"
}

module "vpc" {
  source = "terraformtest/modules/vpc"
  version = "1.9.5"

  # Define the vpc cidr block
  vpc_cidr = "10.0.0.0/16"

  # also specifying availability zones, public and private subnets
  azs             = ["us-east-1a", "us-east-1b"]
  private_subnets = ["10.0.1.0/24", "10.0.2.0/24"]
  public_subnets  = ["10.0.3.0/24", "10.0.4.0/24"] 

  tags = {
    Name = "terraform-vpc"
  }
}