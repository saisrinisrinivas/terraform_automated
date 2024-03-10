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

variable "instance_type_list" {
  description = "EC2 instance type list"
  type = list(string)
  default = ["t2.nano","t2.micro","t2.large"]
}
variable "instance_type_map" {
    description = "EC2 instance type map"
    type = map(string)
    default = {
      "dev" = "t2.nano"
      "qa" = "t2.micro"
      "prod" = "t2.large"
    }
  
}
