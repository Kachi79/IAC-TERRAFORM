resource "aws_s3_bucket" "jenkins-instance" {
  bucket = "jenkins-instance"

  force_destroy = true
  object_lock_enabled = true

  tags = {
    Name        = "jenkins-instance"
    Environment = "Dev"
  }
}

resource "aws_s3_bucket_versioning" "versioning_jenkins" {
  bucket = aws_s3_bucket.jenkins-instance.id
  versioning_configuration {
    status = "Enabled"
  }
} 

resource "aws_s3_bucket_server_side_encryption_configuration" "example" {
  bucket = aws_s3_bucket.jenkins-instance.id

  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm     = "AES256"
    }
  }
}

resource "aws_dynamodb_table" "jenkins-dynamodb-table" {
  name           = "jenkins-db-table"
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
} 