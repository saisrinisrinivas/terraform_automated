# terraform {
#   backend "s3" {
#     bucket = "srinis-terra-bucket"
#     key    = "terraformstate/terraform.tfstate"
#     region = "us-east-1"
    
#   }
#   required_providers {
#     aws = {
#       source  = "hashicorp/aws"
#       version = "~> 5.0" # Optional but recommended in production
#     }
#   }
# }