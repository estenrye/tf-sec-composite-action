terraform {
  required_version = ">= 0.13"
  required_providers {
    http = {
      source = "hashicorp/aws"
      version = "5.57.0"
    }
  }
}

provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket_public_access_block" "bad_example" {
    bucket = aws_s3_bucket.example.id
}