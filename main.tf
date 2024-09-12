provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "example" {
  ami = "ami-0182f373e66f89c85"
  instance_type "t2.micro"

  tags = {
    Name = "TerraformExampleInstance"
  }
}

output "instance_id" {
  value = aws_instance.example.id
}
