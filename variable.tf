variable "instance_ami" {
  type    = string
  default = "ami-09d6bbc1af02c2ca1"
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}

variable "instance_name" {
  type = map(any)
  default = {
    "Name" = "ec2_ingress"
  }
}

variable "vpc_cidr" {
  type    = string
  default = "10.0.0.0/16"
}

variable "vpc_tag" {
  type = map(any)
  default = {
    "Name" = "vpc_ingress"
  }
}

variable "sg_name" {
  type = map(any)
  default = {
    "Name" = "sg_ingress_rule"
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
    "80" = {
      description = "ingress_rule1"
      port        = 80
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]

    }
    "443" = {
      description = "ingress_rule2"
      port        = 443
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]

    }
    "8080" = {
      description = "ingress_rule3"
      port        = 8080
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]

    }
    "9000" = {
      description = "ingress_rule4"
      port        = 9000
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]

    }
  }
}