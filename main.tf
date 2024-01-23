provider "aws" {
  region = var.region
}

resource "aws_s3_bucket" "example" {
  bucket = var.kamsibucket

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

