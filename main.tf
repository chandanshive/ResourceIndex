provider "aws" {
  region = "ca-central-1"
}

resource "aws_s3_bucket" "accurics-foreach-example-bucket" {
  acl = "log-delivery-write"
  for_each = toset( ["accurics-foreach-example-bucket1", "accurics-foreach-example-bucket2", "accurics-foreach-example-bucket3"] )
  bucket     = each.key

  tags = {
    Tool    = var.tags-tool
    Name    = each.key
  }
}


resource "aws_s3_bucket" "accurics-foreach-index-bucket" {
  acl = "log-delivery-write"
  count = length(var.bucket_names)
  bucket  = var.bucket_names[count.index]
  tags = {
    Tool    = var.tags-tool
    Name    = var.bucket_names[count.index]
  }
}
