variable "aws_region" {
    description = "This is instance region variable"
    type = string
    default = "us-east-1"
}

variable "instance_type" {
    description = "This variable is to define instance type"
    type = string
    default = "t2.micro"
}

