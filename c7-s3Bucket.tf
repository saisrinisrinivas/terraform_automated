resource "aws_s3_bucket" "terraform_bucket" {
  bucket = "my0689-terraform-bucket"
  tags = {
    Name        = "my0689-terraform-bucket"
  }
}
