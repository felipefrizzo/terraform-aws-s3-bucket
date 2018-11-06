variable "bucket_name" {
  description = "S3 bucket names"
}

variable "force_destroy" {
  description = "Delete all objects in bucket on destroy"
  default     = false
}

variable "public" {
  description = "Allow public read access to bucket"
  default     = false
}

variable "versioned" {
  description = "Version the bucket"
  default     = false
}

variable "bucket_tags" {
  description = "A map of tags to add to all resources"
  default     = {}
}
