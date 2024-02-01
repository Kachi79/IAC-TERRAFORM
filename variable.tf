variable "cidr_blocks" {
  type = list(string)
  default = ["0.0.0.0/0"]
}
variable "vpc_name" {
  type = map(any)
  default = {
    "Name" = "Default_VPC"
  }
}

variable "subnet_name" {
  type = map(any)
  default = {
    "Name"= "Default_subnet_eu-west-2b"
  }
}

variable "sg_name" {
  type = map(any)
  default = {
    "Name" = "default_sg"
  }
}

variable "aws_sg" {
  type = map(object({
    description = string
    port        = number
    protocol    = string
    cidr_blocks = list(string)
  }))
  default = {
    "8080" = {
       description = "allow_port 8080 traffic"
       port        = 8080
       protocol    = "tcp"
       cidr_blocks = ["0.0.0.0/0"]
    }
    "22" = {
       description = "allow ssh traffic"
       port        = 22
       protocol    = "tcp"
       cidr_blocks = ["0.0.0.0/0"]
    }
  }
}

variable "ami" {
  type = string
  default = "ami-0e5f882be1900e43b"
}

variable "instance_type" {
  type = string
  default = "t2.micro"
}

variable "instance_name" {
  type = map(any)
  default = {
    "Name" = "default_ec2"
  }
}