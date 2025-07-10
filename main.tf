provider "aws" {
  region = "ap-southeast-1"
}

terraform {
  backend "s3" {
    bucket = "sctp-ce10-tfstate"
    key    = "andrewfong" #Change this
    region = "ap-southeast-1"
  }
}

resource "aws_s3_bucket" "s3_tf" {
  bucket_prefix = "andrewfong73-assignment3-2"
}

