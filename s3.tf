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
    yor_trace = "ccf11b7f-e248-4980-bdb7-84ab30a83244"
    owner = "cmartinsjr_paloaltonetworks_com"
  }
}