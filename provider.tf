# Remove this invalid block
# or if you intended a provider, use this:
provider "aws" {
    region = "us-east-1"
}
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.52.0"
    }
  }
}
 
 
