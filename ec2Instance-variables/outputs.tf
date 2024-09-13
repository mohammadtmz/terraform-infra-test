# output the instance id for easy access
output "instance_id" {
    description = "the id of the ec2 instance"
    value = aws_instance.example.id
} 