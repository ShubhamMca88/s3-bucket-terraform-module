# S3 Bucket Terraform Module

This project provisions an AWS S3 bucket using a reusable Terraform module.

## Structure

- `modules/s3/` — The reusable S3 bucket module
- Root files — Use the module and configure variables

## Usage

1. Edit `terraform.tfvars` to set your values.
2. Initialize Terraform:
   ```sh
   terraform init
   ```
3. Review and apply the plan:
   ```sh
   terraform plan
   terraform apply
   ```

## Example Root Configuration
```
module "s3_bucket" {
  source      = "./modules/s3"
  bucket_name = var.bucket_name
  acl         = var.acl
  versioning  = var.versioning
  tags        = var.tags
}
```

## Variables
- `region`: AWS region (default: `us-east-1`)
- `bucket_name`: Name of the S3 bucket (must be globally unique)
- `acl`: Canned ACL (default: `private`)
- `versioning`: Enable versioning (default: `false`)
- `tags`: Map of tags

## Outputs
- `bucket_name`: The name of the S3 bucket
- `bucket_arn`: The ARN of the S3 bucket 
