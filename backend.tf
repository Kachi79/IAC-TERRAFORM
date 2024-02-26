terraform {
  backend "s3" {
    bucket = "jenkins-instance"
    key    = "global/S3/terraform.tfvars"
    region = "eu-west-2"
    dynamodb_table = "jenkins-db-table"
    encrypt = true
  }
}
