variable "ami_id" {
    description = "AMI ID for EC2 instances"
    type        = string
    default     = "ami-0ebfd941bbafe70c6"
}

variable "instance_type" {
    description = "Type of instance to launch"
    type        = string
    default     = "t2.micro"
}

variable "min_size" {
    description = "Minimum number of instanced"
    type        = number
    default     = 1
}

variable "max_size" {
    description = "Maximum number of instances"
    type        = number
    default     = 3
}

variable "subnet_ids" {
    description = "List of subnet IDs for the auto scaling group"
    type        = List(string)
    default     = ["subnet-042d70c9e16cd3774", "subnet-0e068f221f702a940"]
}

variable "security_group_ids" {
    description = "List of security group IDs for the instances"
    type        = List[string]
    default     = ["sg-04fce9899b86162c7"]
}