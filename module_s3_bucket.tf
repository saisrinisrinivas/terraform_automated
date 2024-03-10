
module "s3_buckets" {
    source = "./modules/s3_bucket"
    bucket_name = "srinis-terra-bucket"
}