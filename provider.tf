terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.33.0"
    }
  }
}

provider "aws" {
  region = "eu-west-2"
  alias  = "eu-west-2"
}

provider "aws" {
  region = "us-east-1"
  alias  = "us-east-1"
}

provider "aws" {
  region = "eu-north-1"
  alias  = "eu-north-1"
}

provider "aws" {
  region = "eu-central-1"
  alias  = "eu-central-1"
}


resource "aws_instance" "kamsi_us" {
  ami           = "ami-0c7217cdde317cfec"
  instance_type = "t2.medium"
  provider      = aws.us-east-1

}

resource "aws_instance" "kosi_nig" {
  ami           = "ami-0e5f882be1900e43b"
  instance_type = "t2.medium"
  provider      = aws.eu-west-2

}

resource "aws_instance" "new-instance" {
  ami           = "ami-0014ce3e52359afbd"
  instance_type = "t3.micro"
  provider      = aws.eu-north-1

}

resource "aws_instance" "jess_kal" {
  ami           = "ami-09024b009ae9e7adf"
  instance_type = "t2.medium"
  provider      = aws.eu-central-1

}

output "public_ip" {
  description = "public ip address of EC2 instance"
  value = aws_instance.jess_kal.public_ip
}


  
