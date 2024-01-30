variable "vpc_id" {
  type = string
}

variable "subnet_cidr" {
  type = string
  default = "172.16.10.0/24"
}

variable "avail_zone" {
  type = string
  default = "eu-west-2a"
}

variable "subnet_name" {
  type = map(any)
  default = {
    "Name" = "dev_subnet"
  }
}