# AWS provider
provider "aws" {
  region = "us-east-1"
}

# Create a new EC2 instance 
resource "aws_instance" "example" {
  ami           = "ami-0182f373e66f89c85" # Amazon Linux AMI
  instance_type = "t2.micro"

  tags = {
    Name = "TerraformExampleInstance"
  }
}

output "instance_id" {
  value = aws_instance.example.id
}
