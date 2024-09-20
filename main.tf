provider "aws" {
    region = "us-east-1"
}

locals {
    environment = var.environment != "" ? var.environment : terraform.workspace
}

resource "random_string" "bucket_id" {
    length = 9
    special = false
}

resource "aws_s3_bucket" "example" {
    bucket = "${local.environment}-${random_string.bucket_id.result}-bucket-example"
    acl     = "private"
    tags = {
        Name = "${local.environment}-bucket-example"
        Environment = local.environment
    }
}

output "current_workspace" {
    value = terraform.workspace
}