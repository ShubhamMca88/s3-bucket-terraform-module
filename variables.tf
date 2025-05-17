variable "region" {
  description = "AWS region to create resources in."
  type        = string
  default     = "us-east-1"
}

variable "bucket_name" {
  description = "The name of the S3 bucket."
  type        = string
}

variable "acl" {
  description = "The canned ACL to apply."
  type        = string
  default     = "private"
}

variable "versioning" {
  description = "Enable versioning?"
  type        = bool
  default     = false
}

variable "tags" {
  description = "A map of tags to assign to the bucket."
  type        = map(string)
  default     = {}
} 