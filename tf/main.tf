 terraform {
  required_version = ">= 1"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 4.48.0"
    }
  }
}


locals {
  region    = "us-west-2"
  name      = "test"
  tags      ="tags_name"
  some_name = "some_test_name"

  s3_bucket_name      = "some_test_name"
}

provider "aws" {
  region = local.region
}

resource "aws_s3_bucket" "log_work_db" {
  bucket = "${local.s3_bucket_name}"
  tags = local.tags
}
