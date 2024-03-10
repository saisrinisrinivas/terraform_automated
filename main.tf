terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0" # Optional but recommended in production
    }
  }
}

module "ec2_instance" {
    source = "./modules/ec2-instances/c2-versions.tf"
    instance_type = "t2.large"

}