# # Terraform Settings Block
# terraform {
#   required_providers {
#     aws = {
#       source  = "hashicorp/aws"
#       version = "~> 5.0" # Optional but recommended in production
#     }
#   }
# }


# Resource Block
resource "aws_instance" "ec2demo" {
  ami           = "ami-0440d3b780d96b29d" # Amazon Linux in us-east-1, update as per your region
  instance_type = "t2.micro"
  tags = {
    "Name" = "EC2 Demo"
  }
  
}
