terraform {
    backend  "s3" {
    bucket = " terraform-backend-project-1"
    region = "us-east-1"
    key = "eks/terraform.tfstate"
        }
}
