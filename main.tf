terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 4.0"
    }
  }
}

provider "aws" {
  region = var.region
}

module "s3_bucket" {
  source     = "./modules/s3"
  bucket_name = var.bucket_name
  acl         = var.acl
  versioning  = var.versioning
  tags        = var.tags
} 