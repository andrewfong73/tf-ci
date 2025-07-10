provider "aws" {
  region = "ap-southeast-1"
}


terraform {
  required_version = ">=1.9"
  required_providers {
    aws = {
      version = "6.2.0"
      source  = "hashicorp/aws"
    }
  }
  backend "s3" {
    bucket = "sctp-ce10-tfstate"
    key    = "andrewfong" #Change this
    region = "ap-southeast-1"
  }
}

resource "aws_s3_bucket" "s3_tf" {
  bucket_prefix = "andrewfong73-assignment3-2"
}

