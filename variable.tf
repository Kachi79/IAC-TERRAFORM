variable "region" {
  type = string
  default = "eu-west-2"
}

variable "vpc_name" {
  type = map(any)
  default = {
    Name = "new_vpc"
  }
}

variable "subnet_name" {
  type = map(any)
  default = {
    "Name" = "new_subnet_1a"
  }
}


variable "sg_name" {
  type = map(any)
  default = {
    Name = "new_sg"
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
        description = "Allow HTTP traffic"
        port       = 8080
        protocol    = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
      }
      "22" = {
        description = "Allow SSH traffic"
        port       = 22
        protocol    = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
 }
}
