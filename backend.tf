terraform {
    backend  "s3" {
    bucket = " my_bucket_aws_bucket123"
    region = "us-east-1"
    key = "eks/terraform.tfstate"
        }
}