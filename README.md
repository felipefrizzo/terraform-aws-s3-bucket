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
| bucket_tags | A map of tags to add to all resources | string | `<map>` | no |
