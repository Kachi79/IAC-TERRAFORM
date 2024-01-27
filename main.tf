

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
