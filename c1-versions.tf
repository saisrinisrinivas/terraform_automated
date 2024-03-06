# Terraform Settings Block
terraform {
  backend "remote" {
    bucket = "my-terraform-bucket"
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
