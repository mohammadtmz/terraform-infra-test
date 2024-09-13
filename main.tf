provider "aws" {
    region = "us-east-1"
}

terraform {
    backend "s3" {
        bucket          = "my-terraform-state-bucket-akbar"
        key             = "akbar/"
        region          = "us-east-1"
        dynamodb_table  = "terraform-state-lock"
        encrypt         = true
    }
}

resource "aws_instance" "example" {
    ami = "ami-0182f373e66f89c85"
    instance_type = "t2.micro"

    tags = {
        Name = "TerraformExample"
    }
}