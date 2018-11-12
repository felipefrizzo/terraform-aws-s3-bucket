# terraform-aws-s3-bucket
Terraform module to create a [s3 bucket]('https://aws.amazon.com/s3/')

## Usage
```
module "s3-bucket" {
  source        = "git::https://github.com/felipefrizzo/terraform-aws-s3-bucket.git?ref=master"
  bucket_name   = "bucket_name"
  force_destroy = true 
  public        = false
  versioned     = true
  bucket_tags   = {} 
}
```

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-------:|:--------:|
| bucket_name | S3 bucket names | string | `` | yes |
| force_destroy | Delete all objects in bucket on destroy | boolean | false | no |
| public | Allow public read access to bucket | boolean | false | no |
| versioned | Version the bucket | boolean | false | no |
| cors_allowed_headers | List of allowed headers | list | `<list>` | no |
| cors_allowed_methods | List of allowed methods (e.g. ` GET, PUT, POST, DELETE, HEAD`) | list | `<list>` | no |
| cors_allowed_origins | List of allowed origins (e.g. ` example.com, test.com`) | list | `<list>` | no |
| cors_expose_headers | List of expose header in the response | list | `<list>` | no |
| cors_max_age_seconds | Time in seconds that browser can cache the response | string | `3600` | no |
| bucket_tags | A map of tags to add to all resources | string | `<map>` | no |
