resource "aws_s3_bucket_acl" "data" {
  bucket = "${local.resource_prefix.value}-data"
  acl    = "private"
}
resource "aws_s3_bucket" "data" {
  # bucket is public
  # bucket is not encrypted
  # bucket does not have access logs
  # bucket does not have versioning
  bucket = "${local.resource_prefix.value}-data"
  tags = {
    yor_trace = "1f75af36-3533-458e-a637-16e48e4f8162"
  }
}
resource "aws_s3_bucket_public_access_block" "data" {
  bucket = "${local.resource_prefix.value}-data"

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}

