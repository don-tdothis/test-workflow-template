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
  some_name = "some_test_name"
  some      = "some_test_name"
}

provider "aws" {
  region = local.region
}
