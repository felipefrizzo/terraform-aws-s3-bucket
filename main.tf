resource "aws_s3_bucket" "s3_bucket" {
  bucket        = "${var.bucket_name}"
  acl           = "${var.public ? "public-read" : "private"}"
  force_destroy = "${var.force_destroy}"

  versioning {
    enabled = "${var.versioned}"
  }

  cors_rule {
    allowed_headers = "${var.cors_allowed_headers}"
    allowed_methods = "${var.cors_allowed_methods}"
    allowed_origins = ["${var.cors_allowed_origins}"]
    expose_headers  = "${var.cors_expose_headers}"
    max_age_seconds = "${var.cors_max_age_seconds}"
  }

  tags = "${var.bucket_tags}"
}
