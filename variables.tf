variable "default-aws-region" {
  default = "eu-west-1"
}

variable "tags-tool" {
  default = "Terraform"
}



variable "bucket_names" {
  description = "bucket names"
  type        = list(string)
  default     = ["accurics-count-bucket-test-index1", "accurics-count-bucket-test-index2", "accurics-count-bucket-test-index3"]
}
