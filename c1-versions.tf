# Terraform Settings Block
terraform {
  backend "s3" {
    bucket = "sriniterraform001"
    key    = "terraformstate/terraform.tfstate"
    region = "us-east-1"
    
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0" # Optional but recommended in production
    }
  }
}