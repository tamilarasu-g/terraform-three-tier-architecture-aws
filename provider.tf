terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.92.0"
    }
  }

  backend "s3" {
    bucket = "test-tf-backend-state-bucket"
    key = "three-tier-arch.tfstate"
    region = "ap-south-1"

    dynamodb_table = "terraform-state-locks"
    encrypt = true
  }
}

provider "aws" {
  shared_credentials_files = ["~/.aws/credentials"]
  profile = "terraform"
}