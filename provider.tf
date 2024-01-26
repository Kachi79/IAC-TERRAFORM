terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.33.0"
    }
  }
}

provider "aws" {
  alias  = "us-east-1"
  region = "us-east-1"
}

provider "aws" {
  alias  = "eu-west-2"
  region = "eu-west-2"
}

resource "aws_instance" "ec2" {
  ami           = "ami-0c7217cdde317cfec"
  instance_type = "t2.micro"
  provider      = aws.us-east-1 # Use the full provider reference with alias
}

resource "aws_instance" "example" {
  ami           = "ami-0e5f882be1900e43b"
  instance_type = "t2.micro"
  provider      = aws.eu-west-2 # Use the full provider reference with alias
}