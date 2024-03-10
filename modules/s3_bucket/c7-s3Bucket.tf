
resource "aws_s3_bucket" "terraform_bucket" {
  bucket = var.bucket_name
  tags = {
    Name        = "my0689-terraform-bucket"
  }
}
