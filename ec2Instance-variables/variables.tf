# define input variables for instance type and ami

variable "instance_type" {
    description = "the type of instance to use"
    default = "t2.micro"
}

variable "ami" {
    description = "the ami to use for the instance"
    default = "ami-0182f373e66f89c85"
}