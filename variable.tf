variable "vpc_cidr" {
  type    = string
  default = "10.0.0.0/16"

}

variable "vpc_tag" {
  type = map(any)
  default = {
    "Name" = "module"
  }

}

variable "vpc_id" {
  type = string
}

variable "subnet_cidr" {
  type    = string
  default = "10.0.1.0/24"
}

variable "subnet_tag" {
  type = map(any)
  default = {
    "Name" = "module"
  }
}

variable "instance_ami" {
  type    = string
  default = "ami-0e5f882be1900e43b"
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}

variable "instance_name" {
  type = map(any)
  default = {
    "Name" = "module"
  }

}