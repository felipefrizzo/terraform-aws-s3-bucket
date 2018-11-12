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

variable "cors_allowed_headers" {
  type        = "list"
  default     = ["*"]
  description = "List of allowed headers"
}

variable "cors_allowed_methods" {
  type        = "list"
  default     = ["GET"]
  description = "List of allowed methods (e.g. `GET, PUT, POST, DELETE, HEAD`)"
}

variable "cors_allowed_origins" {
  type        = "list"
  default     = ["*"]
  description = "List of allowed origins (e.g. `example.com, test.com`)"
}

variable "cors_expose_headers" {
  type        = "list"
  default     = ["ETag"]
  description = "List of expose header in the response"
}

variable "cors_max_age_seconds" {
  default     = "3600"
  description = "Time in seconds that browser can cache the response"
}
