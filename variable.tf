## vpc module values
variable "vpc_cidr" {
  type        = string
  description = "This is the vlue for the cidr range of the vpc"
  default     = "172.16.0.0/16"
}

variable "vpc_tag" {
  type = map(any)
  default = {
    "Name " = "new_vpc"
  }

}

## subnet module variables
variable "subnet_cidr" {
  type    = string
  default = "172.16.10.0/24"
}

variable "subnet_name" {
  type = map(any)
  default = {
    "Name" = "new_subnet"
  }
}
## instance module variables
variable "instance_ami" {
  type    = string
  default = "ami-0ff1c68c6e837b183"
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}

variable "instance_name" {
  type = map(any)
  default = {
    "Name" = "prod_server"
  }

}
## nic module variables
variable "private_ips" {
  type    = list(string)
  default = ["172.16.10.100"]
}

variable "nic_name" {
  type = map(any)
  default = {
    "Name" = "network_interface"
  }
}

## aws_sg variables 
variable "sg_name" {
  type = map(any)
  default = {
    "Name" = "terraform_sg"
  }

}

variable "instance_config" {
  type = map(any)
}
