resource "aws_s3_bucket" "terraform_bucket" {
  bucket = "my-terraform-bucket"

  tags = {
    Name        = "my-terraform-bucket"
  }
}
