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
  ami           = data.aws_ami.amzlinux2.id # Amazon Linux in us-east-1, update as per your region
  instance_type = var.instance_type
  vpc_security_group_ids = [ "aws_security_group.vpc-ssh.id", "aws_security_group.vpc-web.id"]
  user_data = file("${path.module}/app1-install.sh")
  tags = {
    "Name" = "EC2 Demo"
  }
  
}
