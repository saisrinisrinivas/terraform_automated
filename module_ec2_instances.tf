terraform {
  backend "s3" {
    bucket = "heyhisaisriniviji123"
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
module "ec2_instance" {
    source = "./modules/ec2-instances"
   // instance_type = var.instance_type_map["prod"]

}