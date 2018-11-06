resource "aws_s3_bucket" "s3_bucket" {
  bucket        = "${var.bucket_name}"
  acl           = "${var.public ? "public-read" : "private"}"
  force_destroy = "${var.force_destroy}"

  versioning {
    enabled = "${var.versioned}"
  }

  tags = "${var.bucket_tags}"
}