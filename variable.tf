variable "instance_ami" {
  type    = string
  default = "ami-09d6bbc1af02c2ca1"
}

variable "instance_type" {
  type    = string
  default = "t2.medium"
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
    "Name" = "allow_tls"
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
  }
} 