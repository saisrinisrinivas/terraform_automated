# Terraform Settings Block
terraform {
  backend "s3" {
    bucket = "terrabucketstate098"
    key    = "state/terraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "terra_table"
  } 
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0" # Optional but recommended in production
    }
  }
}
