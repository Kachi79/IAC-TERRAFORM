## This is a new project on multi region deployment
To provision an aws resource in 2 separate availabilty zones this is the code :
The provider can be in different file in the working directory.



provider "aws" {
  region = "eu-west-2"
}

provider "aws" {
  alias  = "west-1"
  region = "eu-west-1"
}


resource "aws_instance" "multi-region" {
  ami           = "ami-0e5f882be1900e43b"
  instance_type = "t2.micro"

  tags = {
    Name = "multi"
  }
}

resource "aws_instance" "eu-west-1" {
  provider      = aws.west-1
  ami           = "ami-0905a3c97561e0b69"
  instance_type = "t2.medium"
  tags = {
    Name = "west-1"
  }
}